#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Validate CQ20502.md: parse the 3 JSON blocks, check key consistency, run a YAML sanity scan."""
import re, json, sys, io

# Force UTF-8 stdout on Windows
try:
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')
    sys.stderr = io.TextIOWrapper(sys.stderr.buffer, encoding='utf-8', errors='replace')
except Exception:
    pass

PATH = r"C:\FOC\Workspace\Finished\CQ20502.md"
with open(PATH, "r", encoding="utf-8") as f:
    text = f.read()

print(f"File size: {len(text)} chars / {len(text.encode('utf-8'))} bytes")
print(f"Lines: {text.count(chr(10)) + 1}")
print()

# Extract JSON blocks
def extract_json(name, header):
    idx = text.find(header)
    if idx < 0:
        return None, f"header not found: {header}"
    fence_start = text.find("```json", idx)
    if fence_start < 0:
        return None, "no ```json fence"
    body_start = fence_start + len("```json")
    fence_end = text.find("```", body_start)
    if fence_end < 0:
        return None, "unterminated fence"
    return text[body_start:fence_end].strip(), None

# Block headings
blocks = [
    ("c3_annotation",       "### 3. c3_annotation"),
    ("program_elements",    "### 4. program_elements"),
    ("program_intelligence","### 5. program_intelligence"),
]

all_ok = True
for name, header in blocks:
    print(f"=== {name} ===")
    body, err = extract_json(name, header)
    if err:
        print(f"  EXTRACT FAIL: {err}")
        all_ok = False
        continue
    print(f"  Length: {len(body)} chars")
    print(f"  First 80 chars: {body[:80]}")
    try:
        obj = json.loads(body)
    except json.JSONDecodeError as e:
        print(f"  JSON PARSE FAIL: {e}")
        all_ok = False
        continue
    print(f"  PARSE: OK")
    # spot-checks
    if name == "c3_annotation":
        c3 = obj.get("c3", {})
        print(f"  question_id: {obj.get('question_id')}")
        print(f"  credited_answer: {c3.get('credited_answer')}")
        print(f"  residual: {c3.get('residual')}")
        print(f"  outline_code: {obj.get('outline_code')}")
        print(f"  agrees_with_key: {c3.get('agrees_with_key')}")
        notes = c3.get("analyzer_notes", {})
        print(f"  drift_audit: {notes.get('drift_audit')}")
        print(f"  transformed_from: {notes.get('transformed_from')}")
        print(f"  letter_map: {notes.get('letter_map')}")
        print(f"  dominant_trap: {notes.get('dominant_trap')}")
        print(f"  gold_keys count: {len(c3.get('gold_keys', []))}")
        print(f"  silver_keys count: {len(c3.get('silver_keys', []))}")
        print(f"  distractors count: {len(c3.get('distractors', []))}")
    elif name == "program_elements":
        print(f"  question_id: {obj.get('question_id')}")
        print(f"  red_zone_dimensions count: {len(obj.get('red_zone_dimensions', []))}")
        print(f"  traps count: {len(obj.get('traps', []))}")
    elif name == "program_intelligence":
        print(f"  question_id: {obj.get('question_id')}")
        print(f"  component_routing count: {len(obj.get('component_routing', []))}")
        print(f"  drill_seeds count: {len(obj.get('drill_seeds', []))}")
        print(f"  gold_keys count: {len(obj.get('gold_keys', []))}")
        print(f"  silver_keys count: {len(obj.get('silver_keys', []))}")
        print(f"  wrong_answer_paths count: {len(obj.get('wrong_answer_paths', []))}")
    print()

# Letter consistency
print("=== Letter consistency (key C) ===")
arrow_lm = "A\u2192B, B\u2192A, C\u2192D, D\u2192C"
print(f"  letter_map (A→B, B→A, C→D, D→C) occurrences: {text.count(arrow_lm)}")
print(f"  'key: C' occurrences: {len(re.findall(r'key: C\\b', text))}")
print(f"  'official_key: \"C\"' occurrences: {text.count('official_key: \"C\"')}")
print(f"  'new_key_letter: \"C\"' occurrences: {text.count('new_key_letter: \"C\"')}")
print(f"  'residual: \"C\"' occurrences: {text.count('residual: \"C\"')}")
print(f"  'residual_answer: \"C\"' occurrences: {text.count('residual_answer: \"C\"')}")
print(f"  'credited_answer: \"C\"' occurrences: {text.count('credited_answer: \"C\"')}")
print(f"  'original_key: D' occurrences: {text.count('original_key: D')}")
print(f"  'original_key_letter: \"D\"' occurrences: {text.count('original_key_letter: \"D\"')}")
print(f"  'transformed_from: 20502' occurrences: {text.count('transformed_from: 20502')}")
print(f"  'transformed_from: \"20502\"' occurrences: {text.count('transformed_from: \"20502\"')}")
print(f"  'qid: 20502_peter-bus-report' occurrences: {text.count('qid: 20502_peter-bus-report')}")
print(f"  '\"question_id\": \"20502_peter-bus-report\"' occurrences: {text.count('\"question_id\": \"20502_peter-bus-report\"')}")
print()

# Trailing-comma scan in each JSON block
print("=== Trailing-comma scan in JSON blocks ===")
for name, header in blocks:
    body, _ = extract_json(name, header)
    if body is None:
        continue
    # find any ",}\n" or ",]\n" with optional whitespace
    bad1 = len(re.findall(r",\s*\}", body))
    bad2 = len(re.findall(r",\s*\]", body))
    # Trailing commas in JSON are ",}" or ",]"; in valid JSON these are errors.
    # But ConvertFrom-Json may accept ",," followed by whitespace then "}". Strict scan:
    print(f"  {name}: ',}}' patterns: {bad1}, ',]]' patterns: {bad2}")
print()

# Check that the YAML block parses (basic: each top-level line is a key: value or list)
print("=== Question YAML sanity ===")
yaml_start = text.find("```yaml")
yaml_end = text.find("```", yaml_start + 7) if yaml_start >= 0 else -1
if yaml_start >= 0 and yaml_end >= 0:
    yaml_body = text[yaml_start+7:yaml_end]
    lines = yaml_body.splitlines()
    print(f"  YAML body: {len(lines)} lines, {len(yaml_body)} chars")
    print(f"  First 5 lines:")
    for line in lines[:5]:
        print(f"    {line!r}")
else:
    print("  YAML fence not found")
print()

# Final
if all_ok:
    print("RESULT: ALL THREE JSON BLOCKS PARSE OK")
    sys.exit(0)
else:
    print("RESULT: ONE OR MORE JSON BLOCKS FAILED TO PARSE")
    sys.exit(1)
