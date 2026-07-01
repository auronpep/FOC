from __future__ import annotations

import json
import re
import zipfile
from collections import Counter
from datetime import datetime, timezone
from pathlib import Path
from xml.sax.saxutils import escape
from xml.etree import ElementTree as ET


WORKSPACE = Path(r"C:\FOC\Workspace")
FINISHED = WORKSPACE / "Finished"
OUTDIR = WORKSPACE / "outputs" / "finished-questions-master"
OUTFILE = OUTDIR / "finished_questions_master.xlsx"
MAX_CELL = 30000

CASE_SECTIONS = [
    "program_frame",
    "student_access_test",
    "question_data",
    "distilled_core_question",
    "call_and_prediction",
    "trigger_facts",
    "governing_c3_lane",
    "choice_by_choice_walkthrough",
    "residual_answer",
    "legal_leak_audit",
    "final_student_script",
    "remediation_card",
    "Gold Key(s)",
    "Silver Key(s)",
    "qa_checklist",
    "wrong_answer_recovery_paths",
    "outline_mastery_map",
    "crossover_intersection_map",
    "review_truth",
]


def clean_text(value) -> str:
    text = "" if value is None else str(value)
    text = text.replace("\r\n", "\n").replace("\r", "\n")
    text = text.replace("\x1e", "->").replace("\x12", "->").replace("\x13", "->")
    text = text.replace("\x04", " - ").replace("\x02", "'").replace("\x08", "")
    return re.sub(r"[\x00-\x08\x0b\x0c\x0e-\x1f]", " ", text)


def cell_safe(value):
    if value is None:
        return ""
    if isinstance(value, (int, float)) and not isinstance(value, bool):
        return value
    text = clean_text(value)
    if len(text) <= 32767:
        return text
    return text[: MAX_CELL - 80] + "\n[TRUNCATED IN THIS CELL; SEE RAW/SECTION CHUNKS]"


def chunks(text: str):
    text = clean_text(text)
    if not text:
        return [""]
    return [text[i : i + MAX_CELL] for i in range(0, len(text), MAX_CELL)]


def strip_quotes(value: str) -> str:
    value = clean_text(value).strip()
    if len(value) >= 2 and value[0] == value[-1] and value[0] in "'\"":
        return value[1:-1]
    return value


def parse_scalar_map(raw: str) -> dict[str, str]:
    out = {}
    for line in clean_text(raw).splitlines():
        m = re.match(r"^([A-Za-z0-9_]+):\s*(.*)$", line)
        if m:
            out[m.group(1)] = strip_quotes(m.group(2))
    return out


def frontmatter(text: str):
    lines = text.split("\n")
    if not lines or lines[0].strip() != "---":
        return "", {}, 0, False
    body = []
    offset = len(lines[0]) + 1
    for line in lines[1:]:
        if re.match(r"^-{3,}\s*$", line.strip()):
            return "\n".join(body), parse_scalar_map("\n".join(body)), offset + len(line) + 1, True
        body.append(line)
        offset += len(line) + 1
    raw = "\n".join(body)
    return raw, parse_scalar_map(raw), offset, True


def block_between(text: str, start_pat: str, end_pats: list[str]):
    start = re.search(start_pat, text, flags=re.I | re.M)
    if not start:
        return "", False, -1, -1
    end = len(text)
    for pat in end_pats:
        found = re.search(pat, text[start.end() :], flags=re.I | re.M)
        if found:
            end = min(end, start.end() + found.start())
    return text[start.end() : end].strip(), True, start.start(), end


def strip_fence(raw: str) -> str:
    lines = clean_text(raw).strip().split("\n")
    if lines and lines[0].strip().startswith("```"):
        for i in range(len(lines) - 1, 0, -1):
            if lines[i].strip().startswith("```"):
                return "\n".join(lines[1:i]).strip()
    return "\n".join(lines).strip()


def first_json(raw: str) -> str:
    text = strip_fence(raw)
    start = text.find("{")
    if start < 0:
        return ""
    depth = 0
    in_string = False
    escaped = False
    for i, ch in enumerate(text[start:], start):
        if in_string:
            if escaped:
                escaped = False
            elif ch == "\\":
                escaped = True
            elif ch == '"':
                in_string = False
            continue
        if ch == '"':
            in_string = True
        elif ch == "{":
            depth += 1
        elif ch == "}":
            depth -= 1
            if depth == 0:
                return text[start : i + 1]
    return text[start:]


def parse_json(raw: str):
    js = first_json(raw)
    if not js:
        return False, None, "", "No JSON object found"
    try:
        return True, json.loads(js), js, ""
    except Exception as exc:  # noqa: BLE001
        return False, None, js, str(exc)


def yaml_block(raw: str, key: str) -> str:
    lines = strip_fence(raw).split("\n")
    start = -1
    for idx, line in enumerate(lines):
        if re.match(rf"^{re.escape(key)}:\s*$", line):
            start = idx
            break
    if start < 0:
        return ""
    out = []
    for line in lines[start + 1 :]:
        if re.match(r"^[A-Za-z0-9_]+:\s*", line):
            break
        out.append(line)
    return "\n".join(out)


def yaml_scalar(raw: str, key: str, block: str = "") -> str:
    source = block or strip_fence(raw)
    m = re.search(rf"(?:^|\n)\s*{re.escape(key)}:\s*(.*)", source)
    return strip_quotes(m.group(1)) if m else ""


def yaml_choices(raw: str) -> dict[str, str]:
    lines = strip_fence(raw).split("\n")
    out = {}
    in_choices = False
    current = ""
    for line in lines:
        if re.match(r"^\s{2,}choices:\s*$|^choices:\s*$", line):
            in_choices = True
            continue
        if in_choices and re.match(r"^[A-Za-z0-9_]+:\s*", line):
            break
        if not in_choices:
            continue
        m = re.match(r"^\s{4,}([A-D]):\s*(.*)$", line)
        if m:
            current = m.group(1)
            out[current] = strip_quotes(m.group(2))
        elif current and re.match(r"^\s{6,}\S", line):
            out[current] = (out[current] + " " + strip_quotes(line.strip())).strip()
    return out


def yaml_percentages(raw: str) -> dict[str, dict[str, str]]:
    block = yaml_block(raw, "barmatrix_row") or strip_fence(raw)
    out: dict[str, dict[str, str]] = {}
    current = ""
    in_sel = False
    for line in block.split("\n"):
        if re.match(r"^\s{2,}selection_percentages:\s*$|^selection_percentages:\s*$", line):
            in_sel = True
            continue
        if in_sel and re.match(r"^\s{2,}[A-Za-z_]+:\s*", line) and not re.match(r"^\s{4,}[A-D]:", line):
            break
        if not in_sel:
            continue
        inline = re.match(r"^\s{4,}([A-D]):\s*\{(.+)\}\s*$", line)
        if inline:
            data = {}
            for part in inline.group(2).split(","):
                k, _, v = part.partition(":")
                data[k.strip()] = strip_quotes(v)
            out[inline.group(1)] = data
            current = ""
            continue
        m = re.match(r"^\s{4,}([A-D]):\s*$", line)
        if m:
            current = m.group(1)
            out[current] = {}
            continue
        if current:
            kv = re.match(r"^\s{6,}(value|pct|provenance|dominant_trap):\s*(.*)$", line)
            if kv:
                out[current][kv.group(1)] = strip_quotes(kv.group(2))
    return out


