import fs from "node:fs/promises";
import path from "node:path";
import { SpreadsheetFile, Workbook } from "@oai/artifact-tool";

const workspace = "C:\\FOC\\Workspace";
const finishedDir = path.join(workspace, "Finished");
const outputDir = path.join(workspace, "outputs", "finished-questions-master");
const outputPath = path.join(outputDir, "finished_questions_master.xlsx");
const previewDir = path.join(outputDir, "previews");
const maxCellChars = 1000;
const includeTextPreviewSheets = false;

const caseStudyOrder = [
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
];

const allRows = {
  summary: [],
  frontmatter: [],
  questionQa: [],
  pass1Sections: [],
  questionYaml: [],
  caseStudy: [],
  c3Annotation: [],
  programElements: [],
  traps: [],
  programIntelligence: [],
  wrongAnswerPaths: [],
  drillSeeds: [],
  routing: [],
  keys: [],
  rawBlocks: [],
  needsUpdatedInfo: [],
  parseIssues: [],
};

function cleanText(value) {
  return String(value ?? "")
    .replace(/\r\n/g, "\n")
    .replace(/\r/g, "\n")
    .replace(/\u001e/g, "->")
    .replace(/[\u0012\u0013]/g, "->")
    .replace(/\u0004/g, " - ")
    .replace(/\u0002/g, "'")
    .replace(/\u0008/g, "")
    .replace(/[\u0000-\u0008\u000b\u000c\u000e-\u001f]/g, " ");
}

function normalizeCell(value) {
  if (value === undefined || value === null) return null;
  if (typeof value === "number" || typeof value === "boolean") return value;
  if (value instanceof Date) return value;
  const text = cleanText(typeof value === "string" ? value : JSON.stringify(value));
  if (text.length <= maxCellChars) return text;
  return `${text.slice(0, maxCellChars - 80)}\n[TRUNCATED IN THIS CELL; SEE SECTION OR RAW CHUNKS SHEETS]`;
}

function chunkText(text, size = maxCellChars) {
  const cleaned = cleanText(text);
  if (cleaned.length === 0) return [""];
  const capped =
    cleaned.length <= size
      ? cleaned
      : `${cleaned.slice(0, size - 85)}\n[TRUNCATED IN WORKBOOK; SEE SOURCE MARKDOWN FILE FOR FULL TEXT]`;
  const chunks = [];
  for (let i = 0; i < capped.length; i += size) {
    chunks.push(capped.slice(i, i + size));
  }
  return chunks;
}

function stripQuotes(value) {
  const text = cleanText(value).trim();
  if (
    (text.startsWith('"') && text.endsWith('"')) ||
    (text.startsWith("'") && text.endsWith("'"))
  ) {
    return text.slice(1, -1);
  }
  return text;
}

function parseScalarMap(raw) {
  const out = {};
  for (const line of cleanText(raw).split("\n")) {
    const m = line.match(/^([A-Za-z0-9_]+):\s*(.*)$/);
    if (!m) continue;
    out[m[1]] = stripQuotes(m[2]);
  }
  return out;
}

function findFrontmatter(text) {
  const lines = text.split("\n");
  if (lines[0]?.trim() !== "---") return { raw: "", data: {}, endOffset: 0, found: false };
  let offset = lines[0].length + 1;
  const body = [];
  for (let i = 1; i < lines.length; i += 1) {
    if (/^-{3,}\s*$/.test(lines[i].trim())) {
      return {
        raw: body.join("\n"),
        data: parseScalarMap(body.join("\n")),
        endOffset: offset + lines[i].length + 1,
        found: true,
      };
    }
    body.push(lines[i]);
    offset += lines[i].length + 1;
  }
  return { raw: body.join("\n"), data: parseScalarMap(body.join("\n")), endOffset: offset, found: true };
}

function headingIndex(text, regex, start = 0) {
  const re = new RegExp(regex.source, regex.flags.includes("g") ? regex.flags : `${regex.flags}g`);
  re.lastIndex = start;
  const m = re.exec(text);
  return m ? { index: m.index, end: re.lastIndex, text: m[0], match: m } : null;
}

function blockBetweenHeadings(text, startRegex, endRegexes) {
  const start = headingIndex(text, startRegex);
  if (!start) return { raw: "", found: false, start: -1, end: -1 };
  let end = text.length;
  for (const endRegex of endRegexes) {
    const candidate = headingIndex(text, endRegex, start.end);
    if (candidate && candidate.index < end) end = candidate.index;
  }
  return { raw: text.slice(start.end, end).trim(), found: true, start: start.index, end };
}

function stripFence(raw) {
  const lines = cleanText(raw).trim().split("\n");
  if (lines[0]?.trim().startsWith("```")) {
    const lastFence = lines.findLastIndex((line, index) => index > 0 && line.trim().startsWith("```"));
    if (lastFence >= 0) return lines.slice(1, lastFence).join("\n").trim();
  }
  return lines.join("\n").trim();
}

function extractFirstJsonObject(raw) {
  const text = stripFence(raw);
  const start = text.indexOf("{");
  if (start < 0) return "";
  let depth = 0;
  let inString = false;
  let escaped = false;
  for (let i = start; i < text.length; i += 1) {
    const ch = text[i];
    if (inString) {
      if (escaped) {
        escaped = false;
      } else if (ch === "\\") {
        escaped = true;
      } else if (ch === '"') {
        inString = false;
      }
      continue;
    }
    if (ch === '"') {
      inString = true;
    } else if (ch === "{") {
      depth += 1;
    } else if (ch === "}") {
      depth -= 1;
      if (depth === 0) return text.slice(start, i + 1);
    }
  }
  return text.slice(start);
}

