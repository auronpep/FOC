# -*- coding: utf-8 -*-
import re, json, sys, io
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

with open(r'C:\FOC\Workspace\Finished\CQ14884.md', 'r', encoding='utf-8') as f:
    content = f.read()

# Check frontmatter
fm_match = re.match(r'^---\s*\n([\s\S]*?)\n---', content)
print("=== Frontmatter ===")
if fm_match:
    fm = fm_match.group(1)
    for line in fm.split('\n'):
        if ':' in line and not line.strip().startswith('#'):
            print("  " + line.strip()[:120])
else:
    print("  MISSING")

# Check all 5 blocks present
print("\n=== Block Headings ===")
for h in ['### 1. Question YAML', '### 2. The 17-section student case study',
          '### 3. c3_annotation', '### 4. program_elements', '### 5. program_intelligence']:
    found = h in content
    status = "FOUND" if found else "MISSING"
    print(f"  {h}: {status}")

# Parse all JSON blocks
pattern = r'```json\s*([\s\S]*?)```'
matches = re.findall(pattern, content)
print(f"\n=== JSON Blocks: {len(matches)} found ===")

all_gks = []
all_sks = []
all_dks = []
all_qids = []
all_ocs = []

for i, m in enumerate(matches):
    m = m.strip()
    p = json.loads(m)
    print(f"\nBlock {i+1}:")
    if 'question_id' in p:
        print(f"  question_id: {p['question_id']}")
        all_qids.append(p['question_id'])
    if 'outline_code' in p:
        print(f"  outline_code: {p['outline_code']}")
        all_ocs.append(p['outline_code'])
    if 'credited_answer' in p:
        print(f"  credited_answer: {p['credited_answer']}")

    # Gold keys
    gks = []
    if 'c3' in p and 'gold_keys' in p['c3']:
        gks = [gk['id'] for gk in p['c3']['gold_keys']]
    elif 'gold_keys' in p:
        gks = [gk['id'] for gk in p['gold_keys']]
    print(f"  gold_keys: {gks}")
    all_gks.append(set(gks))

    # Silver keys
    sks = []
    if 'c3' in p and 'silver_keys' in p['c3']:
        sks = [sk['id'] for sk in p['c3']['silver_keys']]
    elif 'silver_keys' in p:
        sks = [sk['id'] for sk in p['silver_keys']]
    print(f"  silver_keys: {sks}")
    all_sks.append(set(sks))

    # red_zone_dimensions
    if 'red_zone_dimensions' in p:
        print(f"  red_zone_dimensions: {p['red_zone_dimensions']}")
    if 'red_zones' in p:
        print(f"  WARNING: legacy 'red_zones' key found!")

    # component_routing
    if 'component_routing' in p:
        controlled = {'dashboard_summary', 'drills', 'red_zones', 'trap_forensics',
                      'misconceptions', 'pattern_board', 'matrix', 'question_history',
                      'outline_atlas', 'review_cards'}
        for cr in p['component_routing']:
            dk = cr['destination_key']
            valid = dk in controlled
            print(f"  destination_key: {dk} - {'VALID' if valid else 'INVALID'}")
            all_dks.append((dk, valid))

    # analyzer_notes
    if 'c3' in p and 'analyzer_notes' in p['c3']:
        an = p['c3']['analyzer_notes']
        print(f"  analyzer_notes keys: {list(an.keys())}")
        has_drift = 'drift_audit' in an
        has_tf = 'transformed_from' in an
        has_lm = 'letter_map' in an
        print(f"    drift_audit: {has_drift}, transformed_from: {has_tf}, letter_map: {has_lm}")

# Cross-block consistency
print("\n=== Cross-Block Consistency ===")
if len(set(all_qids)) == 1:
    print(f"  question_id: CONSISTENT ({all_qids[0]})")
elif len(set(all_qids)) > 1:
    print(f"  question_id: INCONSISTENT - {set(all_qids)}")
else:
    print("  question_id: no JSON blocks with question_id found")

if len(set(all_ocs)) == 1:
    print(f"  outline_code: CONSISTENT ({all_ocs[0]})")
elif len(set(all_ocs)) > 1:
    print(f"  outline_code: INCONSISTENT - {set(all_ocs)}")

# Gold key consistency
if len(all_gks) >= 2:
    for j in range(1, len(all_gks)):
        if all_gks[0] == all_gks[j]:
            print(f"  gold_keys block 1 vs block {j+1}: CONSISTENT")
        else:
            print(f"  gold_keys block 1 vs block {j+1}: INCONSISTENT")
            print(f"    Block 1: {all_gks[0]}")
            print(f"    Block {j+1}: {all_gks[j]}")

# Silver key consistency
if len(all_sks) >= 2:
    for j in range(1, len(all_sks)):
        if all_sks[0] == all_sks[j]:
            print(f"  silver_keys block 1 vs block {j+1}: CONSISTENT")
        else:
            print(f"  silver_keys block 1 vs block {j+1}: INCONSISTENT")

# destination_key validity
all_dk_valid = all(v for _, v in all_dks)
print(f"  All destination_keys valid: {all_dk_valid}")

print("\n=== FILE SIZE ===")
print(f"  {len(content)} bytes")

print("\n=== VALIDATION COMPLETE ===")