PASS1_TITLE_PATTERNS = [
    (1, r"^question$|^final question\b|^final chosen question\b|^locked variation.*final question\b|^the revised question\b|^condensed question\b|^pass 1.*christian variation\b"),
    (2, r"^distilled core question\b"),
    (3, r"^final answer choices\b|^final choices\b|^answer choices\b|^shuffled final choices\b"),
    (4, r"^correct answer\b"),
    (5, r"^letter map\b"),
    (6, r"^full right-answer explanation\b|^right-answer explanation\b"),
    (7, r"^full wrong-answer explanations\b|^wrong-answer explanations\b"),
    (8, r"^full black-letter\b|^black-letter\b"),
    (9, r"^brief note\b|^rigor\b"),
    (10, r"^c3 elimination\b"),
    (11, r"^divergence audit\b"),
    (12, r"^review truth\b"),
    (13, r"^the 5 variations\b|^student black-letter\b"),
    (14, r"^additional notes\b|^final validation\b"),
]


def clean_heading_title(title: str) -> str:
    title = clean_text(title).strip()
    title = re.sub(r"^\s*#+\s*", "", title)
    title = re.sub(r"^\s*\*+", "", title)
    title = re.sub(r"\*+\s*$", "", title)
    title = re.sub(r"^\s*\(?optional\)?\s*", "", title, flags=re.I)
    return title.strip().strip(":")


def pass1_title_number(title: str) -> int:
    normalized = re.sub(r"\s+", " ", clean_heading_title(title).lower())
    for number, pattern in PASS1_TITLE_PATTERNS:
        if re.search(pattern, normalized):
            return number
    return 0


def pass1_sections(raw: str):
    match_map = {}
    for m in re.finditer(r"^(?P<hash>#{1,6}\s*)?(?P<num>\d{1,2})[.)]\s+(?P<title>.+)$", raw, flags=re.M):
        number = int(m.group("num"))
        title = clean_heading_title(m.group("title"))
        if number > 14 or re.search(r"question yaml|case study|c3_annotation|program_", title, re.I):
            continue
        if not m.group("hash") and not pass1_title_number(title):
            continue
        match_map[m.start()] = {"start": m.start(), "contentStart": m.end(), "sectionNumber": number, "sectionTitle": title}
    for m in re.finditer(r"^#{1,6}\s+(?P<title>(?!\d{1,2}[.)]\s).+)$", raw, flags=re.M):
        title = clean_heading_title(m.group("title"))
        number = pass1_title_number(title)
        if number:
            match_map.setdefault(m.start(), {"start": m.start(), "contentStart": m.end(), "sectionNumber": number, "sectionTitle": title})
    for m in re.finditer(r"^\s*\*\*(?P<title>[^*\n]+?)\*\*\s*$", raw, flags=re.M):
        title = clean_heading_title(m.group("title"))
        number = pass1_title_number(title)
        if number:
            match_map.setdefault(m.start(), {"start": m.start(), "contentStart": m.end(), "sectionNumber": number, "sectionTitle": title})
    bare_label = (
        r"^\s*(?P<title>Question|Final question|Final chosen question[^\n]*|Locked variation[^\n]*final question[^\n]*|Pass 1[^\n]*Christian Variation[^\n]*|"
        r"The revised question|Condensed question|Distilled Core Question|Final answer choices[^\n]*|"
        r"Final choices[^\n]*|Answer choices[^\n]*|Correct answer[^\n]*|Letter Map|"
        r"Right-answer explanation[^\n]*|Wrong-answer explanations[^\n]*|Black-letter[^\n]*|"
        r"C3[^\n]*walkthrough[^\n]*|Divergence Audit|Review Truth|The 5 variations[^\n]*)\s*$"
    )
    for m in re.finditer(bare_label, raw, flags=re.I | re.M):
        title = clean_heading_title(m.group("title"))
        number = pass1_title_number(title)
        if number:
            match_map.setdefault(m.start(), {"start": m.start(), "contentStart": m.end(), "sectionNumber": number, "sectionTitle": title})
    colon_label = (
        r"^\s*(?:\*\*)?(?P<title>Question|Answer Choices|Distilled Core Question|Correct answer|Letter Map|"
        r"Full right-answer explanation|Full wrong-answer explanations|"
        r"Full black-letter-law verification(?: and legal reasoning(?: for the right answer)?)?|"
        r"Brief note[^\n:]*|C3 elimination walkthrough[^\n:]*|"
        r"Divergence Audit|Review Truth|The 5 variations considered|The 5 variations)(?:\*\*)?:\s*(?P<value>.*)$"
    )
    for m in re.finditer(colon_label, raw, flags=re.I | re.M):
        title = clean_heading_title(m.group("title"))
        number = pass1_title_number(title)
        if number:
            match_map.setdefault(m.start(), {"start": m.start(), "contentStart": m.start("value"), "sectionNumber": number, "sectionTitle": title})
    matches = sorted(match_map.values(), key=lambda item: item["start"])
    out = []
    if matches and not any(pass1_title_number(m["sectionTitle"]) == 1 for m in matches):
        candidate = raw[: matches[0]["start"]].strip()
        candidate = re.sub(r"^#\s+CQ[^\n]+\n+", "", candidate, flags=re.I).strip()
        if candidate and not re.match(r"^#{1,6}\s", candidate) and len(candidate) > 20:
            out.append({"sectionNumber": 1, "sectionTitle": "Final Question", "content": candidate})
    for i, m in enumerate(matches):
        start = m["contentStart"]
        end = matches[i + 1]["start"] if i + 1 < len(matches) else len(raw)
        out.append({"sectionNumber": m["sectionNumber"], "sectionTitle": m["sectionTitle"], "content": raw[start:end].strip()})
    return out


def section_text(sections, *patterns: str) -> str:
    compiled = [re.compile(p, re.I) for p in patterns]
    for sec in sections:
        if any(p.search(sec["sectionTitle"]) for p in compiled):
            return sec["content"]
    return ""


def parse_choices_text(raw: str) -> dict[str, str]:
    out = {}
    current = ""
    for line in clean_text(raw).splitlines():
        m = re.match(r"^\s*(?:[-*]\s*)?(?:\*\*)?(?:Choice\s*)?[\(\[]?([A-D])[\)\].:](?:\*\*)?\s*(.+)$", line, flags=re.I)
        if m:
            current = m.group(1).upper()
            out[current] = m.group(2).strip()
        elif current and line.strip() and not line.strip().startswith("|"):
            out[current] = (out[current] + " " + line.strip()).strip()
    return out