function tryParseJson(raw) {
  const json = extractFirstJsonObject(raw);
  if (!json) return { ok: false, value: null, json: "", error: "No JSON object found" };
  try {
    return { ok: true, value: JSON.parse(json), json, error: "" };
  } catch (error) {
    return { ok: false, value: null, json, error: error.message };
  }
}

function getYamlBlock(raw, key) {
  const yaml = stripFence(raw);
  const lines = yaml.split("\n");
  const start = lines.findIndex((line) => new RegExp(`^${key}:\\s*$`).test(line));
  if (start < 0) return "";
  const out = [];
  for (let i = start + 1; i < lines.length; i += 1) {
    if (/^[A-Za-z0-9_]+:\s*/.test(lines[i])) break;
    out.push(lines[i]);
  }
  return out.join("\n");
}

function findYamlScalar(raw, key, block = "") {
  const source = block || stripFence(raw);
  const re = new RegExp(`(?:^|\\n)\\s*${key}:\\s*(.*)`);
  const m = source.match(re);
  return m ? stripQuotes(m[1]) : "";
}

function parseYamlChoices(raw) {
  const yaml = stripFence(raw);
  const lines = yaml.split("\n");
  const choices = {};
  let inChoices = false;
  let current = null;
  for (const line of lines) {
    if (/^\s{2,}choices:\s*$/.test(line) || /^choices:\s*$/.test(line)) {
      inChoices = true;
      continue;
    }
    if (inChoices && /^[A-Za-z0-9_]+:\s*/.test(line)) break;
    if (!inChoices) continue;
    const m = line.match(/^\s{4,}([A-D]):\s*(.*)$/);
    if (m) {
      current = m[1];
      choices[current] = stripQuotes(m[2]);
    } else if (current && /^\s{6,}\S/.test(line)) {
      choices[current] = `${choices[current]} ${stripQuotes(line.trim())}`.trim();
    }
  }
  return choices;
}

function parseYamlPercentages(raw) {
  const block = getYamlBlock(raw, "barmatrix_row") || stripFence(raw);
  const lines = block.split("\n");
  const out = {};
  let inSelection = false;
  let current = null;
  for (const line of lines) {
    if (/^\s{2,}selection_percentages:\s*$/.test(line) || /^selection_percentages:\s*$/.test(line)) {
      inSelection = true;
      continue;
    }
    if (inSelection && /^\s{2,}[A-Za-z_]+:\s*/.test(line) && !/^\s{4,}[A-D]:/.test(line)) break;
    if (!inSelection) continue;
    const inline = line.match(/^\s{4,}([A-D]):\s*\{(.+)\}\s*$/);
    if (inline) {
      const vals = {};
      for (const part of inline[2].split(",")) {
        const [k, ...rest] = part.split(":");
        vals[k.trim()] = stripQuotes(rest.join(":"));
      }
      out[inline[1]] = vals;
      current = null;
      continue;
    }
    const m = line.match(/^\s{4,}([A-D]):\s*$/);
    if (m) {
      current = m[1];
      out[current] = {};
      continue;
    }
    if (current) {
      const kv = line.match(/^\s{6,}(value|pct|provenance|dominant_trap):\s*(.*)$/);
      if (kv) out[current][kv[1]] = stripQuotes(kv[2]);
    }
  }
  return out;
}

function parsePass1Sections(pass1Raw) {
  const text = cleanText(pass1Raw);
  const re = /^(?:#{1,6}\s*)?(\d{1,2})[.)]\s+(.+)$/gm;
  const matches = [...text.matchAll(re)].filter((m) => Number(m[1]) <= 14);
  const sections = [];
  for (let i = 0; i < matches.length; i += 1) {
    const start = matches[i].index + matches[i][0].length;
    const end = i + 1 < matches.length ? matches[i + 1].index : text.length;
    sections.push({
      section_number: Number(matches[i][1]),
      title: cleanText(matches[i][2]).trim(),
      content: text.slice(start, end).trim(),
    });
  }
  return sections;
}

function sectionByTitle(sections, regexes) {
  return sections.find((section) => regexes.some((regex) => regex.test(section.title)))?.content ?? "";
}

function parseChoicesFromText(raw) {
  const choices = {};
  let current = null;
  for (const line of cleanText(raw).split("\n")) {
    const m = line.match(/^\s*(?:[-*]\s*)?(?:\*\*)?([A-D])(?:[.)]|:)(?:\*\*)?\s*(.+)$/);
    if (m) {
      current = m[1];
      choices[current] = m[2].trim();
    } else if (current && line.trim() && !line.trim().startsWith("|")) {
      choices[current] = `${choices[current]} ${line.trim()}`.trim();
    }
  }
  return choices;
}

function parseCaseStudySections(raw) {
  const text = cleanText(raw);
  const names = caseStudyOrder
    .map((name) => name.replace(/[.*+?^${}()|[\]\\]/g, "\\$&"))
    .join("|");
  const re = new RegExp(`^(?:##\\s+(.+)|\\((${names})\\))\\s*$`, "gm");
  const matches = [...text.matchAll(re)];
  if (matches.length === 0 && text.trim()) {
    return [{ section_name: "case_study_raw", section_order: 0, content: text.trim() }];
  }
  const sections = [];
  for (let i = 0; i < matches.length; i += 1) {
    const name = cleanText(matches[i][1] || matches[i][2]).trim();
    const start = matches[i].index + matches[i][0].length;
    const end = i + 1 < matches.length ? matches[i + 1].index : text.length;
    sections.push({
      section_name: name,
      section_order: caseStudyOrder.findIndex((item) => item.toLowerCase() === name.toLowerCase()) + 1,
      content: text.slice(start, end).trim(),
    });
  }
  return sections;
}

