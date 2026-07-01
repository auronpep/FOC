import re, json, sys
text = open(r'Finished\CQ21168.md', encoding='utf-8').read()
# Find all ```json ... ``` blocks
for m in re.finditer(r'```json\s*\n(.*?)\n```', text, re.DOTALL):
    print('---JSON BLOCK---')
    raw = m.group(1)
    print(f"Length: {len(raw)} bytes")
    try:
        obj = json.loads(raw)
        print(f"VALID JSON, {len(json.dumps(obj))} bytes serialized")
        if isinstance(obj, dict):
            print(f"  top-level keys: {list(obj.keys())}")
    except json.JSONDecodeError as e:
        print(f"INVALID — {e}")
        # show context
        lines = raw.splitlines()
        ln = e.lineno - 1
        col = e.colno - 1
        print(f"Error at line {ln+1}, col {col+1}")
        for i in range(max(0, ln - 2), min(len(lines), ln + 3)):
            print(f"  line {i+1}: {lines[i]!r}")
    print()