def case_sections(raw: str):
    names = "|".join(re.escape(x) for x in CASE_SECTIONS)
    matches = list(re.finditer(rf"^(?:##\s+(.+)|\(({names})\))\s*$", raw, flags=re.M))
    if not matches and raw.strip():
        return [{"sectionOrder": 0, "sectionName": "case_study_raw", "content": raw.strip()}]
    out = []
    for i, m in enumerate(matches):
        name = clean_text(m.group(1) or m.group(2)).strip()
        name = re.sub(r"^\d{1,2}[.)]\s*", "", name).strip()
        start = m.end()
        end = matches[i + 1].start() if i + 1 < len(matches) else len(raw)
        order = next((idx + 1 for idx, item in enumerate(CASE_SECTIONS) if item.lower() == name.lower()), 0)
        out.append({"sectionOrder": order, "sectionName": name, "content": raw[start:end].strip()})
    return out


def as_list(value):
    if isinstance(value, list):
        return value
    if isinstance(value, dict):
        return list(value.values())
    return []


def as_dict(value):
    return value if isinstance(value, dict) else {}


def compact(value) -> str:
    if value is None:
        return ""
    if isinstance(value, (dict, list)):
        return json.dumps(value, ensure_ascii=False)
    return str(value)


def yes(value) -> str:
    return "yes" if value else "no"


def add_chunks(rows, file_name, original_qid, variant_qid, block_name, raw):
    if not raw:
        return
    pieces = chunks(raw)
    for idx, piece in enumerate(pieces, 1):
        rows["RawBlocks"].append(
            {
                "fileName": file_name,
                "originalQid": original_qid,
                "variantQid": variant_qid,
                "blockName": block_name,
                "chunkIndex": idx,
                "chunkCount": len(pieces),
                "text": piece,
            }
        )


def sorted_files():
    def key(path: Path):
        m = re.match(r"^CQ(\d+)", path.name, re.I)
        return (int(m.group(1)) if m else 0, path.name.lower())

    return sorted(FINISHED.glob("CQ*.md"), key=key)


