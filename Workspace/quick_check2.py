# -*- coding: utf-8 -*-
import json, re, sys, io
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

c = open(r'C:\FOC\Workspace\Finished\CQ14884.md', 'r', encoding='utf-8').read()

# Check heading exact match
headings = ['### 1. Question YAML', '### 2. The 17-section student case study',
            '### 3. c3_annotation', '### 4. program_elements', '### 5. program_intelligence']
for h in headings:
    found = h in c
    print(f'Heading "{h}": {"FOUND" if found else "MISSING"}')

# Check analyzer_notes
matches = re.findall(r'```json\s*([\s\S]*?)```', c)
p = json.loads(matches[0].strip())
an = p['c3']['analyzer_notes']
print('\nanalyzer_notes:')
for k, v in an.items():
    v_str = str(v)[:120].encode('ascii', 'replace').decode('ascii')
    print(f'  {k}: {v_str}')

# Check difficulty
diff = p['c3'].get('difficulty', 'NOT SET')
is_code = bool(re.match(r'^\d{8}$', str(diff)))
print(f'\ndifficulty: {diff}')
print(f'difficulty looks like outline code: {is_code}')

# Check Review Truth purity
rt_match = re.search(r'## 13\. Review Truth\s*\n([^\n#]+)', c)
if rt_match:
    rt = rt_match.group(1).strip()
    print(f'\nReview Truth: {rt[:120]}')
    forbidden = ['source', 'export', 'unchanged', 'disregarded', 'original row']
    for f in forbidden:
        if f.lower() in rt.lower():
            print(f'  WARNING: contains "{f}"')

# Check old-stem summary
div_match = re.search(r'Original stem \(one sentence\):\s*([^\n]+)', c)
if div_match:
    old = div_match.group(1).strip()
    print(f'\nOld stem summary: {old[:120]}')
    for word in ['bookshop', 'Lydia', 'Barnabas', 'supplier', 'register']:
        if word.lower() in old.lower():
            print(f'  WARNING: contains variant word "{word}"')

# Check variant-stem summary
var_match = re.search(r'Variant stem \(one sentence\):\s*([^\n]+)', c)
if var_match:
    var = var_match.group(1).strip()
    print(f'Variant stem summary: {var[:120]}')

# Check letter_map in frontmatter
fm_match = re.search(r'letter_map:\s*(.+)', c)
if fm_match:
    print(f'\nFrontmatter letter_map: {fm_match.group(1).strip()[:100]}')

# Check letter_map in analyzer_notes
lm = an.get('letter_map', '')
print(f'analyzer_notes letter_map: {str(lm)[:100]}')

# Check dominant_trap
dt = an.get('dominant_trap', '')
print(f'analyzer_notes dominant_trap: {str(dt)[:80]}')

# Check difficulty_source_defect
dsd = an.get('difficulty_source_defect', 'NOT PRESENT')
print(f'analyzer_notes difficulty_source_defect: {dsd}')

print('\nAll checks done.')
