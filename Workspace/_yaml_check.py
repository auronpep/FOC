import re, sys
try:
    import yaml
except ImportError:
    print("PyYAML not installed; skipping YAML parse check")
    sys.exit(0)

text = open(r'Finished\CQ21168.md', encoding='utf-8').read()
# Find the Question YAML block
m = re.search(r'### 1\. Question YAML\s*\n```yaml\s*\n(.*?)\n```', text, re.DOTALL)
if not m:
    print("Question YAML block not found")
    sys.exit(1)
raw = m.group(1)
try:
    obj = yaml.safe_load(raw)
    print(f"VALID YAML, {len(yaml.safe_dump(obj))} bytes serialized")
    print(f"Top-level keys: {list(obj.keys())}")
    # check selection_percentages
    sp = obj.get("barmatrix_row", {}).get("selection_percentages", {})
    print(f"selection_percentages: {list(sp.keys())}")
    total = sum(v.get("pct", 0) for v in sp.values())
    print(f"Pick rate sum: {total}")
    # check that all provenances are predicted (no measured rates)
    all_predicted = all(v.get("provenance") == "predicted" for v in sp.values())
    print(f"All predicted (no measured): {all_predicted}")
    # check letter_map
    lm = obj.get("transform_provenance", {}).get("letter_map", [])
    print(f"letter_map entries: {len(lm)}")
    for entry in lm:
        if entry.get("dominant_trap"):
            print(f"  dominant_trap row: {entry.get('original_letter')} -> {entry.get('new_letter')}")
except yaml.YAMLError as e:
    print(f"INVALID YAML — {e}")
    sys.exit(1)