def process_file(path_obj: Path, rows):
    file_name = path_obj.name
    original_qid = re.match(r"^CQ(\d+)", file_name, re.I).group(1)
    text = clean_text(path_obj.read_text(encoding="utf-8", errors="replace"))
    stat = path_obj.stat()
    fm_raw, fm, fm_end, fm_found = frontmatter(text)
    variant_qid = fm.get("qid", "")
    missing = []
    required_fm = ["qid", "subject", "topic", "subtopic", "outline_code", "key", "original_key", "review_truth"]
    if not fm_found:
        missing.append("frontmatter block")
        rows["ParseIssues"].append({"fileName": file_name, "originalQid": original_qid, "issue": "missing_frontmatter", "detail": "No leading YAML frontmatter block found"})
    else:
        missing_fm = [field for field in required_fm if not fm.get(field)]
        if missing_fm:
            missing.append("frontmatter fields: " + ", ".join(missing_fm))

    q_yaml, q_yaml_found, q_yaml_start, _ = block_between(
        text,
        r"^(?:#{1,6}\s*)?(?:(?:###\s*)?1\.\s+|Block\s+1:\s*)Question YAML\s*$",
        [
            r"^(?:#{1,6}\s*)?(?:(?:###\s*)?2\.\s+(?:The\s+\d+-section student case study|Student-facing C3 case study|Student case study)|Block\s+2:\s+.+Case Study)\s*$",
            r"^(?:#{1,6}\s*)?(?:(?:###\s*)?3\.\s+|Block\s+3:\s*)c3_annotation\s*$",
        ],
    )
    case_raw, case_found, _, _ = block_between(
        text,
        r"^(?:#{1,6}\s*)?(?:(?:###\s*)?2\.\s+(?:The\s+\d+-section student case study|Student-facing C3 case study|Student case study)|Block\s+2:\s+.+Case Study)\s*$",
        [r"^(?:#{1,6}\s*)?(?:(?:###\s*)?3\.\s+|Block\s+3:\s*)c3_annotation\s*$"],
    )
    c3_raw, c3_found, _, _ = block_between(text, r"^(?:#{1,6}\s*)?(?:(?:###\s*)?3\.\s+|Block\s+3:\s*)c3_annotation\s*$", [r"^(?:#{1,6}\s*)?(?:(?:###\s*)?4\.\s+|Block\s+4:\s*)program_elements\s*$"])
    elem_raw, elem_found, _, _ = block_between(text, r"^(?:#{1,6}\s*)?(?:(?:###\s*)?4\.\s+|Block\s+4:\s*)program_elements\s*$", [r"^(?:#{1,6}\s*)?(?:(?:###\s*)?5\.\s+|Block\s+5:\s*)program_intelligence\s*$"])
    intel_raw, intel_found, _, _ = block_between(text, r"^(?:#{1,6}\s*)?(?:(?:###\s*)?5\.\s+|Block\s+5:\s*)program_intelligence\s*$", [r"^##\s+", r"^###\s+"])

    pass1_end = len(text)
    for candidate in [q_yaml_start, re.search(r"^##\s+B\)", text, flags=re.I | re.M).start() if re.search(r"^##\s+B\)", text, flags=re.I | re.M) else -1]:
        if candidate >= 0:
            pass1_end = min(pass1_end, candidate)
    p1_raw = text[fm_end:pass1_end].strip()
    p1 = pass1_sections(p1_raw)
    if len(p1) < 13:
        missing.append(f"Pass-1 sections incomplete: {len(p1)} found")
        rows["ParseIssues"].append({"fileName": file_name, "originalQid": original_qid, "issue": "missing_pass1_sections", "detail": f"Only {len(p1)} numbered sections found"})

    final_question = section_text(p1, "^question$", "final question", "final chosen question", "locked variation.*final question", "revised question", "condensed question", "pass 1.*christian variation")
    final_choices = parse_choices_text(section_text(p1, "final answer choices", "final choices", "answer choices", "shuffled final choices"))
    embedded_choices = parse_choices_text(final_question)
    for letter, embedded in embedded_choices.items():
        existing = final_choices.get(letter, "")
        if not existing or ("..." in existing and len(embedded) > len(existing)):
            final_choices[letter] = embedded
    choice_region = re.split(r"(?im)^\s*(?:\*\*)?Correct answer", p1_raw, maxsplit=1)[0]
    freeform_choices = parse_choices_text(choice_region)
    for letter, freeform in freeform_choices.items():
        if not final_choices.get(letter):
            final_choices[letter] = freeform
    rows["Frontmatter"].append(
        {
            "fileName": file_name,
            "originalQid": original_qid,
            "variantQid": variant_qid,
            "transformedFrom": fm.get("transformed_from", ""),
            "subject": fm.get("subject", ""),
            "topic": fm.get("topic", ""),
            "subtopic": fm.get("subtopic", ""),
            "outlineCode": strip_quotes(fm.get("outline_code", "")),
            "key": fm.get("key", ""),
            "originalKey": fm.get("original_key", ""),
            "letterMap": fm.get("letter_map", ""),
            "dominantTrap": fm.get("dominant_trap", ""),
            "pickRates": fm.get("pick_rates", ""),
            "bankValidationVerdict": fm.get("bank_validation_verdict", ""),
            "reviewTruth": fm.get("review_truth", ""),
            "fileBytes": stat.st_size,
            "modifiedTime": datetime.fromtimestamp(stat.st_mtime, timezone.utc).isoformat(),
            "suffixVariant": "no" if re.match(r"^CQ\d+\.md$", file_name, re.I) else "yes",
            "path": str(path_obj),
        }
    )
    rows["QuestionQA"].append(
        {
            "fileName": file_name,
            "originalQid": original_qid,
            "variantQid": variant_qid,
            "subject": fm.get("subject", ""),
            "topic": fm.get("topic", ""),
            "subtopic": fm.get("subtopic", ""),
            "outlineCode": strip_quotes(fm.get("outline_code", "")),
            "key": fm.get("key", ""),
            "originalKey": fm.get("original_key", ""),
            "finalQuestion": final_question,
            "distilledCoreQuestion": section_text(p1, "distilled core"),
            "choiceA": final_choices.get("A", ""),
            "choiceB": final_choices.get("B", ""),
            "choiceC": final_choices.get("C", ""),
            "choiceD": final_choices.get("D", ""),
            "correctAnswer": section_text(p1, "correct answer"),
            "letterMap": section_text(p1, "letter map"),
            "rightAnswerExplanation": section_text(p1, "right-answer explanation"),
            "wrongAnswerExplanations": section_text(p1, "wrong-answer explanations"),
            "blackLetterVerification": section_text(p1, "black-letter"),
            "reviewTruth": section_text(p1, "review truth") or fm.get("review_truth", ""),
        }
    )
    for sec in p1:
        pieces = chunks(sec["content"])
        for idx, piece in enumerate(pieces, 1):
            rows["Pass1Sections"].append({**{k: sec[k] for k in ["sectionNumber", "sectionTitle"]}, "fileName": file_name, "originalQid": original_qid, "variantQid": variant_qid, "chunkIndex": idx, "chunkCount": len(pieces), "content": piece})

    if not q_yaml_found:
        missing.append("Question YAML block")
        rows["ParseIssues"].append({"fileName": file_name, "originalQid": original_qid, "issue": "missing_question_yaml", "detail": "No Question YAML heading found"})
    else:
        yr = strip_fence(q_yaml)
        add_chunks(rows, file_name, original_qid, variant_qid, "question_yaml", yr)
        bblock = yaml_block(yr, "barmatrix_row")
        rblock = yaml_block(yr, "c3_routing")
        ychoices = yaml_choices(yr)
        pcts = yaml_percentages(yr)
        qa = rows["QuestionQA"][-1]
        if not qa["finalQuestion"]:
            qa["finalQuestion"] = yaml_scalar(yr, "question", bblock) or yaml_scalar(yr, "question")
        for letter in "ABCD":
            key = f"choice{letter}"
            if not qa[key]:
                qa[key] = ychoices.get(letter, "")
        if not qa["correctAnswer"]:
            qa["correctAnswer"] = yaml_scalar(yr, "official_key", bblock) or yaml_scalar(yr, "official_key")
        if not qa["rightAnswerExplanation"]:
            qa["rightAnswerExplanation"] = yaml_scalar(yr, "correct_answer_explanation", bblock) or yaml_scalar(yr, "correct_answer_explanation")
        rows["QuestionYAML"].append(
            {
                "fileName": file_name,
                "originalQid": original_qid,
                "variantQid": variant_qid,
                "yamlQid": yaml_scalar(yr, "qid", bblock) or yaml_scalar(yr, "qid"),
                "subject": yaml_scalar(yr, "subject", bblock) or yaml_scalar(yr, "subject"),
                "topic": yaml_scalar(yr, "topic", bblock),
                "subtopic": yaml_scalar(yr, "subtopic", bblock),
                "outlineCode": strip_quotes(yaml_scalar(yr, "outline_code", bblock) or yaml_scalar(yr, "outline_code")),
                "officialKey": yaml_scalar(yr, "official_key", bblock),
                "originalKey": yaml_scalar(yr, "original_key", bblock) or yaml_scalar(yr, "original_key"),
                "call": yaml_scalar(yr, "call", bblock),
                "choiceA": ychoices.get("A", ""),
                "choiceB": ychoices.get("B", ""),
                "choiceC": ychoices.get("C", ""),
                "choiceD": ychoices.get("D", ""),
                "pctA": pcts.get("A", {}).get("value", pcts.get("A", {}).get("pct", "")),
                "pctAProvenance": pcts.get("A", {}).get("provenance", ""),
                "pctB": pcts.get("B", {}).get("value", pcts.get("B", {}).get("pct", "")),
                "pctBProvenance": pcts.get("B", {}).get("provenance", ""),
                "pctC": pcts.get("C", {}).get("value", pcts.get("C", {}).get("pct", "")),
                "pctCProvenance": pcts.get("C", {}).get("provenance", ""),
                "pctD": pcts.get("D", {}).get("value", pcts.get("D", {}).get("pct", "")),
                "pctDProvenance": pcts.get("D", {}).get("provenance", ""),
                "residual": yaml_scalar(yr, "residual", rblock) or yaml_scalar(yr, "residual"),
                "caseStudyVerdict": yaml_scalar(yr, "case_study_verdict", rblock),
                "bankValidationVerdict": yaml_scalar(yr, "bank_validation_verdict", rblock),
                "confidence": yaml_scalar(yr, "confidence", rblock),
                "difficulty": yaml_scalar(yr, "difficulty", rblock) or yaml_scalar(yr, "difficulty"),
                "yamlChars": len(yr),
            }
        )

    if not case_found:
        missing.append("17-section case study block")
        rows["ParseIssues"].append({"fileName": file_name, "originalQid": original_qid, "issue": "missing_case_study", "detail": "No 17-section case-study heading found"})
    else:
        sections = case_sections(case_raw)
        core_count = len([s for s in sections if s["sectionName"] != "case_study_raw"])
        if core_count < 17:
            missing.append(f"case study sections incomplete: {core_count} found")
        case_question_data = ""
        for sec in sections:
            if not case_question_data and re.search(r"question_data", sec["sectionName"], re.I):
                case_question_data = sec["content"].strip()
            pieces = chunks(sec["content"])
            for idx, piece in enumerate(pieces, 1):
                rows["CaseStudySections"].append({**{k: sec[k] for k in ["sectionOrder", "sectionName"]}, "fileName": file_name, "originalQid": original_qid, "variantQid": variant_qid, "chunkIndex": idx, "chunkCount": len(pieces), "content": piece})
        if case_question_data and not rows["QuestionQA"][-1]["finalQuestion"]:
            rows["QuestionQA"][-1]["finalQuestion"] = case_question_data

    c3_ok, c3, c3_json, c3_err = parse_json(c3_raw)
    if not c3_found:
        missing.append("c3_annotation block")
        rows["ParseIssues"].append({"fileName": file_name, "originalQid": original_qid, "issue": "missing_c3_annotation", "detail": "No c3_annotation block found"})
    else:
        add_chunks(rows, file_name, original_qid, variant_qid, "c3_annotation", c3_json or c3_raw)
        if not c3_ok:
            missing.append(f"c3_annotation parse error: {c3_err}")
            rows["ParseIssues"].append({"fileName": file_name, "originalQid": original_qid, "issue": "c3_annotation_parse_error", "detail": c3_err})
    if c3_ok:
        c3_payload = c3.get("c3_annotation", c3) if isinstance(c3, dict) else {}
        qa = rows["QuestionQA"][-1]
        stem = as_dict(c3_payload.get("stem"))
        if not qa["finalQuestion"] and stem.get("text"):
            qa["finalQuestion"] = (stem.get("text", "") + ("\n\n" + stem.get("call", "") if stem.get("call") else "")).strip()
        for raw_choice in as_list(c3_payload.get("choices")):
            choice = as_dict(raw_choice)
            label = str(choice.get("label", choice.get("letter", ""))).upper()
            text_value = choice.get("text", choice.get("choice_text", ""))
            if label in "ABCD" and text_value and not qa.get(f"choice{label}"):
                qa[f"choice{label}"] = text_value
            if label in "ABCD" and choice.get("is_correct") and not qa["correctAnswer"]:
                qa["correctAnswer"] = label
        if not qa["correctAnswer"]:
            qa["correctAnswer"] = c3_payload.get("official_key", "") or c3_payload.get("credited_answer", "") or c3_payload.get("residual", "")
        c = c3.get("c3", {})
        rows["C3Annotation"].append(
            {
                "fileName": file_name,
                "originalQid": original_qid,
                "variantQid": variant_qid,
                "questionId": c3.get("question_id", ""),
                "subject": c3.get("subject", ""),
                "creditedAnswer": c3.get("credited_answer", ""),
                "outlineCode": c3.get("outline_code", ""),
                "distilledCoreQuestion": c3.get("distilled_core_question", ""),
                "reviewTruth": c3.get("review_truth", ""),
                "verdict": c.get("verdict", ""),
                "residual": c.get("residual", ""),
                "agreesWithKey": c.get("agrees_with_key", ""),
                "governingLawType": c.get("governing_law_type", ""),
                "decidingPhase": c.get("deciding_phase", ""),
                "confidence": c.get("confidence", ""),
                "tensionAxis": c.get("tension_axis", ""),
                "isFork": c.get("is_fork", ""),
                "forkType": c.get("fork_type", ""),
                "difficulty": c.get("difficulty", ""),
                "callHeuristic": c.get("call_heuristic", ""),
                "distractorCount": len(as_list(c.get("distractors"))),
                "goldKeyCount": len(as_list(c.get("gold_keys"))),
                "silverKeyCount": len(as_list(c.get("silver_keys"))),
                "analyzerNotes": compact(c.get("analyzer_notes")),
            }
        )
        for kind, items in [("gold", as_list(c.get("gold_keys"))), ("silver", as_list(c.get("silver_keys")))]:
            for raw_key in items:
                key = as_dict(raw_key)
                rows["Keys"].append({"fileName": file_name, "originalQid": original_qid, "variantQid": variant_qid, "sourceBlock": "c3_annotation", "keyKind": kind, "id": key.get("id", ""), "type": key.get("type", ""), "statement": key.get("statement", ""), "trigger": key.get("trigger", ""), "testedChoice": key.get("tested_choice", ""), "outlineCode": key.get("outline_code", "")})

    elem_ok, elem, elem_json, elem_err = parse_json(elem_raw)
    if not elem_found:
        missing.append("program_elements block")
        rows["ParseIssues"].append({"fileName": file_name, "originalQid": original_qid, "issue": "missing_program_elements", "detail": "No program_elements block found"})
    else:
        add_chunks(rows, file_name, original_qid, variant_qid, "program_elements", elem_json or elem_raw)
        if not elem_ok:
            missing.append(f"program_elements parse error: {elem_err}")
            rows["ParseIssues"].append({"fileName": file_name, "originalQid": original_qid, "issue": "program_elements_parse_error", "detail": elem_err})
    if elem_ok:
        rows["ProgramElements"].append(
            {
                "fileName": file_name,
                "originalQid": original_qid,
                "variantQid": variant_qid,
                "questionId": elem.get("question_id", ""),
                "subject": elem.get("subject", ""),
                "outlineCode": elem.get("outline_code", ""),
                "distilledCoreQuestion": elem.get("distilled_core_question", ""),
                "reviewTruth": elem.get("review_truth", ""),
                "tension": elem.get("tension", ""),
                "trapsCount": len(as_list(elem.get("traps"))),
                "remediationCardId": elem.get("remediation_card", {}).get("card_id", "") if isinstance(elem.get("remediation_card"), dict) else "",
                "remediationTitle": elem.get("remediation_card", {}).get("title", "") if isinstance(elem.get("remediation_card"), dict) else "",
                "remediationSignal": elem.get("remediation_card", {}).get("signal", "") if isinstance(elem.get("remediation_card"), dict) else "",
                "remediationMove": elem.get("remediation_card", {}).get("student_move", "") if isinstance(elem.get("remediation_card"), dict) else "",
                "remediationTinyRule": elem.get("remediation_card", {}).get("tiny_rule", "") if isinstance(elem.get("remediation_card"), dict) else "",
                "remediationTrap": elem.get("remediation_card", {}).get("trap", "") if isinstance(elem.get("remediation_card"), dict) else "",
                "redZoneDimensions": compact(elem.get("red_zone_dimensions")),
            }
        )
        for raw_trap in as_list(elem.get("traps")):
            trap = as_dict(raw_trap)
            rows["ProgramTraps"].append({"fileName": file_name, "originalQid": original_qid, "variantQid": variant_qid, "questionId": elem.get("question_id", ""), "choice": trap.get("choice", ""), "mold": trap.get("mold", ""), "architecture": compact(trap.get("architecture")), "whyAttractive": trap.get("why_attractive", ""), "focusGroupPct": trap.get("focus_group_pct", ""), "pctProvenance": trap.get("pct_provenance", "")})

    intel_ok, intel, intel_json, intel_err = parse_json(intel_raw)
    if not intel_found:
        missing.append("program_intelligence block")
        rows["ParseIssues"].append({"fileName": file_name, "originalQid": original_qid, "issue": "missing_program_intelligence", "detail": "No program_intelligence block found"})
    else:
        add_chunks(rows, file_name, original_qid, variant_qid, "program_intelligence", intel_json or intel_raw)
        if not intel_ok:
            missing.append(f"program_intelligence parse error: {intel_err}")
            rows["ParseIssues"].append({"fileName": file_name, "originalQid": original_qid, "issue": "program_intelligence_parse_error", "detail": intel_err})
    if intel_ok:
        om = intel.get("outline_mastery", {}) if isinstance(intel.get("outline_mastery"), dict) else {}
        rows["ProgramIntelligence"].append({"fileName": file_name, "originalQid": original_qid, "variantQid": variant_qid, "questionId": intel.get("question_id", ""), "subject": intel.get("subject", ""), "outlineCode": intel.get("outline_code", ""), "distilledCoreQuestion": intel.get("distilled_core_question", ""), "reviewTruth": intel.get("review_truth", ""), "wrongAnswerPathsCount": len(as_list(intel.get("wrong_answer_paths"))), "drillSeedsCount": len(as_list(intel.get("drill_seeds"))), "routingCount": len(as_list(intel.get("component_routing"))), "crossovers": compact(intel.get("crossovers")), "goldKeyCount": len(as_list(intel.get("gold_keys"))), "silverKeyCount": len(as_list(intel.get("silver_keys"))), "outlinePlacement": om.get("placement", ""), "outlineTeaches": compact(om.get("this_item_teaches")), "outlineFills": compact(om.get("fills")), "adjacentToMaster": compact(om.get("adjacent_to_master")), "trapTags": compact(intel.get("trap_tags"))})
        for raw_item in as_list(intel.get("wrong_answer_paths")):
            item = as_dict(raw_item)
            rows["WrongAnswerPaths"].append({"fileName": file_name, "originalQid": original_qid, "variantQid": variant_qid, "questionId": intel.get("question_id", ""), "choice": item.get("choice", ""), "filterBroken": item.get("filter_broken", ""), "mold": item.get("mold", ""), "whyStudentPicksThis": item.get("why_a_student_picks_this", ""), "skippedMove": item.get("skipped_move", ""), "recoveryStep": item.get("recovery_step", "")})
        for raw_item in as_list(intel.get("drill_seeds")):
            item = as_dict(raw_item)
            rows["DrillSeeds"].append({"fileName": file_name, "originalQid": original_qid, "variantQid": variant_qid, "questionId": intel.get("question_id", ""), "drillType": item.get("drill_type", ""), "targetSkill": item.get("target_skill", ""), "prompt": item.get("prompt", ""), "answer": item.get("answer", "")})
        for raw_item in as_list(intel.get("component_routing")):
            item = as_dict(raw_item)
            rows["Routing"].append({"fileName": file_name, "originalQid": original_qid, "variantQid": variant_qid, "questionId": intel.get("question_id", ""), "destinationKey": item.get("destination_key", ""), "route": item.get("route", ""), "componentTags": compact(item.get("component_tags"))})
        for kind, items in [("gold", as_list(intel.get("gold_keys"))), ("silver", as_list(intel.get("silver_keys")))]:
            for raw_key in items:
                key = as_dict(raw_key)
                rows["Keys"].append({"fileName": file_name, "originalQid": original_qid, "variantQid": variant_qid, "sourceBlock": "program_intelligence", "keyKind": kind, "id": key.get("id", ""), "type": key.get("type", ""), "statement": key.get("statement", ""), "trigger": key.get("trigger", ""), "testedChoice": key.get("tested_choice", ""), "outlineCode": key.get("outline_code", "")})

    qa = rows["QuestionQA"][-1]
    if not qa.get("finalQuestion"):
        missing.append("QuestionQA finalQuestion")
    missing_choices = [letter for letter in "ABCD" if not qa.get(f"choice{letter}")]
    if missing_choices:
        missing.append("QuestionQA answer choices: " + ", ".join(missing_choices))
    if not qa.get("correctAnswer"):
        missing.append("QuestionQA correctAnswer")

    if missing:
        rows["NeedsUpdatedInfo"].append({"fileName": file_name, "originalQid": original_qid, "variantQid": variant_qid, "subject": fm.get("subject", ""), "topic": fm.get("topic", ""), "subtopic": fm.get("subtopic", ""), "outlineCode": strip_quotes(fm.get("outline_code", "")), "issueCount": len(missing), "missingUpdatedInfo": " | ".join(missing), "hasQuestionYaml": yes(q_yaml_found), "hasCaseStudy": yes(case_found), "hasC3AnnotationJson": yes(c3_ok), "hasProgramElementsJson": yes(elem_ok), "hasProgramIntelligenceJson": yes(intel_ok), "recommendation": "Refresh/rebuild with the current CQ contract if these newer blocks are required for ingestion.", "path": str(path_obj)})


