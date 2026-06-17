import json, io, sys
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')
with open(r'C:\FOC\Workspace\Finished\CQ19703.md', encoding='utf-8') as f:
    text = f.read()
idx = text.find('### 3. c3_annotation')
fence = '```json'
start = text.find(fence, idx) + len(fence)
end = text.find('```', start)
body = text[start:end].strip()
obj = json.loads(body)
print('top-level keys:', list(obj.keys()))
print('credited_answer (top):', obj.get('credited_answer'))
c3 = obj.get('c3', {})
print('c3.credited_answer:', c3.get('credited_answer'))
print('c3.verdict:', c3.get('verdict'))
print('c3.residual:', c3.get('residual'))
print('agrees_with_key:', c3.get('agrees_with_key'))
