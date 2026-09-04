import re, yaml, json
from pathlib import Path

with open(Path(__file__).resolve().parent / 'CQ15088.md', 'r', encoding='utf-8') as f:
    content = f.read()

# Extract YAML block
pattern = r'```yaml\s*([\s\S]*?)\s*```'
blocks = re.findall(pattern, content)
for i, block in enumerate(blocks):
    try:
        data = yaml.safe_load(block)
        print('YAML Block %d: VALID - top keys: %s' % (i+1, list(data.keys())[:10]))
    except yaml.YAMLError as e:
        print('YAML Block %d: INVALID - %s' % (i+1, e))

print('Total YAML blocks found: %d' % len(blocks))

# Verify frontmatter
frontmatter_match = re.match(r'^---\s*\n([\s\S]*?)\n---', content)
if frontmatter_match:
    try:
        fm = yaml.safe_load(frontmatter_match.group(1))
        print('Frontmatter VALID - keys: %s' % list(fm.keys()))
        print('outline_code: %s' % fm.get('outline_code'))
        print('key: %s' % fm.get('key'))
        print('original_key: %s' % fm.get('original_key'))
    except yaml.YAMLError as e:
        print('Frontmatter INVALID: %s' % e)

# Check all 5 Pass-2 blocks present
required_headings = [
    '### 1. Question YAML',
    '### 2. The 17-section student case study',
    '### 3. c3_annotation',
    '### 4. program_elements',
    '### 5. program_intelligence'
]
for h in required_headings:
    if h in content:
        print('FOUND: %s' % h)
    else:
        print('MISSING: %s' % h)

# Key consistency check
import re as re2
keys_found = []
# Frontmatter key
fm_key = re2.search(r'^key:\s*(\S+)', content, re2.MULTILINE)
if fm_key:
    keys_found.append(('frontmatter key', fm_key.group(1)))
# Correct answer line
ca = re2.search(r'\*\*C\*\* \(original key: (\w)\)', content)
if ca:
    keys_found.append(('correct answer line', 'C (orig %s)' % ca.group(1)))

for label, val in keys_found:
    print('%s: %s' % (label, val))

# Check pick rates sum to ~100
pcts = re2.findall(r'focus_group_pct[\":\s]+(\d+)', content)
if pcts:
    total = sum(int(p) for p in pcts)
    print('Trap pick rates sum: %d (target ~100)' % total)

# Check all outline codes are identical
oc_codes = re2.findall(r'outline_code[\":\s]+(\d{8}|00000000)', content)
unique_oc = set(oc_codes)
if len(unique_oc) == 1:
    print('Outline code consistent: %s' % unique_oc.pop())
else:
    print('Outline code INCONSISTENT: %s' % unique_oc)

# Check dominant trap flagged
if 'dominant_trap' in content.lower() or 'DOMINANT TRAP' in content:
    print('Dominant trap: FLAGGED')
else:
    print('Dominant trap: NOT FLAGGED')

# Check Gold Key present
if 'GK-TORTS-TC-01' in content:
    print('Gold Key: PRESENT')
else:
    print('Gold Key: MISSING')

# Check Divergence Audit present
if 'Divergence Audit' in content:
    print('Divergence Audit: PRESENT')
else:
    print('Divergence Audit: MISSING')

# Check 5 variations
if 'Variation 5' in content:
    print('5 Variations: PRESENT')
else:
    print('5 Variations: MISSING')

# Check Letter Map present
if 'Letter Map' in content:
    print('Letter Map: PRESENT')
else:
    print('Letter Map: MISSING')

# Check Review Truth present
if 'Review Truth' in content:
    print('Review Truth: PRESENT')
else:
    print('Review Truth: MISSING')

# Check red_zone_dimensions (not red_zones)
if 'red_zone_dimensions' in content:
    print('red_zone_dimensions: PRESENT (correct field name)')
else:
    print('red_zone_dimensions: MISSING')

print('\n=== VALIDATION COMPLETE ===')