def col_letter(n: int) -> str:
    out = ""
    while n:
        n, r = divmod(n - 1, 26)
        out = chr(65 + r) + out
    return out


def xml_text(value) -> str:
    return escape(clean_text(value), {'"': "&quot;"})


def cell_xml(row_idx: int, col_idx: int, value, style: int) -> str:
    ref = f"{col_letter(col_idx)}{row_idx}"
    if isinstance(value, (int, float)) and not isinstance(value, bool):
        return f'<c r="{ref}" s="{style}"><v>{value}</v></c>'
    text = xml_text(cell_safe(value))
    return f'<c r="{ref}" s="{style}" t="inlineStr"><is><t xml:space="preserve">{text}</t></is></c>'


def width_for(header: str, sample_values) -> float:
    h = header.lower()
    if re.search(r"content|text|question|explanation|truth|notes|why|prompt|answer|verification|script|missing", h):
        return 48
    if "path" in h:
        return 38
    if re.search(r"file|qid|subject|topic|subtopic|code|key|choice|pct|count|status|verdict|confidence|phase", h):
        return 18
    max_len = max([len(header)] + [len(str(v or "")) for v in sample_values[:100]])
    return max(12, min(34, max_len + 2))


def write_sheet(zf: zipfile.ZipFile, index: int, headers: list[str], rows: list[dict]):
    path_name = f"xl/worksheets/sheet{index}.xml"
    sample = rows[:100]
    row_count = max(1, len(rows) + 1)
    col_count = len(headers)
    dim = f"A1:{col_letter(col_count)}{row_count}"
    with zf.open(path_name, "w") as f:
        def w(data: str):
            f.write(data.encode("utf-8"))

        w('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>')
        w('<worksheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">')
        w(f'<dimension ref="{dim}"/>')
        w('<sheetViews><sheetView workbookViewId="0"><pane ySplit="1" topLeftCell="A2" activePane="bottomLeft" state="frozen"/></sheetView></sheetViews>')
        w('<cols>')
        for idx, header in enumerate(headers, 1):
            values = [row.get(header, "") for row in sample]
            width = width_for(header, values)
            w(f'<col min="{idx}" max="{idx}" width="{width:.1f}" customWidth="1"/>')
        w('</cols><sheetData>')
        w('<row r="1" ht="22" customHeight="1">')
        for col_idx, header in enumerate(headers, 1):
            w(cell_xml(1, col_idx, header, 1))
        w("</row>")
        for row_idx, row in enumerate(rows or [{}], 2):
            w(f'<row r="{row_idx}" ht="18" customHeight="1">')
            for col_idx, header in enumerate(headers, 1):
                w(cell_xml(row_idx, col_idx, row.get(header, ""), 2))
            w("</row>")
        w("</sheetData>")
        w(f'<autoFilter ref="{dim}"/>')
        w("</worksheet>")


