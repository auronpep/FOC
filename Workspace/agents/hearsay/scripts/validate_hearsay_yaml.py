#!/usr/bin/env python3
"""Validate BarMatrix Hearsay finished-question YAML drafts."""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path
from typing import Any

try:
    import yaml
except ImportError as exc:  # pragma: no cover
    raise SystemExit("PyYAML is required: pip install pyyaml") from exc

try:
    from jsonschema import Draft202012Validator
except ImportError:  # pragma: no cover
    Draft202012Validator = None  # type: ignore[assignment]


REQUIRED_TOP_LEVEL_ORDER = [
    "artifact_type",
    "version",
    "question_id",
    "review_status",
    "source_mode",
    "metadata",
    "christian_surface_profile",
    "mechanics",
    "statement_map",
    "layer_map",
    "route_gate_checklist",
    "question",
    "answer_array_geometry",
    "answer_choice_forensics",
    "explanation",
    "student_learning_layer",
    "qa_self_audit",
    "copy_safety",
    "human_review_flags",
    "source_law_trace",
    "taxonomy_growth_delta",
]

REQUIRED_MECHANICS = [
    "statement_count",
    "declarant_count",
    "layer_count",
    "evidence_vehicle",
    "offered_purpose",
    "route_type",
    "admissibility_scope",
    "correct_route_summary",
    "wrong_answer_mechanic",
    "repair_id",
]

REQUIRED_STATEMENT_FIELDS = [
    "statement_surface_ref",
    "statement_abstract",
    "declarant_role",
    "asserted_proposition",
    "offered_proposition",
    "truth_or_nontruth",
    "evidence_vehicle",
    "route_type",
    "route_name",
    "result",
    "admissibility_scope",
]

REQUIRED_LAYER_FIELDS = [
    "contains_statement_id",
    "declarant_role",
    "vehicle_or_container",
    "offered_for",
    "route",
    "result",
    "scope",
]

REQUIRED_FORENSIC_FIELDS = [
    "choice_label",
    "role",
    "wal_id",
    "c3_filter_broken",
    "c3_mold_code",
    "c3_mold_family",
    "failure_axis",
    "why_plausible",
    "why_wrong_or_correct",
    "what_true_responsive_version_would_need",
    "repair_id",
    "pick_rate",
]

REQUIRED_TRUE_QA_FLAGS = [
    "schema_validated",
    "exact_statement_identified",
    "offered_purpose_identified",
    "every_layer_routed",
    "vehicle_scope_checked",
    "one_best_answer",
    "answer_key_consistency_checked",
    "wrong_answers_mechanically_distinct",
    "no_record_container_cure_error",
    "no_confrontation_omission",
    "no_california_fre_confusion",
    "no_source_copy_or_close_paraphrase",
    "no_unsupported_authority",
    "controlled_vocab_validated",
    "outline_code_validated",
    "christian_surface_present",
    "christian_surface_no_legal_clutter",
    "needs_human_legal_review",
    "needs_calibration_harness_audit",
]

REQUIRED_TRUE_HUMAN_FLAGS = [
    "legal_review_required",
    "calibration_review_required",
    "copy_safety_review_required",
    "christian_surface_review_required",
]

REQUIRED_FALSE_COPY_FLAGS = [
    "source_question_text_used",
    "source_answer_choice_text_used",
    "source_fact_sequence_used",
    "distinctive_names_reused",
    "distinctive_numbers_reused",
    "distinctive_dialogue_reused",
]


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Validate a BarMatrix Hearsay YAML draft against the local packet gates."
    )
    parser.add_argument("yaml_file", type=Path)
    parser.add_argument("--packet-root", type=Path, default=Path("packet"))
    parser.add_argument("--mode", choices=["single", "batch", "auto"], default="auto")
    parser.add_argument("--json", action="store_true", dest="as_json")
    return parser.parse_args()


