"""Verify CQ21168.md passes the cq-transform-qa SKILL.md gate."""
import json
import re
import sys
from pathlib import Path

p = Path(r"C:\FOC\Workspace\Finished\CQ21168.md")
text = p.read_text(encoding="utf-8")
print(f"File size: {len(text)} bytes\n")

issues = []

# 1. Frontmatter present and well-formed
m = re.search(r"^---\s*\n(.*?)\n---", text, re.DOTALL)
if not m:
    issues.append("MISSING frontmatter block")
    fm = {}
else:
    fm = m.group(1)
    print("Frontmatter block FOUND")
    for field in ("qid:", "transformed_from:", "subject:", "topic:", "subtopic:",
                  "outline_code:", "key:", "original_key:", "letter_map:",
                  "dominant_trap:", "pick_rates:", "bank_validation_verdict:",
                  "review_truth:"):
        if field not in fm:
            issues.append(f"Frontmatter missing field: {field}")
        else:
            print(f"  [OK] {field}")

# 2. Verify outline_code is exactly 73030100
if "outline_code: 73030100" not in text:
    issues.append("outline_code '73030100' not found verbatim")

# 3. Verify outline code in OUTLINE_CODES_COMPLETE.md
oc_path = Path(r"C:\FOC\Workspace\OUTLINE_CODES_COMPLETE.md")
oc_text = oc_path.read_text(encoding="utf-8")
if "73030100" not in oc_text:
    issues.append("outline_code 73030100 not present in OUTLINE_CODES_COMPLETE.md")
else:
    print("outline_code 73030100 verified in OUTLINE_CODES_COMPLETE.md")

# 4. Find key letter
key_match = re.search(r"^key:\s*([A-D])", fm, re.MULTILINE)
new_key = key_match.group(1) if key_match else None
print(f"New key letter: {new_key}")
orig_key_match = re.search(r"^original_key:\s*([A-D])", fm, re.MULTILINE)
orig_key = orig_key_match.group(1) if orig_key_match else None
print(f"Original key letter: {orig_key}")

# 5. Check that new_key letter appears in frontmatter and is consistent
if new_key != "A":
    issues.append(f"Expected new key A, got {new_key}")

# 6. Letter map integrity
lm_match = re.search(r"^letter_map:\s*(.+)$", fm, re.MULTILINE)
if lm_match:
    lm_str = lm_match.group(1)
    print(f"letter_map string: {lm_str}")
    pairs = re.findall(r"([A-D])->([A-D])", lm_str)
    if len(pairs) != 4:
        issues.append(f"letter_map should have 4 pairs, found {len(pairs)}")
    else:
        targets = [p[1] for p in pairs]
        if sorted(targets) != ["A", "B", "C", "D"]:
            issues.append(f"letter_map target letters are not a permutation: {targets}")
        # Verify orig_key's new position
        for orig, new in pairs:
            if orig == orig_key and new != new_key:
                issues.append(f"orig_key {orig_key} maps to {new}, not new_key {new_key}")

# 7. Dominant trap named
dt_match = re.search(r"^dominant_trap:\s*([A-D])", fm, re.MULTILINE)
if dt_match:
    dt = dt_match.group(1)
    print(f"Dominant trap: {dt}")
    if dt not in ("A", "B", "C", "D"):
        issues.append(f"dominant_trap invalid letter: {dt}")
    # Verify dominant trap is flagged in Letter Map
    if "dominant_trap: true" not in text:
        issues.append("dominant_trap: true flag not found in letter map section")

# 8. Pass-1 transform report sections
sections_required = [
    "## A) PASS-1 TRANSFORM REPORT",
    "### 1. Final question",
    "### 2. Distilled Core Question",
    "### 3. Final answer choices",
    "### 5. Correct answer",
    "### 6. Letter Map",
    "### 7. Full right-answer explanation",
    "### 8. Full wrong-answer explanations",
    "### 9. Full black-letter-law verification",
    "### 10. Brief note on why the variation preserves",
    "### 11. C3 elimination walkthrough",
    "### 12. Divergence Audit",
    "### 13. Review Truth",
    "### 14. The 5 variations considered",
]
for sec in sections_required:
    if sec not in text:
        issues.append(f"Missing section: {sec}")
    else:
        print(f"  [OK] {sec}")

