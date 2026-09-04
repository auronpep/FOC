const fs = require('fs');
const path = require('path');

// Default to the copy committed in this repo; allow an override argument.
const target = process.argv[2] || path.join(__dirname, '..', 'Finished', 'CQ14881.md');
const s = fs.readFileSync(target, 'utf8');

const checks = [];

// 1. Frontmatter consistency
const fm = s.match(/^---\s*([\s\S]*?)---/m);
if (fm) {
  const fmBody = fm[1];
  checks.push({name: 'frontmatter qid matches', pass: /qid:\s*14881_prize_bull_breeding_record/.test(fmBody)});
  checks.push({name: 'frontmatter transformed_from', pass: /transformed_from:\s*14881/.test(fmBody)});
  checks.push({name: 'frontmatter key C', pass: /key:\s*C/.test(fmBody)});
  checks.push({name: 'frontmatter original_key D', pass: /original_key:\s*D/.test(fmBody)});
  checks.push({name: 'frontmatter letter_map', pass: /letter_map:\s*A->D,\s*B->A,\s*C->B,\s*D->C/.test(fmBody)});
  checks.push({name: 'frontmatter dominant_trap D', pass: /dominant_trap:\s*D/.test(fmBody)});
  checks.push({name: 'frontmatter outline_code', pass: /outline_code:\s*32020405/.test(fmBody)});
  checks.push({name: 'frontmatter subject EVIDENCE', pass: /subject:\s*EVIDENCE/.test(fmBody)});
  checks.push({name: 'frontmatter bank_validation PASS', pass: /bank_validation_verdict:\s*PASS/.test(fmBody)});
}

// 2. Pass-1 sections present
const requiredSections = [
  'Final question',
  'Distilled Core Question',
  'Final answer choices',
  'Correct answer',
  'Letter Map',
  'right-answer explanation',
  'wrong-answer explanations',
  'black-letter-law verification',
  'C3 elimination walkthrough',
  'Divergence Audit',
  'Review Truth',
  '5 variations'
];
for (const sec of requiredSections) {
  checks.push({name: 'Pass-1 section: ' + sec, pass: s.includes(sec)});
}

// 3. Pass-2 blocks with proper headings
checks.push({name: 'Pass-2 Question YAML heading', pass: s.includes('### 1. Question YAML')});
checks.push({name: 'Pass-2 17-section case study heading', pass: s.includes('### 2. The 17-section student case study')});
checks.push({name: 'Pass-2 c3_annotation heading', pass: s.includes('### 3. c3_annotation')});
checks.push({name: 'Pass-2 program_elements heading', pass: s.includes('### 4. program_elements')});
checks.push({name: 'Pass-2 program_intelligence heading', pass: s.includes('### 5. program_intelligence')});

// 4. Pass-2 17 sections
const sec17 = ['program_frame','student_access_test','question_data','distilled_core_question','call_and_prediction','trigger_facts','governing_c3_lane','choice_by_choice_walkthrough','residual_answer','legal_leak_audit','final_student_script','remediation_card','qa_checklist','wrong_answer_recovery_paths','outline_mastery_map','crossover_intersection_map','review_truth'];
for (const sec of sec17) {
  checks.push({name: '17-section: ' + sec, pass: s.includes('## ' + sec) || s.includes(sec)});
}

// 5. drift_audit, transformed_from, letter_map in analyzer_notes
const anMatch = s.match(/"analyzer_notes":\s*"([\s\S]*?)"/);
if (anMatch) {
  const an = anMatch[1];
  checks.push({name: 'analyzer_notes has drift_audit', pass: an.includes('drift_audit:')});
  checks.push({name: 'analyzer_notes has transformed_from: 14881', pass: an.includes('transformed_from: 14881')});
  checks.push({name: 'analyzer_notes has letter_map', pass: an.includes('letter_map:')});
}

// 6. Outline code consistent across blocks
const oc32020405 = (s.match(/32020405/g) || []).length;
checks.push({name: 'outline_code 32020405 appears in multiple blocks', pass: oc32020405 >= 5});

// 7. Gold Keys and Silver Keys consistent between Block 3 and Block 5
const gkEVID1 = (s.match(/GK-EVID-CHAR-REBUTTAL-01/g) || []).length;
checks.push({name: 'Gold Key GK-EVID-CHAR-REBUTTAL-01 consistent (Block 3 and 5)', pass: gkEVID1 >= 2});
const skEVID1 = (s.match(/SK-EVID-FORM-OF-PROOF-01/g) || []).length;
checks.push({name: 'Silver Key SK-EVID-FORM-OF-PROOF-01 consistent (Block 3 and 5)', pass: skEVID1 >= 2});

// 8. Pick rates sum to 100
const pickPcts = [...s.matchAll(/pick_rate:\s*pct:\s*(\d+)/g)].map(m => Number(m[1]));
const sumCheck = pickPcts.reduce((a, b) => a + b, 0);
checks.push({name: 'pick rates sum 100 (read ' + pickPcts.length + ': ' + (pickPcts.join('+') || 'none') + ')', pass: pickPcts.length === 4 && sumCheck === 100});

// 9. Dominant trap named in letter map
checks.push({name: 'Dominant trap D in letter map', pass: /dominant_trap:\s*true/.test(s) && /new_letter:\s*D[\s\S]{0,500}dominant_trap:\s*true/.test(s)});

// 10. red_zone_dimensions (not red_zones)
checks.push({name: 'red_zone_dimensions used (not red_zones)', pass: s.includes('red_zone_dimensions')});

// 11. component_routing uses destination_key objects
checks.push({name: 'component_routing has destination_key', pass: s.includes('destination_key:')});

// 12. Both stem summaries present
checks.push({name: 'original_stem_one_sentence present', pass: s.includes('original_stem_one_sentence:')});
checks.push({name: 'variant_stem_one_sentence present', pass: s.includes('variant_stem_one_sentence:')});

// 13. Review Truth is a single pure rule sentence
const reviewTruthMatch = s.match(/review_truth:\s*"([^"]+)"/);
if (reviewTruthMatch) {
  const rt = reviewTruthMatch[1].toLowerCase();
  checks.push({name: 'Review Truth purity (no process commentary)', pass: !/unchanged|disregarded|export|artifact|original|source row/.test(rt)});
}

// 14. Frontmatter is item 0
checks.push({name: 'Frontmatter at top (item 0)', pass: s.startsWith('---')});

// 15. c3_annotation has key consistent (C)
const c3key = s.match(/"credited_answer":\s*"([A-D])"/);
checks.push({name: 'c3_annotation credited_answer is C', pass: c3key && c3key[1] === 'C'});

// Print results
let passCount = 0;
for (const c of checks) {
  const mark = c.pass ? 'PASS' : 'FAIL';
  if (c.pass) passCount++;
  console.log('[' + mark + '] ' + c.name);
}
console.log('---');
console.log(passCount + '/' + checks.length + ' checks pass');

// Exit non-zero on failure so this can gate a batch run.
process.exit(passCount === checks.length ? 0 : 1);