def read_text(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def load_yaml_file(path: Path) -> tuple[list[Any], list[str]]:
    errors: list[str] = []
    try:
        docs = list(yaml.safe_load_all(read_text(path)))
    except Exception as exc:
        return [], [f"YAML parse failed: {exc}"]

    docs = [doc for doc in docs if doc is not None]
    if not docs:
        errors.append("YAML file contains no documents.")
    return docs, errors


def load_schema(packet_root: Path) -> dict[str, Any] | None:
    schema_path = packet_root / "schemas" / "hearsay_finished_question_draft.schema.yaml"
    if not schema_path.exists():
        return None
    return yaml.safe_load(read_text(schema_path))


def load_packet_refs(packet_root: Path) -> tuple[set[str], set[str], set[str], list[str]]:
    warnings: list[str] = []

    def safe_read(relative: str) -> str:
        path = packet_root / relative
        if not path.exists():
            warnings.append(f"Packet reference missing: {relative}")
            return ""
        return read_text(path)

    outline_text = safe_read("OUTLINE_CODES_COMPLETE.md")
    wal_text = safe_read(str(Path("source_docs") / "hearsay_wrong_answer_mechanics.md"))
    rep_text = safe_read(str(Path("source_docs") / "hearsay_bootcamp_repairs.md"))

    outline_codes = set(re.findall(r"\b\d{8}\b", outline_text))
    wal_ids = set(re.findall(r"\bWAL-HS-\d{3}\b", wal_text))
    rep_ids = set(re.findall(r"\bREP-HS-\d{3}\b", rep_text))
    return outline_codes, wal_ids, rep_ids, warnings


def nonempty(value: Any) -> bool:
    if value is None:
        return False
    if isinstance(value, str):
        return bool(value.strip())
    if isinstance(value, (list, tuple, set, dict)):
        return bool(value)
    return True


def path_value(obj: Any, dotted: str) -> Any:
    current = obj
    for part in dotted.split("."):
        if not isinstance(current, dict) or part not in current:
            return None
        current = current[part]
    return current


def fmt_path(prefix: str, key: str) -> str:
    return f"{prefix}.{key}" if prefix else key


def validate_schema(doc: dict[str, Any], schema: dict[str, Any] | None, doc_label: str) -> list[str]:
    if schema is None:
        return [f"{doc_label}: schema file is missing."]
    if Draft202012Validator is None:
        return [f"{doc_label}: jsonschema is not installed; schema validation could not run."]

    validator = Draft202012Validator(schema)
    errors = []
    for error in sorted(validator.iter_errors(doc), key=lambda err: list(err.path)):
        dotted = ".".join(str(part) for part in error.path) or "<root>"
        errors.append(f"{doc_label}: schema {dotted}: {error.message}")
    return errors


def validate_required_nonempty(
    mapping: dict[str, Any],
    keys: list[str],
    prefix: str,
    errors: list[str],
) -> None:
    for key in keys:
        if not nonempty(mapping.get(key)):
            errors.append(f"{fmt_path(prefix, key)} is required and must be non-empty.")


def validate_doc(
    doc: Any,
    index: int,
    schema: dict[str, Any] | None,
    outline_codes: set[str],
    wal_ids: set[str],
    rep_ids: set[str],
) -> tuple[list[str], list[str]]:
    doc_label = f"doc[{index}]"
    errors: list[str] = []
    warnings: list[str] = []

    if not isinstance(doc, dict):
        return [f"{doc_label}: top-level YAML document must be a mapping."], warnings

    keys = list(doc.keys())
    if keys[: len(REQUIRED_TOP_LEVEL_ORDER)] != REQUIRED_TOP_LEVEL_ORDER:
        errors.append(
            f"{doc_label}: top-level keys must start in exact packet order: "
            + ", ".join(REQUIRED_TOP_LEVEL_ORDER)
        )
    missing = [key for key in REQUIRED_TOP_LEVEL_ORDER if key not in doc]
    if missing:
        errors.append(f"{doc_label}: missing top-level sections: {', '.join(missing)}")
    extra = [key for key in keys if key not in REQUIRED_TOP_LEVEL_ORDER]
    if extra:
        warnings.append(f"{doc_label}: extra top-level sections present: {', '.join(extra)}")

    errors.extend(validate_schema(doc, schema, doc_label))

    if doc.get("artifact_type") != "hearsay_finished_question_draft":
        errors.append(f"{doc_label}: artifact_type must be hearsay_finished_question_draft.")
    if doc.get("review_status") != "draft_internal_only":
        errors.append(f"{doc_label}: review_status must remain draft_internal_only.")
    if doc.get("source_mode") not in {
        "synthetic_from_tension_not_source_question",
        "transformed_from_source_question",
    }:
        errors.append(f"{doc_label}: source_mode is not a supported packet value.")

    metadata = doc.get("metadata") if isinstance(doc.get("metadata"), dict) else {}
    mechanics = doc.get("mechanics") if isinstance(doc.get("mechanics"), dict) else {}
    christian = (
        doc.get("christian_surface_profile")
        if isinstance(doc.get("christian_surface_profile"), dict)
        else {}
    )
    question = doc.get("question") if isinstance(doc.get("question"), dict) else {}
    qa = doc.get("qa_self_audit") if isinstance(doc.get("qa_self_audit"), dict) else {}
    copy_safety = doc.get("copy_safety") if isinstance(doc.get("copy_safety"), dict) else {}
    human_flags = (
        doc.get("human_review_flags") if isinstance(doc.get("human_review_flags"), dict) else {}
    )

    validate_required_nonempty(
        metadata,
        [
            "slot_id",
            "official_outline_node",
            "official_section",
            "official_topic",
            "outline_code",
            "primary_tension_id",
            "jurisdiction_mode",
            "difficulty_band",
            "accuracy_target",
            "repair_id",
        ],
        f"{doc_label}.metadata",
        errors,
    )

    outline_code = str(metadata.get("outline_code", "")).strip()
    if outline_code == "00000000":
        if not nonempty(qa.get("warning_flags")):
            errors.append(f"{doc_label}.metadata.outline_code is 00000000 without warning_flags.")
        warnings.append(f"{doc_label}: outline_code is 00000000 placeholder.")
    elif outline_code and outline_code not in outline_codes:
        errors.append(f"{doc_label}.metadata.outline_code {outline_code} is not in OUTLINE_CODES_COMPLETE.md.")

    for field in ["repair_id"]:
        rep = str(metadata.get(field, "")).strip()
        if rep and rep not in rep_ids:
            errors.append(f"{doc_label}.metadata.{field} {rep} is not in hearsay_bootcamp_repairs.md.")

    wal_targets = metadata.get("wal_target_ids", [])
    if not isinstance(wal_targets, list) or not wal_targets:
        errors.append(f"{doc_label}.metadata.wal_target_ids must contain at least one WAL ID.")
    else:
        for wal in wal_targets:
            if str(wal) not in wal_ids:
                errors.append(f"{doc_label}.metadata.wal_target_ids contains unknown WAL ID: {wal}")

    validate_required_nonempty(mechanics, REQUIRED_MECHANICS, f"{doc_label}.mechanics", errors)
    rep = str(mechanics.get("repair_id", "")).strip()
    if rep and rep not in rep_ids:
        errors.append(f"{doc_label}.mechanics.repair_id {rep} is not in hearsay_bootcamp_repairs.md.")

    statement_map = doc.get("statement_map")
    if not isinstance(statement_map, list) or not statement_map:
        errors.append(f"{doc_label}.statement_map must contain at least one statement.")
        statement_map = []

    statement_ids: set[str] = set()
    for idx, statement in enumerate(statement_map):
        prefix = f"{doc_label}.statement_map[{idx}]"
        if not isinstance(statement, dict):
            errors.append(f"{prefix} must be a mapping.")
            continue
        statement_id = str(statement.get("statement_id", "")).strip()
        if statement_id:
            statement_ids.add(statement_id)
        validate_required_nonempty(statement, REQUIRED_STATEMENT_FIELDS, prefix, errors)

    layer_map = doc.get("layer_map")
    if not isinstance(layer_map, list) or not layer_map:
        errors.append(f"{doc_label}.layer_map must contain at least one layer.")
        layer_map = []

    for idx, layer in enumerate(layer_map):
        prefix = f"{doc_label}.layer_map[{idx}]"
        if not isinstance(layer, dict):
            errors.append(f"{prefix} must be a mapping.")
            continue
        validate_required_nonempty(layer, REQUIRED_LAYER_FIELDS, prefix, errors)
        contains = str(layer.get("contains_statement_id", "")).strip()
        if statement_ids and contains and contains not in statement_ids:
            errors.append(f"{prefix}.contains_statement_id {contains} does not match statement_map.")

    if isinstance(mechanics.get("statement_count"), int) and mechanics["statement_count"] != len(statement_map):
        errors.append(f"{doc_label}.mechanics.statement_count does not equal statement_map length.")
    if isinstance(mechanics.get("layer_count"), int) and mechanics["layer_count"] != len(layer_map):
        errors.append(f"{doc_label}.mechanics.layer_count does not equal layer_map length.")
    if isinstance(mechanics.get("declarant_count"), int) and mechanics["declarant_count"] < 1:
        errors.append(f"{doc_label}.mechanics.declarant_count must be at least 1.")

    validate_required_nonempty(
        christian,
        ["intensity", "setting", "faith_elements", "bible_names_used", "clutter_risk"],
        f"{doc_label}.christian_surface_profile",
        errors,
    )
    faith_elements = christian.get("faith_elements", [])
    bible_names = christian.get("bible_names_used", [])
    if not isinstance(faith_elements, list) or len(faith_elements) < 3:
        errors.append(f"{doc_label}.christian_surface_profile.faith_elements must include at least three explicit Christian elements.")
    if not isinstance(bible_names, list) or not bible_names:
        errors.append(f"{doc_label}.christian_surface_profile.bible_names_used must include at least one Bible name.")

    choices = question.get("choices") if isinstance(question.get("choices"), dict) else {}
    validate_required_nonempty(question, ["stem", "call", "correct_answer"], f"{doc_label}.question", errors)
    if sorted(choices.keys()) != ["A", "B", "C", "D"]:
        errors.append(f"{doc_label}.question.choices must have exactly A, B, C, and D.")
    else:
        for label in ["A", "B", "C", "D"]:
            if not nonempty(choices.get(label)):
                errors.append(f"{doc_label}.question.choices.{label} must be non-empty.")
    correct_answer = str(question.get("correct_answer", "")).strip()
    if correct_answer not in {"A", "B", "C", "D"}:
        errors.append(f"{doc_label}.question.correct_answer must be A, B, C, or D.")

    forensics = doc.get("answer_choice_forensics")
    if not isinstance(forensics, list) or len(forensics) != 4:
        errors.append(f"{doc_label}.answer_choice_forensics must contain exactly four entries.")
        forensics = []

    forensic_labels: set[str] = set()
    correct_forensic_labels: list[str] = []
    for idx, forensic in enumerate(forensics):
        prefix = f"{doc_label}.answer_choice_forensics[{idx}]"
        if not isinstance(forensic, dict):
            errors.append(f"{prefix} must be a mapping.")
            continue
        validate_required_nonempty(forensic, REQUIRED_FORENSIC_FIELDS, prefix, errors)
        label = str(forensic.get("choice_label", "")).strip()
        role = str(forensic.get("role", "")).strip().lower()
        if label:
            forensic_labels.add(label)
        if label not in {"A", "B", "C", "D"}:
            errors.append(f"{prefix}.choice_label must be A, B, C, or D.")
        if role == "correct":
            correct_forensic_labels.append(label)
        wal = str(forensic.get("wal_id", "")).strip()
        rep = str(forensic.get("repair_id", "")).strip()
        if wal and wal not in wal_ids:
            errors.append(f"{prefix}.wal_id {wal} is not in hearsay_wrong_answer_mechanics.md.")
        if rep and rep not in rep_ids:
            errors.append(f"{prefix}.repair_id {rep} is not in hearsay_bootcamp_repairs.md.")
        pick_rate = forensic.get("pick_rate")
        if not isinstance(pick_rate, dict) or not nonempty(pick_rate.get("provenance")):
            errors.append(f"{prefix}.pick_rate must contain provenance.")

    if forensic_labels and forensic_labels != {"A", "B", "C", "D"}:
        errors.append(f"{doc_label}.answer_choice_forensics must cover choices A, B, C, and D exactly once.")
    if len(correct_forensic_labels) != 1:
        errors.append(f"{doc_label}.answer_choice_forensics must identify exactly one role: correct.")
    elif correct_answer and correct_forensic_labels[0] != correct_answer:
        errors.append(f"{doc_label}.answer_choice_forensics correct role does not match question.correct_answer.")

    for field in REQUIRED_TRUE_QA_FLAGS:
        if qa.get(field) is not True:
            errors.append(f"{doc_label}.qa_self_audit.{field} must be true.")
    for field in REQUIRED_TRUE_HUMAN_FLAGS:
        if human_flags.get(field) is not True:
            errors.append(f"{doc_label}.human_review_flags.{field} must remain true.")
    for field in REQUIRED_FALSE_COPY_FLAGS:
        if copy_safety.get(field) is not False:
            errors.append(f"{doc_label}.copy_safety.{field} must be false.")
    if str(copy_safety.get("similarity_risk", "")).strip().lower() in {"medium", "high"}:
        errors.append(f"{doc_label}.copy_safety.similarity_risk must not be medium/high for packaged drafts.")

    if not nonempty(path_value(doc, "source_law_trace.law_anchor_refs")):
        warnings.append(f"{doc_label}: source_law_trace.law_anchor_refs is empty.")
    if path_value(doc, "source_law_trace.authority_status.attorney_review_required") is not True:
        errors.append(f"{doc_label}.source_law_trace.authority_status.attorney_review_required must remain true.")

    return errors, warnings


def main() -> int:
    args = parse_args()
    yaml_file = args.yaml_file.resolve()
    packet_root = args.packet_root.resolve()

    docs, parse_errors = load_yaml_file(yaml_file)
    outline_codes, wal_ids, rep_ids, ref_warnings = load_packet_refs(packet_root)
    schema = load_schema(packet_root)

    errors: list[str] = []
    warnings: list[str] = []
    errors.extend(parse_errors)
    warnings.extend(ref_warnings)

    if args.mode == "single" and docs and len(docs) != 1:
        errors.append(f"Mode single expects exactly one YAML document; found {len(docs)}.")
    if args.mode == "batch" and docs and len(docs) != 3:
        errors.append(f"Mode batch expects exactly three YAML documents; found {len(docs)}.")

    for index, doc in enumerate(docs, start=1):
        doc_errors, doc_warnings = validate_doc(doc, index, schema, outline_codes, wal_ids, rep_ids)
        errors.extend(doc_errors)
        warnings.extend(doc_warnings)

    result = {
        "ok": not errors,
        "file": str(yaml_file),
        "packet_root": str(packet_root),
        "mode": args.mode,
        "document_count": len(docs),
        "errors": errors,
        "warnings": warnings,
    }

    if args.as_json:
        print(json.dumps(result, indent=2))
    else:
        status = "PASS" if result["ok"] else "FAIL"
        print(f"{status}: {yaml_file}")
        for error in errors:
            print(f"ERROR: {error}")
        for warning in warnings:
            print(f"WARNING: {warning}")

    return 0 if result["ok"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
