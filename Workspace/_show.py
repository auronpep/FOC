import re
text = open(r'Finished\CQ21168.md', encoding='utf-8').read()
m = re.search(r'### 1\. Question YAML\s*\n```yaml\s*\n(.*?)\n```', text, re.DOTALL)
raw = m.group(1)
lines = raw.splitlines()
print(f"Total YAML lines: {len(lines)}")
for i in range(170, min(len(lines), 200)):
    print(f"{i+1:3}: {lines[i]!r}")
