import json
with open(r'C:\FOC\Workspace\Finished\CQ20502.md', encoding='utf-8') as f:
    text = f.read()
idx = text.find('### 3. c3_annotation')
fence = '```json'
start = text.find(fence, idx) + len(fence)
end = text.find('```', start)
body = text[start:end].strip()
obj = json.loads(body)
c3 = obj.get('c3', {})
print('top-level keys:', list(obj.keys()))
print('c3 keys:', list(c3.keys()))
print('c3.credited_answer:', repr(c3.get('credited_answer')))
print('c3.verdict:', c3.get('verdict'))
print('c3.residual:', c3.get('residual'))
print('agrees_with_key:', c3.get('agrees_with_key'))
print('---drift_audit---')
print(c3.get('analyzer_notes', {}).get('drift_audit'))
print('---letter_map---')
print(c3.get('analyzer_notes', {}).get('letter_map'))
print('---gold_keys---')
for gk in c3.get('gold_keys', []):
    print(' id:', gk.get('id'), '/ type:', gk.get('type'), '/ tested_choice:', gk.get('tested_choice'))
print('---silver_keys---')
for sk in c3.get('silver_keys', []):
    print(' id:', sk.get('id'), '/ type:', sk.get('type'))
print('---distractors---')
for d in c3.get('distractors', []):
    print(' choice:', d.get('choice'), '/ filter:', d.get('filter_broken'), '/ mold:', d.get('mold'))