function compact(value) {
  if (value === undefined || value === null) return "";
  if (Array.isArray(value)) {
    return value
      .map((item) => (typeof item === "object" ? JSON.stringify(item) : String(item)))
      .join(" | ");
  }
  if (typeof value === "object") return JSON.stringify(value);
  return value;
}

function asArray(value) {
  if (Array.isArray(value)) return value;
  if (value && typeof value === "object") return Object.values(value);
  return [];
}

function addIssue(fileName, originalQid, issue, detail) {
  allRows.parseIssues.push({ fileName, originalQid, issue, detail });
}

function addChunks(fileName, originalQid, variantQid, blockName, raw) {
  if (!includeTextPreviewSheets) return;
  if (!raw) return;
  const chunks = chunkText(raw);
  for (let i = 0; i < chunks.length; i += 1) {
    allRows.rawBlocks.push({
      fileName,
      originalQid,
      variantQid,
      blockName,
      chunkIndex: i + 1,
      chunkCount: chunks.length,
      text: chunks[i],
    });
  }
}

function bool(value) {
  return value ? "yes" : "no";
}

async function collectFiles() {
  const names = await fs.readdir(finishedDir);
  return names
    .filter((name) => /^CQ\d+.*\.md$/i.test(name))
    .sort((a, b) => {
      const aq = Number(a.match(/^CQ(\d+)/i)?.[1] ?? 0);
      const bq = Number(b.match(/^CQ(\d+)/i)?.[1] ?? 0);
      return aq - bq || a.localeCompare(b);
    });
}

