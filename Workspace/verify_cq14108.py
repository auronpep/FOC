from pathlib import Path
import re
import json

p = Path(r'C:\FOC\Workspace\Finished\CQ14108.md')
text = p.read_text(encoding='utf-8')
front = text.split('---', 2)[1]
blocks = re.findall(r'### [345]\. .*?\n```json\n(.*?)\n```', text, flags=re.S)
print(f'json_blocks={len(blocks)}')
for i, b in enumerate(blocks, 1):
    obj = json.loads(b)
    print(f'block_{i}: question_id={obj.get("question_id")} outline={obj.get("outline_code")} credited={obj.get("credited_answer") or "n/a"}')

print('front_has_qid=', 'qid: 14108_ebike_delivery_sign' in front)
print('front_key_C=', 'key: C' in front)
print('front_outline_92080201=', 'outline_code: "92080201"' in front)

rates = re.findall(r'pct: (\d+)', text)
print('pct_values=', rates, 'sum=', sum(map(int, rates)))

allowed = {'dashboard_summary','drills','red_zones','trap_forensics','misconceptions','pattern_board','matrix','question_history','outline_atlas','review_cards'}
dests = re.findall(r'"destination_key":\s*"([^"]+)"', text)
print('destinations=', dests, 'all_allowed=', all(d in allowed for d in dests))

print('c3_credited_C=', '"credited_answer": "C"' in text)
print('program_resid_C=', '"residual": "C"' in text)
review_truth = 'A Rule 50(a) motion for judgment as a matter of law should be denied when a reasonable jury could find that the moving party did not prove the factual issue needed for the motion.'
print('review_truth_present=', review_truth in text)