def workbook_xml(sheet_names: list[str]) -> str:
    sheets = []
    for idx, name in enumerate(sheet_names, 1):
        safe_name = xml_text(name[:31])
        sheets.append(f'<sheet name="{safe_name}" sheetId="{idx}" r:id="rId{idx}"/>')
    return '<?xml version="1.0" encoding="UTF-8" standalone="yes"?><workbook xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"><bookViews><workbookView/></bookViews><sheets>' + "".join(sheets) + "</sheets></workbook>"


def rels_xml(sheet_names: list[str]) -> str:
    rels = []
    for idx in range(1, len(sheet_names) + 1):
        rels.append(f'<Relationship Id="rId{idx}" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet" Target="worksheets/sheet{idx}.xml"/>')
    style_id = len(sheet_names) + 1
    rels.append(f'<Relationship Id="rId{style_id}" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles" Target="styles.xml"/>')
    return '<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">' + "".join(rels) + "</Relationships>"


def content_types(sheet_names: list[str]) -> str:
    overrides = [
        '<Override PartName="/xl/workbook.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml"/>',
        '<Override PartName="/xl/styles.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.styles+xml"/>',
        '<Override PartName="/docProps/core.xml" ContentType="application/vnd.openxmlformats-package.core-properties+xml"/>',
        '<Override PartName="/docProps/app.xml" ContentType="application/vnd.openxmlformats-officedocument.extended-properties+xml"/>',
    ]
    for idx in range(1, len(sheet_names) + 1):
        overrides.append(f'<Override PartName="/xl/worksheets/sheet{idx}.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml"/>')
    return '<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types"><Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/><Default Extension="xml" ContentType="application/xml"/>' + "".join(overrides) + "</Types>"