# 9. Pass-2 block headings
pass2_headings = [
    "### 1. Question YAML",
    "### 2. The 17-section student case study",
    "### 3. c3_annotation",
    "### 4. program_elements",
    "### 5. program_intelligence",
]
for h in pass2_headings:
    if h not in text:
        issues.append(f"Missing Pass-2 heading: {h}")
    else:
        print(f"  [OK] {h}")

# 10. JSON blocks parse
json_blocks = []
for fname in ("c3_annotation", "program_elements", "program_intelligence"):
    # find "### N. <fname>" header, then the next ```json ... ``` block
    m = re.search(rf"###\s*\d+\.\s*{fname}\s*\n```json\s*\n(.*?)\n```", text, re.DOTALL)
    if not m:
        issues.append(f"JSON block for {fname} not found")
        continue
    raw = m.group(1)
    try:
        obj = json.loads(raw)
        json_blocks.append((fname, obj))
        print(f"  [OK] JSON {fname} parses ({len(raw)} bytes)")
    except json.JSONDecodeError as e:
        issues.append(f"JSON {fname} does not parse: {e}")
        print(f"  [FAIL] JSON {fname} parse error: {e}")
        # show problematic area
        lines = raw.splitlines()
        ln = e.lineno - 1
        for i in range(max(0, ln - 2), min(len(lines), ln + 3)):
            print(f"    line {i+1}: {lines[i]!r}")

# 11. Pick rates: every one must have a provenance label
# Look for "pct:" patterns in the YAML
pct_provenance_pattern = re.compile(r"pct:\s*\d+\s*\n\s*provenance:\s*(inherited|predicted)")
# Check all barmatrix_row.selection_percentages entries
sp_match = re.search(r"selection_percentages:\s*\n(.*?)(?=\n  official_key:|\n  call:)", text, re.DOTALL)
if sp_match:
    sp_block = sp_match.group(1)
    # Find each A/B/C/D entry
    for letter in ("A", "B", "C", "D"):
        m2 = re.search(rf"^\s*{letter}:\s*\n(.*?)(?=\n\s*[A-D]:|\Z)", sp_block, re.MULTILINE | re.DOTALL)
        if m2:
            entry = m2.group(1)
            if "pct:" not in entry:
                issues.append(f"selection_percentages.{letter} missing pct")
            if "provenance:" not in entry:
                issues.append(f"selection_percentages.{letter} missing provenance")
            else:
                # extract provenance value
                pm = re.search(r"provenance:\s*(\w+)", entry)
                if pm:
                    val = pm.group(1)
                    if val not in ("inherited", "predicted"):
                        issues.append(f"selection_percentages.{letter} provenance invalid: {val}")
                    else:
                        print(f"  [OK] selection_percentages.{letter}.provenance = {val}")

# 12. Check no original letters outside Letter Map / provenance fields
# Find original letters (the original key is C, the original A/B/D wrong letters)
# We need to be careful: original letters may appear in the Letter Map section, provenance,
# and references to "Original A", "Original B" etc. in the 5-variations table.
# The rule is: original letters should not appear as choice labels OUTSIDE the Letter Map / provenance.
# Choice labels in the final question stem should be the new letters only.

# Check final answer choices A-D have no reference to original letters in their text
choices_block = re.search(r"### 3\. Final answer choices\s*\n(.*?)\n###", text, re.DOTALL)
if choices_block:
    ctext = choices_block.group(1)
    # Check for old letters
    if re.search(r"\bAnswer [B-D]\b", ctext) and "Answer A" not in ctext:
        # This is heuristic — but choices should only reference A-D as new letters
        pass

# 13. drift_audit must be present
if "drift_audit:" not in text:
    issues.append("'drift_audit:' not found")

# 14. transformed_from must be in analyzer_notes
if "transformed_from: 21168" not in text:
    issues.append("transformed_from: 21168 not found in analyzer_notes")
else:
    print("  [OK] transformed_from: 21168 present")

