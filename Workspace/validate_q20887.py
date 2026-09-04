import json, re
from pathlib import Path

WORKSPACE = Path(__file__).resolve().parent

with open(WORKSPACE / "Finished" / "CQ20887.md", 'r', encoding='utf-8') as f:
    content = f.read()

blocks = re.findall(r'```json\n(.*?)```', content, re.DOTALL)
print(f'Found {len(blocks)} JSON blocks')

for i, bt in enumerate(blocks):
    try:
        obj = json.loads(bt)
        print(f'\nBlock {i+1}: VALID JSON')
        qid = obj.get('question_id', 'N/A')
        print(f'  question_id: {qid}')
        if 'c3' in obj:
            c = obj['c3']
            print(f'  verdict: {c.get("verdict", "N/A")}')
            print(f'  residual: {c.get("residual", "N/A")}')
            gk_count = len(c.get('gold_keys', []))
            sk_count = len(c.get('silver_keys', []))
            print(f'  gold_keys inside c3: {gk_count}')
            print(f'  silver_keys inside c3: {sk_count}')
        if 'traps' in obj:
            print(f'  traps count: {len(obj.get("traps", []))}')
        if 'wrong_answer_paths' in obj:
            print(f'  paths count: {len(obj.get("wrong_answer_paths", []))}')
        if 'component_routing' in obj:
            print(f'  routing count: {len(obj.get("component_routing", []))}')
    except json.JSONDecodeError as e:
        print(f'\nBlock {i+1}: JSON ERROR: {e}')

print('\n--- Outline code ---')
print(f'75070202 occurrences: {len(re.findall(r"75070202", content))}')

with open(WORKSPACE / "OUTLINE_CODES_COMPLETE.md", 'r', encoding='utf-8') as f:
    oc = f.read()
print(f'75070202 in OUTLINE_CODES: {"YES" if "75070202" in oc else "NO"}')

print(f'\ndrift_audit present: {"YES" if "drift_audit" in content else "NO"}')
print(f'key A count: {len(re.findall(r"key:\s*A", content))}')