def root_rels() -> str:
    return '<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships"><Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="xl/workbook.xml"/><Relationship Id="rId2" Type="http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties" Target="docProps/core.xml"/><Relationship Id="rId3" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/extended-properties" Target="docProps/app.xml"/></Relationships>'


def styles_xml() -> str:
    return """<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<styleSheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main">
  <fonts count="2"><font><sz val="10"/><name val="Calibri"/></font><font><b/><sz val="10"/><color rgb="FFFFFFFF"/><name val="Calibri"/></font></fonts>
  <fills count="3"><fill><patternFill patternType="none"/></fill><fill><patternFill patternType="gray125"/></fill><fill><patternFill patternType="solid"><fgColor rgb="FF1F4E79"/><bgColor indexed="64"/></patternFill></fill></fills>
  <borders count="2"><border/><border><left style="thin"><color rgb="FFD9E2F3"/></left><right style="thin"><color rgb="FFD9E2F3"/></right><top style="thin"><color rgb="FFD9E2F3"/></top><bottom style="thin"><color rgb="FFD9E2F3"/></bottom></border></borders>
  <cellStyleXfs count="1"><xf numFmtId="0" fontId="0" fillId="0" borderId="0"/></cellStyleXfs>
  <cellXfs count="3"><xf numFmtId="0" fontId="0" fillId="0" borderId="0"/><xf numFmtId="0" fontId="1" fillId="2" borderId="1" applyFont="1" applyFill="1" applyBorder="1" applyAlignment="1"><alignment horizontal="center" vertical="center"/></xf><xf numFmtId="0" fontId="0" fillId="0" borderId="1" applyBorder="1" applyAlignment="1"><alignment vertical="top"/></xf></cellXfs>
  <cellStyles count="1"><cellStyle name="Normal" xfId="0" builtinId="0"/></cellStyles>
</styleSheet>"""


def app_xml(sheet_names: list[str]) -> str:
    return f'<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Properties xmlns="http://schemas.openxmlformats.org/officeDocument/2006/extended-properties" xmlns:vt="http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes"><Application>Codex</Application><DocSecurity>0</DocSecurity><ScaleCrop>false</ScaleCrop><HeadingPairs><vt:vector size="2" baseType="variant"><vt:variant><vt:lpstr>Worksheets</vt:lpstr></vt:variant><vt:variant><vt:i4>{len(sheet_names)}</vt:i4></vt:variant></vt:vector></HeadingPairs><TitlesOfParts><vt:vector size="{len(sheet_names)}" baseType="lpstr">' + "".join(f"<vt:lpstr>{xml_text(name[:31])}</vt:lpstr>" for name in sheet_names) + "</vt:vector></TitlesOfParts></Properties>"


def core_xml() -> str:
    now = datetime.now(timezone.utc).isoformat()
    return f'<?xml version="1.0" encoding="UTF-8" standalone="yes"?><cp:coreProperties xmlns:cp="http://schemas.openxmlformats.org/package/2006/metadata/core-properties" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:dcmitype="http://purl.org/dc/dcmitype/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"><dc:title>Finished Questions Master</dc:title><dc:creator>Codex</dc:creator><cp:lastModifiedBy>Codex</cp:lastModifiedBy><dcterms:created xsi:type="dcterms:W3CDTF">{now}</dcterms:created><dcterms:modified xsi:type="dcterms:W3CDTF">{now}</dcterms:modified></cp:coreProperties>'


def build_rows():
    rows = {name: [] for name in [
        "Summary",
        "Frontmatter",
        "QuestionQA",
        "Pass1Sections",
        "QuestionYAML",
        "CaseStudySections",
        "C3Annotation",
        "ProgramElements",
        "ProgramTraps",
        "ProgramIntelligence",
        "WrongAnswerPaths",
        "DrillSeeds",
        "Routing",
        "Keys",
        "RawBlocks",
        "NeedsUpdatedInfo",
        "ParseIssues",
    ]}
    files = sorted_files()
    for file in files:
        process_file(file, rows)
    exact = sum(1 for file in files if re.match(r"^CQ\d+\.md$", file.name, re.I))
    suffix = len(files) - exact
    subject_counts = Counter(row.get("subject") or "(blank)" for row in rows["Frontmatter"])
    rows["Summary"] = [
        {"metric": "Finished CQ markdown files", "value": len(files), "note": f"{exact} exact CQ<number>.md; {suffix} suffix variants"},
        {"metric": "Unique original QIDs", "value": len({row.get("originalQid") for row in rows["Frontmatter"]}), "note": "Derived from filename numeric prefix"},
        {"metric": "Question QA rows", "value": len(rows["QuestionQA"]), "note": "Pass-1 extracted question, answers, explanations"},
        {"metric": "Question YAML parsed rows", "value": len(rows["QuestionYAML"]), "note": "Files with newer Question YAML block"},
        {"metric": "Case study section rows", "value": len(rows["CaseStudySections"]), "note": "One row per case-study section chunk"},
        {"metric": "c3_annotation parsed rows", "value": len(rows["C3Annotation"]), "note": "Valid parsed JSON blocks"},
        {"metric": "program_elements parsed rows", "value": len(rows["ProgramElements"]), "note": "Valid parsed JSON blocks"},
        {"metric": "program_intelligence parsed rows", "value": len(rows["ProgramIntelligence"]), "note": "Valid parsed JSON blocks"},
        {"metric": "Raw YAML/JSON block chunks", "value": len(rows["RawBlocks"]), "note": "Full raw structured blocks split for Excel cell limits"},
        {"metric": "Questions needing updated info", "value": len(rows["NeedsUpdatedInfo"]), "note": "Dedicated sheet lists missing current-contract blocks/fields"},
        {"metric": "Parse issue rows", "value": len(rows["ParseIssues"]), "note": "Missing older blocks and parse failures are listed, not hidden"},
    ]
    for subject, count in sorted(subject_counts.items()):
        rows["Summary"].append({"metric": f"Subject count: {subject}", "value": count, "note": "Frontmatter subject"})
    return rows