async function processFile(fileName) {
  const fullPath = path.join(finishedDir, fileName);
  const originalQid = fileName.match(/^CQ(\d+)/i)?.[1] ?? "";
  const rawDisk = await fs.readFile(fullPath, "utf8");
  const text = cleanText(rawDisk);
  const stat = await fs.stat(fullPath);
  const front = findFrontmatter(text);
  if (!front.found) addIssue(fileName, originalQid, "missing_frontmatter", "No leading YAML frontmatter block found");

  const fm = front.data;
  const variantQid = fm.qid || "";
  const missingUpdatedInfo = [];
  const frontmatterRequired = ["qid", "subject", "topic", "subtopic", "outline_code", "key", "original_key", "review_truth"];
  if (!front.found) {
    missingUpdatedInfo.push("frontmatter block");
  } else {
    const missingFrontmatterFields = frontmatterRequired.filter((field) => !fm[field]);
    if (missingFrontmatterFields.length) {
      missingUpdatedInfo.push(`frontmatter fields: ${missingFrontmatterFields.join(", ")}`);
    }
  }
  const qYamlBlock = blockBetweenHeadings(text, /^###\s+1\.\s+Question YAML\s*$/im, [
    /^###\s+2\.\s+The\s+\d+-section student case study\s*$/im,
    /^###\s+2\.\s+The 17-section student case study\s*$/im,
    /^###\s+3\.\s+c3_annotation\s*$/im,
  ]);
  const caseBlock = blockBetweenHeadings(text, /^###\s+2\.\s+The\s+\d+-section student case study\s*$/im, [
    /^###\s+3\.\s+c3_annotation\s*$/im,
  ]);
  const c3Block = blockBetweenHeadings(text, /^###\s+3\.\s+c3_annotation\s*$/im, [
    /^###\s+4\.\s+program_elements\s*$/im,
  ]);
  const elementsBlock = blockBetweenHeadings(text, /^###\s+4\.\s+program_elements\s*$/im, [
    /^###\s+5\.\s+program_intelligence\s*$/im,
  ]);
  const intelligenceBlock = blockBetweenHeadings(text, /^###\s+5\.\s+program_intelligence\s*$/im, [
    /^##\s+/im,
    /^###\s+/im,
  ]);

  const pass1EndCandidates = [qYamlBlock.start, headingIndex(text, /^##\s+B\)/im)?.index]
    .filter((value) => typeof value === "number" && value >= 0);
  const pass1End = pass1EndCandidates.length ? Math.min(...pass1EndCandidates) : text.length;
  const pass1Raw = text.slice(front.endOffset, pass1End).trim();
  const pass1Sections = parsePass1Sections(pass1Raw);

  const finalQuestion = sectionByTitle(pass1Sections, [/final question/i]);
  const distilled = sectionByTitle(pass1Sections, [/distilled core/i]);
  const finalChoicesRaw = sectionByTitle(pass1Sections, [/final answer choices/i]);
  const correctAnswerRaw = sectionByTitle(pass1Sections, [/correct answer/i]);
  const letterMapRaw = sectionByTitle(pass1Sections, [/letter map/i]);
  const rightExplanation = sectionByTitle(pass1Sections, [/right-answer explanation/i]);
  const wrongExplanations = sectionByTitle(pass1Sections, [/wrong-answer explanations/i]);
  const blackLetter = sectionByTitle(pass1Sections, [/black-letter/i]);
  const reviewTruthPass1 = sectionByTitle(pass1Sections, [/review truth/i]);
  const choicesFromPass1 = parseChoicesFromText(finalChoicesRaw);

  allRows.frontmatter.push({
    fileName,
    originalQid,
    variantQid,
    transformedFrom: fm.transformed_from || "",
    subject: fm.subject || "",
    topic: fm.topic || "",
    subtopic: fm.subtopic || "",
    outlineCode: stripQuotes(fm.outline_code || ""),
    key: fm.key || "",
    originalKey: fm.original_key || "",
    letterMap: fm.letter_map || "",
    dominantTrap: fm.dominant_trap || "",
    pickRates: fm.pick_rates || "",
    bankValidationVerdict: fm.bank_validation_verdict || "",
    reviewTruth: fm.review_truth || "",
    fileBytes: stat.size,
    modifiedTime: stat.mtime.toISOString(),
    suffixVariant: fileName.match(/^CQ\d+\.md$/i) ? "no" : "yes",
    path: fullPath,
  });

  allRows.questionQa.push({
    subject: fm.subject || "",
    subtopic: fm.subtopic || "",
    category: fm.category || fm.topic || "",
    outlineCode: stripQuotes(fm.outline_code || ""),
    finalQuestion,
    choiceA: choicesFromPass1.A || "",
    choiceB: choicesFromPass1.B || "",
    choiceC: choicesFromPass1.C || "",
    choiceD: choicesFromPass1.D || "",
    correctAnswer: correctAnswerRaw,
    fileName,
    originalQid,
    variantQid,
    topic: fm.topic || "",
    key: fm.key || "",
    originalKey: fm.original_key || "",
    distilledCoreQuestion: distilled,
    letterMap: letterMapRaw,
    rightAnswerExplanation: rightExplanation,
    wrongAnswerExplanations: wrongExplanations,
    blackLetterVerification: blackLetter,
    reviewTruth: reviewTruthPass1 || fm.review_truth || "",
  });

  if (pass1Sections.length === 0) addIssue(fileName, originalQid, "missing_pass1_sections", "No numbered Pass-1 sections found");
  if (pass1Sections.length < 13) {
    missingUpdatedInfo.push(`Pass-1 sections incomplete: ${pass1Sections.length} found`);
  }
  for (const section of pass1Sections) {
    if (includeTextPreviewSheets) {
      const chunks = chunkText(section.content);
      for (let i = 0; i < chunks.length; i += 1) {
        allRows.pass1Sections.push({
          fileName,
          originalQid,
          variantQid,
          sectionNumber: section.section_number,
          sectionTitle: section.title,
          chunkIndex: i + 1,
          chunkCount: chunks.length,
          content: chunks[i],
        });
      }
    }
  }

  if (!qYamlBlock.found) {
    addIssue(fileName, originalQid, "missing_question_yaml", "No '### 1. Question YAML' heading found");
    missingUpdatedInfo.push("Question YAML block");
  } else {
    const yamlRaw = stripFence(qYamlBlock.raw);
    addChunks(fileName, originalQid, variantQid, "question_yaml", yamlRaw);
    const barmatrixBlock = getYamlBlock(yamlRaw, "barmatrix_row");
    const routingBlock = getYamlBlock(yamlRaw, "c3_routing");
    const choices = parseYamlChoices(yamlRaw);
    const pcts = parseYamlPercentages(yamlRaw);
    allRows.questionYaml.push({
      fileName,
      originalQid,
      variantQid,
      yamlQid: findYamlScalar(yamlRaw, "qid", barmatrixBlock) || findYamlScalar(yamlRaw, "qid"),
      subject: findYamlScalar(yamlRaw, "subject", barmatrixBlock) || findYamlScalar(yamlRaw, "subject"),
      topic: findYamlScalar(yamlRaw, "topic", barmatrixBlock),
      subtopic: findYamlScalar(yamlRaw, "subtopic", barmatrixBlock),
      outlineCode: stripQuotes(findYamlScalar(yamlRaw, "outline_code", barmatrixBlock) || findYamlScalar(yamlRaw, "outline_code")),
      officialKey: findYamlScalar(yamlRaw, "official_key", barmatrixBlock),
      originalKey: findYamlScalar(yamlRaw, "original_key", barmatrixBlock) || findYamlScalar(yamlRaw, "original_key"),
      call: findYamlScalar(yamlRaw, "call", barmatrixBlock),
      choiceA: choices.A || "",
      choiceB: choices.B || "",
      choiceC: choices.C || "",
      choiceD: choices.D || "",
      pctA: pcts.A?.value || pcts.A?.pct || "",
      pctAProvenance: pcts.A?.provenance || "",
      pctB: pcts.B?.value || pcts.B?.pct || "",
      pctBProvenance: pcts.B?.provenance || "",
      pctC: pcts.C?.value || pcts.C?.pct || "",
      pctCProvenance: pcts.C?.provenance || "",
      pctD: pcts.D?.value || pcts.D?.pct || "",
      pctDProvenance: pcts.D?.provenance || "",
      residual: findYamlScalar(yamlRaw, "residual", routingBlock) || findYamlScalar(yamlRaw, "residual"),
      caseStudyVerdict: findYamlScalar(yamlRaw, "case_study_verdict", routingBlock),
      bankValidationVerdict: findYamlScalar(yamlRaw, "bank_validation_verdict", routingBlock),
      confidence: findYamlScalar(yamlRaw, "confidence", routingBlock),
      difficulty: findYamlScalar(yamlRaw, "difficulty", routingBlock) || findYamlScalar(yamlRaw, "difficulty"),
      yamlChars: yamlRaw.length,
    });
  }

  if (!caseBlock.found) {
    addIssue(fileName, originalQid, "missing_case_study", "No '### 2. The 17-section student case study' heading found");
    missingUpdatedInfo.push("17-section case study block");
  } else {
    const sections = parseCaseStudySections(caseBlock.raw);
    const coreCaseSections = sections.filter((section) => section.section_name !== "case_study_raw").length;
    if (coreCaseSections < 17) {
      missingUpdatedInfo.push(`case study sections incomplete: ${coreCaseSections} found`);
    }
    for (const section of sections) {
      if (includeTextPreviewSheets) {
        const chunks = chunkText(section.content);
        for (let i = 0; i < chunks.length; i += 1) {
          allRows.caseStudy.push({
            fileName,
            originalQid,
            variantQid,
            sectionOrder: section.section_order,
            sectionName: section.section_name,
            chunkIndex: i + 1,
            chunkCount: chunks.length,
            content: chunks[i],
          });
        }
      }
    }
  }

  const c3 = tryParseJson(c3Block.raw);
  if (!c3Block.found) {
    addIssue(fileName, originalQid, "missing_c3_annotation", "No c3_annotation block found");
    missingUpdatedInfo.push("c3_annotation block");
  } else {
    addChunks(fileName, originalQid, variantQid, "c3_annotation", c3.json || c3Block.raw);
    if (!c3.ok) {
      addIssue(fileName, originalQid, "c3_annotation_parse_error", c3.error);
      missingUpdatedInfo.push(`c3_annotation parse error: ${c3.error}`);
    }
  }
  if (c3.ok) {
    const c = c3.value.c3 || {};
    allRows.c3Annotation.push({
      fileName,
      originalQid,
      variantQid,
      questionId: c3.value.question_id || "",
      subject: c3.value.subject || "",
      creditedAnswer: c3.value.credited_answer || "",
      outlineCode: c3.value.outline_code || "",
      distilledCoreQuestion: c3.value.distilled_core_question || "",
      reviewTruth: c3.value.review_truth || "",
      verdict: c.verdict || "",
      residual: c.residual || "",
      agreesWithKey: c.agrees_with_key ?? "",
      governingLawType: c.governing_law_type || "",
      decidingPhase: c.deciding_phase || "",
      confidence: c.confidence || "",
      tensionAxis: c.tension_axis || "",
      isFork: c.is_fork ?? "",
      forkType: c.fork_type || "",
      difficulty: c.difficulty || "",
      callHeuristic: c.call_heuristic || "",
      distractorCount: asArray(c.distractors).length,
      goldKeyCount: asArray(c.gold_keys).length,
      silverKeyCount: asArray(c.silver_keys).length,
      analyzerNotes: compact(c.analyzer_notes),
    });
    for (const key of asArray(c.gold_keys)) {
      allRows.keys.push({
        fileName,
        originalQid,
        variantQid,
        sourceBlock: "c3_annotation",
        keyKind: "gold",
        id: key.id || "",
        type: key.type || "",
        statement: key.statement || "",
        trigger: key.trigger || "",
        testedChoice: key.tested_choice || "",
        outlineCode: key.outline_code || "",
      });
    }
    for (const key of asArray(c.silver_keys)) {
      allRows.keys.push({
        fileName,
        originalQid,
        variantQid,
        sourceBlock: "c3_annotation",
        keyKind: "silver",
        id: key.id || "",
        type: key.type || "",
        statement: key.statement || "",
        trigger: key.trigger || "",
        testedChoice: key.tested_choice || "",
        outlineCode: key.outline_code || "",
      });
    }
  }

  const elements = tryParseJson(elementsBlock.raw);
  if (!elementsBlock.found) {
    addIssue(fileName, originalQid, "missing_program_elements", "No program_elements block found");
    missingUpdatedInfo.push("program_elements block");
  } else {
    addChunks(fileName, originalQid, variantQid, "program_elements", elements.json || elementsBlock.raw);
    if (!elements.ok) {
      addIssue(fileName, originalQid, "program_elements_parse_error", elements.error);
      missingUpdatedInfo.push(`program_elements parse error: ${elements.error}`);
    }
  }
  if (elements.ok) {
    const e = elements.value;
    allRows.programElements.push({
      fileName,
      originalQid,
      variantQid,
      questionId: e.question_id || "",
      subject: e.subject || "",
      outlineCode: e.outline_code || "",
      distilledCoreQuestion: e.distilled_core_question || "",
      reviewTruth: e.review_truth || "",
      tension: e.tension || "",
      trapsCount: asArray(e.traps).length,
      remediationCardId: e.remediation_card?.card_id || "",
      remediationTitle: e.remediation_card?.title || "",
      remediationSignal: e.remediation_card?.signal || "",
      remediationMove: e.remediation_card?.student_move || "",
      remediationTinyRule: e.remediation_card?.tiny_rule || "",
      remediationTrap: e.remediation_card?.trap || "",
      redZoneDimensions: compact(e.red_zone_dimensions),
    });
    for (const trap of asArray(e.traps)) {
      allRows.traps.push({
        fileName,
        originalQid,
        variantQid,
        questionId: e.question_id || "",
        choice: trap.choice || "",
        mold: trap.mold || "",
        architecture: compact(trap.architecture),
        whyAttractive: trap.why_attractive || "",
        focusGroupPct: trap.focus_group_pct ?? "",
        pctProvenance: trap.pct_provenance || "",
      });
    }
  }

  const intelligence = tryParseJson(intelligenceBlock.raw);
  if (!intelligenceBlock.found) {
    addIssue(fileName, originalQid, "missing_program_intelligence", "No program_intelligence block found");
    missingUpdatedInfo.push("program_intelligence block");
  } else {
    addChunks(fileName, originalQid, variantQid, "program_intelligence", intelligence.json || intelligenceBlock.raw);
    if (!intelligence.ok) {
      addIssue(fileName, originalQid, "program_intelligence_parse_error", intelligence.error);
      missingUpdatedInfo.push(`program_intelligence parse error: ${intelligence.error}`);
    }
  }
  if (intelligence.ok) {
    const p = intelligence.value;
    allRows.programIntelligence.push({
      fileName,
      originalQid,
      variantQid,
      questionId: p.question_id || "",
      subject: p.subject || "",
      outlineCode: p.outline_code || "",
      distilledCoreQuestion: p.distilled_core_question || "",
      reviewTruth: p.review_truth || "",
      wrongAnswerPathsCount: asArray(p.wrong_answer_paths).length,
      drillSeedsCount: asArray(p.drill_seeds).length,
      routingCount: asArray(p.component_routing).length,
      crossovers: compact(p.crossovers),
      goldKeyCount: asArray(p.gold_keys).length,
      silverKeyCount: asArray(p.silver_keys).length,
      outlinePlacement: p.outline_mastery?.placement || "",
      outlineTeaches: compact(p.outline_mastery?.this_item_teaches),
      outlineFills: compact(p.outline_mastery?.fills),
      adjacentToMaster: compact(p.outline_mastery?.adjacent_to_master),
      trapTags: compact(p.trap_tags),
    });
    for (const item of asArray(p.wrong_answer_paths)) {
      allRows.wrongAnswerPaths.push({
        fileName,
        originalQid,
        variantQid,
        questionId: p.question_id || "",
        choice: item.choice || "",
        filterBroken: item.filter_broken || "",
        mold: item.mold || "",
        whyStudentPicksThis: item.why_a_student_picks_this || "",
        skippedMove: item.skipped_move || "",
        recoveryStep: item.recovery_step || "",
      });
    }
    for (const item of asArray(p.drill_seeds)) {
      allRows.drillSeeds.push({
        fileName,
        originalQid,
        variantQid,
        questionId: p.question_id || "",
        drillType: item.drill_type || "",
        targetSkill: item.target_skill || "",
        prompt: item.prompt || "",
        answer: item.answer || "",
      });
    }
    for (const item of asArray(p.component_routing)) {
      allRows.routing.push({
        fileName,
        originalQid,
        variantQid,
        questionId: p.question_id || "",
        destinationKey: item.destination_key || "",
        route: item.route || "",
        componentTags: compact(item.component_tags),
      });
    }
    for (const key of asArray(p.gold_keys)) {
      allRows.keys.push({
        fileName,
        originalQid,
        variantQid,
        sourceBlock: "program_intelligence",
        keyKind: "gold",
        id: key.id || "",
        type: key.type || "",
        statement: key.statement || "",
        trigger: key.trigger || "",
        testedChoice: key.tested_choice || "",
        outlineCode: key.outline_code || "",
      });
    }
    for (const key of asArray(p.silver_keys)) {
      allRows.keys.push({
        fileName,
        originalQid,
        variantQid,
        sourceBlock: "program_intelligence",
        keyKind: "silver",
        id: key.id || "",
        type: key.type || "",
        statement: key.statement || "",
        trigger: key.trigger || "",
        testedChoice: key.tested_choice || "",
        outlineCode: key.outline_code || "",
      });
    }
  }

  if (missingUpdatedInfo.length) {
    allRows.needsUpdatedInfo.push({
      fileName,
      originalQid,
      variantQid,
      subject: fm.subject || "",
      topic: fm.topic || "",
      subtopic: fm.subtopic || "",
      outlineCode: stripQuotes(fm.outline_code || ""),
      issueCount: missingUpdatedInfo.length,
      missingUpdatedInfo: missingUpdatedInfo.join(" | "),
      hasQuestionYaml: bool(qYamlBlock.found),
      hasCaseStudy: bool(caseBlock.found),
      hasC3AnnotationJson: bool(c3.ok),
      hasProgramElementsJson: bool(elements.ok),
      hasProgramIntelligenceJson: bool(intelligence.ok),
      recommendation: "Refresh/rebuild this file with the current CQ contract if these newer blocks are required for ingestion.",
      path: fullPath,
    });
  }
}

function toMatrix(rows, headers) {
  return [headers, ...rows.map((row) => headers.map((header) => normalizeCell(row[header])))];
}

function columnWidth(header, values) {
  const h = String(header).toLowerCase();
  if (/(content|text|question|explanation|truth|notes|why|prompt|answer|raw|summary|verification|script)/.test(h)) {
    return 360;
  }
  if (/(path|url)/.test(h)) return 280;
  if (/(file|qid|subject|topic|subtopic|code|key|choice|pct|count|status|verdict|confidence|phase)/.test(h)) {
    return 130;
  }
  const max = Math.max(String(header).length, ...values.slice(0, 200).map((v) => String(v ?? "").length));
  return Math.max(90, Math.min(260, max * 8 + 24));
}

async function writeSheet(workbook, sheetName, headers, rows) {
  const sheet = workbook.worksheets.add(sheetName);
  sheet.showGridLines = false;
  const matrix = toMatrix(rows.length ? rows : [Object.fromEntries(headers.map((h) => [h, ""]))], headers);
  const chunkSize = 500;
  for (let start = 0; start < matrix.length; start += chunkSize) {
    const chunk = matrix.slice(start, start + chunkSize);
    sheet.getRangeByIndexes(start, 0, chunk.length, headers.length).values = chunk;
  }
  sheet.freezePanes.freezeRows(1);
  const header = sheet.getRangeByIndexes(0, 0, 1, headers.length);
  header.format = {
    fill: "#1F4E79",
    font: { bold: true, color: "#FFFFFF" },
    horizontalAlignment: "center",
    verticalAlignment: "center",
  };
  header.format.rowHeightPx = 26;
  sheet.getRangeByIndexes(0, 0, matrix.length, headers.length).format.borders = {
    preset: "all",
    style: "thin",
    color: "#D9E2F3",
  };
  for (let col = 0; col < headers.length; col += 1) {
    const values = rows.map((row) => row[headers[col]]);
    sheet.getRangeByIndexes(0, col, matrix.length, 1).format.columnWidthPx = columnWidth(headers[col], values);
  }
  if (matrix.length > 1) {
    const body = sheet.getRangeByIndexes(1, 0, matrix.length - 1, headers.length);
    body.format = {
      font: { color: "#1F2933", size: 10 },
      verticalAlignment: "top",
      wrapText: false,
    };
    body.format.rowHeightPx = 22;
  }
  return sheet;
}

function countBy(rows, field) {
  const counts = new Map();
  for (const row of rows) {
    const key = row[field] || "(blank)";
    counts.set(key, (counts.get(key) || 0) + 1);
  }
  return [...counts.entries()].sort((a, b) => String(a[0]).localeCompare(String(b[0])));
}

async function buildWorkbook() {
  const files = await collectFiles();
  for (const fileName of files) {
    await processFile(fileName);
  }

  const exactFiles = files.filter((name) => /^CQ\d+\.md$/i.test(name)).length;
  const suffixFiles = files.length - exactFiles;
  const uniqueOriginals = new Set(allRows.frontmatter.map((row) => row.originalQid)).size;
  const parseIssueCount = allRows.parseIssues.length;
  const c3Parsed = allRows.c3Annotation.length;
  const elementsParsed = allRows.programElements.length;
  const intelligenceParsed = allRows.programIntelligence.length;
  const qYamlParsed = allRows.questionYaml.length;
  const caseStudyRows = allRows.caseStudy.length;

  allRows.summary.push(
    { metric: "Finished CQ markdown files", value: files.length, note: `${exactFiles} exact CQ<number>.md; ${suffixFiles} suffix variants` },
    { metric: "Unique original QIDs", value: uniqueOriginals, note: "Derived from filename numeric prefix" },
    { metric: "Frontmatter rows", value: allRows.frontmatter.length, note: "One row per file when available" },
    { metric: "Question QA rows", value: allRows.questionQa.length, note: "Pass-1 extracted question, answers, explanations" },
    { metric: "Question YAML parsed rows", value: qYamlParsed, note: "Files with newer Question YAML block" },
    { metric: "Case study section rows", value: caseStudyRows, note: includeTextPreviewSheets ? "One row per case-study section chunk" : "Preview sheet omitted for workbook size; full text remains in source Markdown" },
    { metric: "c3_annotation parsed rows", value: c3Parsed, note: "Valid parsed JSON blocks" },
    { metric: "program_elements parsed rows", value: elementsParsed, note: "Valid parsed JSON blocks" },
    { metric: "program_intelligence parsed rows", value: intelligenceParsed, note: "Valid parsed JSON blocks" },
    { metric: "Raw YAML/JSON block chunks", value: allRows.rawBlocks.length, note: includeTextPreviewSheets ? "Structured block previews; full source remains in the Markdown files" : "Preview sheet omitted for workbook size; structured summaries are exported" },
    { metric: "Long free-text cell cap", value: maxCellChars, note: "Long section/raw-block cells are preview-capped; Frontmatter.path points to the full source Markdown" },
    { metric: "Questions needing updated info", value: allRows.needsUpdatedInfo.length, note: "Dedicated NeedsUpdatedInfo sheet lists the missing newer blocks/fields" },
    { metric: "Parse issue rows", value: parseIssueCount, note: "Missing older blocks and parse failures are listed, not hidden" },
  );
  for (const [subject, count] of countBy(allRows.frontmatter, "subject")) {
    allRows.summary.push({ metric: `Subject count: ${subject}`, value: count, note: "Frontmatter subject" });
  }

  const workbook = Workbook.create();

  await writeSheet(workbook, "Summary", ["metric", "value", "note"], allRows.summary);
  await writeSheet(workbook, "Frontmatter", [
    "fileName",
    "originalQid",
    "variantQid",
    "transformedFrom",
    "subject",
    "topic",
    "subtopic",
    "outlineCode",
    "key",
    "originalKey",
    "letterMap",
    "dominantTrap",
    "pickRates",
    "bankValidationVerdict",
    "reviewTruth",
    "fileBytes",
    "modifiedTime",
    "suffixVariant",
    "path",
  ], allRows.frontmatter);
  await writeSheet(workbook, "QuestionQA", [
    "subject",
    "subtopic",
    "category",
    "outlineCode",
    "finalQuestion",
    "choiceA",
    "choiceB",
    "choiceC",
    "choiceD",
    "correctAnswer",
    "fileName",
    "originalQid",
    "variantQid",
    "topic",
    "key",
    "originalKey",
    "distilledCoreQuestion",
    "letterMap",
    "rightAnswerExplanation",
    "wrongAnswerExplanations",
    "blackLetterVerification",
    "reviewTruth",
  ], allRows.questionQa);
  if (includeTextPreviewSheets) {
    await writeSheet(workbook, "Pass1Sections", [
      "fileName",
      "originalQid",
      "variantQid",
      "sectionNumber",
      "sectionTitle",
      "chunkIndex",
      "chunkCount",
      "content",
    ], allRows.pass1Sections);
  }
  await writeSheet(workbook, "QuestionYAML", [
    "fileName",
    "originalQid",
    "variantQid",
    "yamlQid",
    "subject",
    "topic",
    "subtopic",
    "outlineCode",
    "officialKey",
    "originalKey",
    "call",
    "choiceA",
    "choiceB",
    "choiceC",
    "choiceD",
    "pctA",
    "pctAProvenance",
    "pctB",
    "pctBProvenance",
    "pctC",
    "pctCProvenance",
    "pctD",
    "pctDProvenance",
    "residual",
    "caseStudyVerdict",
    "bankValidationVerdict",
    "confidence",
    "difficulty",
    "yamlChars",
  ], allRows.questionYaml);
  if (includeTextPreviewSheets) {
    await writeSheet(workbook, "CaseStudySections", [
      "fileName",
      "originalQid",
      "variantQid",
      "sectionOrder",
      "sectionName",
      "chunkIndex",
      "chunkCount",
      "content",
    ], allRows.caseStudy);
  }
  await writeSheet(workbook, "C3Annotation", [
    "fileName",
    "originalQid",
    "variantQid",
    "questionId",
    "subject",
    "creditedAnswer",
    "outlineCode",
    "distilledCoreQuestion",
    "reviewTruth",
    "verdict",
    "residual",
    "agreesWithKey",
    "governingLawType",
    "decidingPhase",
    "confidence",
    "tensionAxis",
    "isFork",
    "forkType",
    "difficulty",
    "callHeuristic",
    "distractorCount",
    "goldKeyCount",
    "silverKeyCount",
    "analyzerNotes",
  ], allRows.c3Annotation);
  await writeSheet(workbook, "ProgramElements", [
    "fileName",
    "originalQid",
    "variantQid",
    "questionId",
    "subject",
    "outlineCode",
    "distilledCoreQuestion",
    "reviewTruth",
    "tension",
    "trapsCount",
    "remediationCardId",
    "remediationTitle",
    "remediationSignal",
    "remediationMove",
    "remediationTinyRule",
    "remediationTrap",
    "redZoneDimensions",
  ], allRows.programElements);
  await writeSheet(workbook, "ProgramTraps", [
    "fileName",
    "originalQid",
    "variantQid",
    "questionId",
    "choice",
    "mold",
    "architecture",
    "whyAttractive",
    "focusGroupPct",
    "pctProvenance",
  ], allRows.traps);
  await writeSheet(workbook, "ProgramIntelligence", [
    "fileName",
    "originalQid",
    "variantQid",
    "questionId",
    "subject",
    "outlineCode",
    "distilledCoreQuestion",
    "reviewTruth",
    "wrongAnswerPathsCount",
    "drillSeedsCount",
    "routingCount",
    "crossovers",
    "goldKeyCount",
    "silverKeyCount",
    "outlinePlacement",
    "outlineTeaches",
    "outlineFills",
    "adjacentToMaster",
    "trapTags",
  ], allRows.programIntelligence);
  await writeSheet(workbook, "WrongAnswerPaths", [
    "fileName",
    "originalQid",
    "variantQid",
    "questionId",
    "choice",
    "filterBroken",
    "mold",
    "whyStudentPicksThis",
    "skippedMove",
    "recoveryStep",
  ], allRows.wrongAnswerPaths);
  await writeSheet(workbook, "DrillSeeds", [
    "fileName",
    "originalQid",
    "variantQid",
    "questionId",
    "drillType",
    "targetSkill",
    "prompt",
    "answer",
  ], allRows.drillSeeds);
  await writeSheet(workbook, "Routing", [
    "fileName",
    "originalQid",
    "variantQid",
    "questionId",
    "destinationKey",
    "route",
    "componentTags",
  ], allRows.routing);
  await writeSheet(workbook, "Keys", [
    "fileName",
    "originalQid",
    "variantQid",
    "sourceBlock",
    "keyKind",
    "id",
    "type",
    "statement",
    "trigger",
    "testedChoice",
    "outlineCode",
  ], allRows.keys);
  if (includeTextPreviewSheets) {
    await writeSheet(workbook, "RawBlocks", [
      "fileName",
      "originalQid",
      "variantQid",
      "blockName",
      "chunkIndex",
      "chunkCount",
      "text",
    ], allRows.rawBlocks);
  }
  await writeSheet(workbook, "NeedsUpdatedInfo", [
    "fileName",
    "originalQid",
    "variantQid",
    "subject",
    "topic",
    "subtopic",
    "outlineCode",
    "issueCount",
    "missingUpdatedInfo",
    "hasQuestionYaml",
    "hasCaseStudy",
    "hasC3AnnotationJson",
    "hasProgramElementsJson",
    "hasProgramIntelligenceJson",
    "recommendation",
    "path",
  ], allRows.needsUpdatedInfo);
  await writeSheet(workbook, "ParseIssues", [
    "fileName",
    "originalQid",
    "issue",
    "detail",
  ], allRows.parseIssues);

  const summaryCheck = await workbook.inspect({
    kind: "table",
    range: "Summary!A1:C20",
    include: "values",
    tableMaxRows: 20,
    tableMaxCols: 3,
  });
  console.log(summaryCheck.ndjson);

  const errors = await workbook.inspect({
    kind: "match",
    searchTerm: "#REF!|#DIV/0!|#VALUE!|#NAME\\?|#N/A",
    options: { useRegex: true, maxResults: 20 },
    summary: "formula error scan",
  });
  console.log(errors.ndjson);

  await fs.mkdir(previewDir, { recursive: true });
  const sheetNames = [
    "Summary",
    "Frontmatter",
    "QuestionQA",
    "QuestionYAML",
    "C3Annotation",
    "ProgramElements",
    "ProgramTraps",
    "ProgramIntelligence",
    "WrongAnswerPaths",
    "DrillSeeds",
    "Routing",
    "Keys",
    "NeedsUpdatedInfo",
    "ParseIssues",
  ];
  if (includeTextPreviewSheets) {
    sheetNames.splice(3, 0, "Pass1Sections");
    sheetNames.splice(sheetNames.indexOf("C3Annotation"), 0, "CaseStudySections");
    sheetNames.splice(sheetNames.indexOf("NeedsUpdatedInfo"), 0, "RawBlocks");
  }
  for (const name of sheetNames) {
    const preview = await workbook.render({ sheetName: name, range: "A1:H12", scale: 1, format: "png" });
    await fs.writeFile(
      path.join(previewDir, `${name}.png`),
      new Uint8Array(await preview.arrayBuffer()),
    );
  }

  await fs.mkdir(outputDir, { recursive: true });
  const xlsx = await SpreadsheetFile.exportXlsx(workbook);
  await xlsx.save(outputPath);

  const workbookStat = await fs.stat(outputPath);
  console.log(JSON.stringify({
    outputPath,
    workbookBytes: workbookStat.size,
    files: files.length,
    exactFiles,
    suffixFiles,
    qYamlParsed,
    c3Parsed,
    elementsParsed,
    intelligenceParsed,
    needsUpdatedInfo: allRows.needsUpdatedInfo.length,
    parseIssueCount,
    sheets: sheetNames.length,
  }, null, 2));
}

await buildWorkbook();
