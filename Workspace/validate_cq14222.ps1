import json, re, pathlib
p=pathlib.Path(r'C:\FOC\Workspace\Finished\CQ14222.md')
text=p.read_text(encoding='utf-8')
print('bytes', p.stat().st_size)
m=re.match(r'^---\n(.*?)\n---\n', text, re.S)
assert m, 'missing frontmatter'
fm={}
for line in m.group(1).splitlines():
    if ':' in line:
        k,v=line.split(':',1)
        fm[k.strip()]=v.strip().strip('"')
print('frontmatter key', fm.get('key'), 'outline', fm.get('outline_code'), 'dominant', fm.get('dominant_trap'))
assert fm['key']=='D'
assert fm['outline_code']=='97100400'
assert fm['dominant_trap']=='B'
blocks=re.findall(r'### [0-9]+\. ([^\n]+)\n```json\n(.*?)\n```', text, re.S)
print('json_blocks', [b[0] for b in blocks])
assert [b[0] for b in blocks]==['c3_annotation','program_elements','program_intelligence']
objs=[]
for name, body in blocks:
    obj=json.loads(body)
    objs.append((name,obj))
    print(name, 'parsed')
allowed={'dashboard_summary','drills','red_zones','trap_forensics','misconceptions','pattern_board','matrix','question_history','outline_atlas','review_cards'}
pi=objs[2][1]
for r in pi['component_routing']:
    assert r['destination_key'] in allowed, r
print('routing_keys_ok')
qr=objs[1][1]['pick_rates']
assert sum(v['pct'] for v in qr.values())==100
print('pick_rates_sum', sum(v['pct'] for v in qr.values()))
assert objs[0][1]['credited_answer']=='D'
assert objs[0][1]['outline_code']=='97100400'
assert objs[1][1]['official_key']=='D'
assert objs[2][1]['official_key']=='D'
assert objs[0][1]['c3']['residual']=='D'
assert objs[0][1]['gold_keys']==objs[2][1]['gold_keys']
assert objs[0][1]['silver_keys']==objs[2][1]['silver_keys']
print('gold_silver_identical')
allowed_filters={'NOT_TRUE','NOT_RESPONSIVE'}
allowed_molds={'tiered_absolute','fabricated_rule','extreme_of_range','backwards','contradiction','flat_misstatement','half_truth','colloquialism','even_split','autonomy_appeal','misfit','bait_doctrine','wrong_element'}
allowed_method={'hard_structural','heuristic_structural','anchor_assisted','pure_anchor','anchor_gap','legal_leak','needs_stem','needs_human'}
for choice,diag in objs[1][1]['choice_diagnostics'].items():
    if choice=='D':
        assert diag['filter_broken'] is None and diag['mold_code'] is None
    else:
        assert diag['filter_broken'] in allowed_filters
        assert diag['mold_code'] in allowed_molds
        assert diag['method_class'] in allowed_method
print('controlled_values_ok')
print('VALIDATION PASSED')