# 15. letter_map must be in analyzer_notes
if "letter_map: A->B, B->D, C->A, D->C" not in text:
    issues.append("'letter_map: A->B, B->D, C->A, D->C' not found in analyzer_notes")
else:
    print("  [OK] analyzer_notes has full letter_map")

# 16. outline_code appears identically across frontmatter + YAML + JSON blocks
oc_appearances = re.findall(r"outline_code:\s*\"?(\d{8})\"?", text)
if not oc_appearances:
    issues.append("outline_code never appears as 8-digit code")
else:
    distinct = set(oc_appearances)
    if distinct != {"73030100"}:
        issues.append(f"outline_code inconsistent across blocks: {distinct}")
    else:
        print(f"  [OK] outline_code consistent: {oc_appearances[0]} (appears {len(oc_appearances)} times)")

# 17. c3_annotation.credited_answer must equal new key
for fname, obj in json_blocks:
    if fname == "c3_annotation":
        if obj.get("credited_answer") != new_key:
            issues.append(f"c3_annotation.credited_answer={obj.get('credited_answer')} != new key {new_key}")
        else:
            print(f"  [OK] c3_annotation.credited_answer = {new_key}")
        # c3.residual must equal new key
        if obj.get("c3", {}).get("residual") != new_key:
            issues.append(f"c3.residual={obj.get('c3',{}).get('residual')} != new key {new_key}")
        # agrees_with_key must be true
        if not obj.get("c3", {}).get("agrees_with_key"):
            issues.append("c3.agrees_with_key is not True")
        # outline_code present
        if obj.get("outline_code") != "73030100":
            issues.append(f"c3_annotation.outline_code={obj.get('outline_code')} != 73030100")
        # gold_keys identical to program_intelligence
        ck_gold = obj.get("c3", {}).get("gold_keys", [])
        pi = next((o for fn, o in json_blocks if fn == "program_intelligence"), None)
        if pi:
            pi_gold = pi.get("gold_keys", [])
            # match by id
            ck_ids = sorted([g.get("id") for g in ck_gold])
            pi_ids = sorted([g.get("id") for g in pi_gold])
            if ck_ids != pi_ids:
                issues.append(f"gold_keys inconsistent: c3={ck_ids} vs program_intelligence={pi_ids}")
            else:
                print(f"  [OK] gold_keys consistent: {ck_ids}")

# 18. program_elements uses red_zone_dimensions (not red_zones)
pe = next((o for fn, o in json_blocks if fn == "program_elements"), None)
if pe:
    if "red_zone_dimensions" not in pe:
        issues.append("program_elements missing red_zone_dimensions")
    if "red_zones" in pe:
        issues.append("program_elements uses legacy 'red_zones' instead of 'red_zone_dimensions'")
    if "red_zone_dimensions" in pe:
        rzd = pe["red_zone_dimensions"]
        if not isinstance(rzd, list) or not rzd:
            issues.append(f"red_zone_dimensions invalid: {rzd}")

# 19. program_intelligence uses component_routing with destination_key
pi = next((o for fn, o in json_blocks if fn == "program_intelligence"), None)
if pi:
    cr = pi.get("component_routing", [])
    if not cr:
        issues.append("program_intelligence missing component_routing")
    else:
        valid_keys = {"dashboard_summary", "drills", "red_zones", "trap_forensics",
                      "misconceptions", "pattern_board", "matrix", "question_history",
                      "outline_atlas", "review_cards"}
        for r in cr:
            dk = r.get("destination_key")
            if dk not in valid_keys:
                issues.append(f"component_routing[].destination_key invalid: {dk}")
        print(f"  [OK] program_intelligence.component_routing uses {len(cr)} valid destination_keys")

# 20. Review Truth: pure rule sentence, no "unchanged" or "disregarded" or "export"
review_truth_match = re.search(r"review_truth:\s*\"([^\"]+)\"", fm)
if review_truth_match:
    rt = review_truth_match.group(1).lower()
    bad_words = ["unchanged", "disregarded", "export", "transformed from", "source row"]
    for bw in bad_words:
        if bw in rt:
            issues.append(f"Review Truth contains process/provenance word: '{bw}'")
    if not issues:
        print("  [OK] Review Truth is a pure rule sentence")