HEADERS = {
    "Summary": ["metric", "value", "note"],
    "Frontmatter": ["fileName", "originalQid", "variantQid", "transformedFrom", "subject", "topic", "subtopic", "outlineCode", "key", "originalKey", "letterMap", "dominantTrap", "pickRates", "bankValidationVerdict", "reviewTruth", "fileBytes", "modifiedTime", "suffixVariant", "path"],
    "QuestionQA": ["fileName", "originalQid", "variantQid", "subject", "topic", "subtopic", "outlineCode", "key", "originalKey", "finalQuestion", "distilledCoreQuestion", "choiceA", "choiceB", "choiceC", "choiceD", "correctAnswer", "letterMap", "rightAnswerExplanation", "wrongAnswerExplanations", "blackLetterVerification", "reviewTruth"],
    "Pass1Sections": ["fileName", "originalQid", "variantQid", "sectionNumber", "sectionTitle", "chunkIndex", "chunkCount", "content"],
    "QuestionYAML": ["fileName", "originalQid", "variantQid", "yamlQid", "subject", "topic", "subtopic", "outlineCode", "officialKey", "originalKey", "call", "choiceA", "choiceB", "choiceC", "choiceD", "pctA", "pctAProvenance", "pctB", "pctBProvenance", "pctC", "pctCProvenance", "pctD", "pctDProvenance", "residual", "caseStudyVerdict", "bankValidationVerdict", "confidence", "difficulty", "yamlChars"],
    "CaseStudySections": ["fileName", "originalQid", "variantQid", "sectionOrder", "sectionName", "chunkIndex", "chunkCount", "content"],
    "C3Annotation": ["fileName", "originalQid", "variantQid", "questionId", "subject", "creditedAnswer", "outlineCode", "distilledCoreQuestion", "reviewTruth", "verdict", "residual", "agreesWithKey", "governingLawType", "decidingPhase", "confidence", "tensionAxis", "isFork", "forkType", "difficulty", "callHeuristic", "distractorCount", "goldKeyCount", "silverKeyCount", "analyzerNotes"],
    "ProgramElements": ["fileName", "originalQid", "variantQid", "questionId", "subject", "outlineCode", "distilledCoreQuestion", "reviewTruth", "tension", "trapsCount", "remediationCardId", "remediationTitle", "remediationSignal", "remediationMove", "remediationTinyRule", "remediationTrap", "redZoneDimensions"],
    "ProgramTraps": ["fileName", "originalQid", "variantQid", "questionId", "choice", "mold", "architecture", "whyAttractive", "focusGroupPct", "pctProvenance"],
    "ProgramIntelligence": ["fileName", "originalQid", "variantQid", "questionId", "subject", "outlineCode", "distilledCoreQuestion", "reviewTruth", "wrongAnswerPathsCount", "drillSeedsCount", "routingCount", "crossovers", "goldKeyCount", "silverKeyCount", "outlinePlacement", "outlineTeaches", "outlineFills", "adjacentToMaster", "trapTags"],
    "WrongAnswerPaths": ["fileName", "originalQid", "variantQid", "questionId", "choice", "filterBroken", "mold", "whyStudentPicksThis", "skippedMove", "recoveryStep"],
    "DrillSeeds": ["fileName", "originalQid", "variantQid", "questionId", "drillType", "targetSkill", "prompt", "answer"],
    "Routing": ["fileName", "originalQid", "variantQid", "questionId", "destinationKey", "route", "componentTags"],
    "Keys": ["fileName", "originalQid", "variantQid", "sourceBlock", "keyKind", "id", "type", "statement", "trigger", "testedChoice", "outlineCode"],
    "RawBlocks": ["fileName", "originalQid", "variantQid", "blockName", "chunkIndex", "chunkCount", "text"],
    "NeedsUpdatedInfo": ["fileName", "originalQid", "variantQid", "subject", "topic", "subtopic", "outlineCode", "issueCount", "missingUpdatedInfo", "hasQuestionYaml", "hasCaseStudy", "hasC3AnnotationJson", "hasProgramElementsJson", "hasProgramIntelligenceJson", "recommendation", "path"],
    "ParseIssues": ["fileName", "originalQid", "issue", "detail"],
}


def write_workbook(rows):
    OUTDIR.mkdir(parents=True, exist_ok=True)
    sheet_names = list(HEADERS)
    with zipfile.ZipFile(OUTFILE, "w", zipfile.ZIP_DEFLATED, compresslevel=6) as zf:
        zf.writestr("[Content_Types].xml", content_types(sheet_names))
        zf.writestr("_rels/.rels", root_rels())
        zf.writestr("xl/workbook.xml", workbook_xml(sheet_names))
        zf.writestr("xl/_rels/workbook.xml.rels", rels_xml(sheet_names))
        zf.writestr("xl/styles.xml", styles_xml())
        zf.writestr("docProps/app.xml", app_xml(sheet_names))
        zf.writestr("docProps/core.xml", core_xml())
        for idx, name in enumerate(sheet_names, 1):
            write_sheet(zf, idx, HEADERS[name], rows[name])


def verify_xlsx():
    result = {"outputPath": str(OUTFILE), "workbookBytes": OUTFILE.stat().st_size, "sheets": {}, "sheetCount": 0}
    ns = {"main": "http://schemas.openxmlformats.org/spreadsheetml/2006/main"}
    with zipfile.ZipFile(OUTFILE) as zf:
        workbook = ET.fromstring(zf.read("xl/workbook.xml"))
        sheet_elems = workbook.findall(".//main:sheet", ns)
        result["sheetCount"] = len(sheet_elems)
        for idx, sheet in enumerate(sheet_elems, 1):
            name = sheet.attrib["name"]
            with zf.open(f"xl/worksheets/sheet{idx}.xml") as fp:
                row_count = 0
                for event, elem in ET.iterparse(fp, events=("end",)):
                    if elem.tag.endswith("row"):
                        row_count += 1
                    elem.clear()
            result["sheets"][name] = max(0, row_count - 1)
    return result


if __name__ == "__main__":
    built_rows = build_rows()
    write_workbook(built_rows)
    print(json.dumps(verify_xlsx(), indent=2))
