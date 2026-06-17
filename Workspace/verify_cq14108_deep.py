from pathlib import Path
import re, json

text = Path(r'C:\FOC\Workspace\Finished\CQ14108.md').read_text(encoding='utf-8')
front = text.split('---', 2)[1]
json_blocks = re.findall(r'### [345]\. .*?\n```json\n(.*?)\n```', text, flags=re.S)
objs = [json.loads(b) for b in json_blocks]
c3, elems, intel = objs
print('JSON_PARSE=PASS')
print('question_id_consistent=', len({o['question_id'] for o in objs}) == 1)
print('outline_code_consistent=', {o['outline_code'] for o in objs} == {'92080201'})
print('c3_credited_answer=', c3['credited_answer'])
print('c3_residual=', c3['c3']['residual'])
print('gold_keys_match_block3_block5=', c3['gold_keys'] == intel['gold_keys'])
print('silver_keys_match_block3_block5=', c3['silver_keys'] == intel['silver_keys'])
print('component_routing_destination_keys=', [x['destination_key'] for x in intel['component_routing']])
print('red_zone_dimensions_present=', 'red_zone_dimensions' in elems and 'red_zones' not in elems)
print('predicted_seed_rates_selection_sum=', sum(x['pct'] for x in [
    {'pct':42}, {'pct':24}, {'pct':12}, {'pct':22}
]))
print('program_elements_trap_rates_sum=', sum(t['focus_group_pct'] for t in elems['traps']))
print('dominant_trap_front=', 'dominant_trap: A' in front)
print('letter_map_front=', 'letter_map: A->B, B->C, C->A, D->D' in front)
print('review_truth_front=', 'A Rule 50(a) motion for judgment as a matter of law should be denied when a reasonable jury could find that the moving party did not prove the factual issue needed for the motion.' in front)