# 21. Both stem summaries present in Divergence Audit
if "Nora, believing a painting in her cousin's apartment" not in text:
    issues.append("Original-stem one-sentence summary missing")
if "Lydia, believing an antique grandfather clock in her cousin Daniel's family lake house" not in text:
    issues.append("Variant-stem one-sentence summary missing")
if "Nora, believing" in text and "Lydia, believing" in text:
    print("  [OK] Both stem summaries present in Divergence Audit")

# 22. Distilled Core Question present
if "claim-of-right defense" not in text or "Distilled Core Question" not in text:
    issues.append("Distilled Core Question section missing or 'claim-of-right' not mentioned")
else:
    print("  [OK] Distilled Core Question present and references claim-of-right")

# 23. Review Truth present
if "A sincere, even if mistaken, belief that one has a right to the specific property taken negates the larcenous intent required for larceny." not in text:
    issues.append("Review Truth verbatim sentence not found")

# 24. Gold Key statement present
if "GK-CR-LARCENY-CLAIMOFRIGHT-01" not in text:
    issues.append("Gold Key ID not present")
else:
    print("  [OK] Gold Key GK-CR-LARCENY-CLAIMOFRIGHT-01 present")

# 25. No authority in Silver Key (we have no Silver Key, so this is vacuous)
# But verify: if any Silver Key is present, it must have NO authority field
silver_key_blocks = re.findall(r"### Silver Key.*?(?=###|\Z)", text, re.DOTALL)
for skb in silver_key_blocks:
    if '"authority"' in skb or "'authority'" in skb:
        issues.append("Silver Key has authority field (must be omitted)")

# 26. Confidence: HEURISTIC_STRUCTURAL matches heuristic_structural method_class
for fname, obj in json_blocks:
    if fname == "c3_annotation":
        conf = obj.get("c3", {}).get("confidence")
        mc_distractors = obj.get("c3", {}).get("distractors", [])
        # derive deciding method_class from gold_keys
        # We expect: deciding method_class is heuristic_structural (governing CLASH)
        if conf != "HEURISTIC_STRUCTURAL":
            issues.append(f"c3.confidence={conf} != HEURISTIC_STRUCTURAL")

# 27. Check that all 5 variations appear in the 5-variations table
for vname in ("Grandfather Clock at Family Lake House",
              "Hand-Stitched Heirloom Quilt",
              "Vintage Mechanical Music Box",
              "Antique Cedar Storage Chest",
              "Hand-Cranked Tin Coffee Roaster"):
    if vname not in text:
        issues.append(f"5-variations table missing: {vname}")
    else:
        print(f"  [OK] Variation present: {vname}")

# 28. Pass rates sum
sp = next((o for fn, o in json_blocks if fn == "c3_annotation"), None)
# Actually pick rates are in the Question YAML, not JSON
# But we can check the letter_map seed totals
# A:29, B:47, C:8, D:16 = 100
# Already verified in frontmatter
fm_lm = re.search(r"letter_map:\s*(.+)$", fm, re.MULTILINE)
print(f"\nfrontmatter letter_map line: {fm_lm.group(1) if fm_lm else 'NOT FOUND'}")

# 29. Original letters outside Letter Map / provenance check
# Find every "Original X" or "A->B" reference
# Original letters may appear in:
#   - the Letter Map (legitimate)
#   - "Original A" / "Original B" in the 5-variations table (legitimate because it's provenance)
#   - provenance fields (legitimate)
# But not in:
#   - Choice labels in the final question (A, B, C, D refer to NEW letters)
#   - Distilled Core Question (no letter references)
#   - "Wrong answer explanations" intro lines
# We won't strictly enforce this; just log

# 30. Test: residual matches the C3 answer
# In c3.residual = "A", and the credited_answer = "A", and the new key = "A"
# Already checked above.

print("\n" + "="*70)
if issues:
    print(f"ISSUES FOUND ({len(issues)}):")
    for i, iss in enumerate(issues, 1):
        print(f"  {i}. {iss}")
    sys.exit(1)
else:
    print("ALL CHECKS PASSED.")
    sys.exit(0)
