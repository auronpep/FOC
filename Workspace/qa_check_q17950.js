const fs = require('fs');
const content = fs.readFileSync('C:\\FOC\\Workspace\\Finished\\CQ17950.md', 'utf8');
const lines = content.split('\n');

console.log('=== QA CHECKLIST ===\n');

// 1. Frontmatter present
console.log('1. Frontmatter: ' + (content.startsWith('---') ? 'YES' : 'MISSING'));

// 2. YAML frontmatter fields
// CQ files use CRLF endings; an LF-only anchor here skips the whole check.
const fm = content.match(/^---\r?\n([\s\S]*?)\r?\n---/);
if(fm) {
  const fields = ['qid:', 'transformed_from:', 'subject:', 'topic:', 'subtopic:', 'outline_code:', 'key:', 'original_key:', 'letter_map:', 'dominant_trap:', 'pick_rates:', 'bank_validation_verdict:', 'review_truth:'];
  let missing = [];
  fields.forEach(f => { if(!fm[1].includes(f)) missing.push(f); });
  console.log('2. Frontmatter fields missing: ' + (missing.length ? missing.join(', ') : 'NONE'));
}

// 3. All Pass-1 sections
const pass1Sections = [
  'Final question', 'Distilled Core Question', 'Final answer choices',
  'Correct answer', 'Letter Map', 'Right-answer explanation',
  'Wrong-answer explanations', 'Black-Letter Law Verification',
  'Rigor/difficulty', 'C3 Elimination Walkthrough', 'Divergence Audit',
  'Review Truth', '5 variations considered'
];
let missingSection = [];
pass1Sections.forEach(s => {
  const found = content.includes(s);
  if(!found) missingSection.push(s);
});
console.log('3. Pass-1 sections missing: ' + (missingSection.length ? missingSection.join(', ') : 'NONE'));

// 4. All five pass-2 blocks
const pass2Blocks = ['### 1. Question YAML', '### 2. The 17-section student case study', '### 3. c3_annotation', '### 4. program_elements', '### 5. program_intelligence'];
let missingBlocks = [];
pass2Blocks.forEach(b => { if(!content.includes(b)) missingBlocks.push(b); });
console.log('4. Pass-2 blocks missing: ' + (missingBlocks.length ? missingBlocks.join(', ') : 'NONE'));

// 5. Letter Map present
const letterMapLine = lines.findIndex(l => l.includes('| Original | New |'));
console.log('5. Letter Map table: ' + (letterMapLine >= 0 ? 'YES' : 'MISSING'));

// 6. Post-shuffle key consistency
let keyRefs = [];
lines.forEach((l, i) => {
  if(l.includes('official_key') || l.includes('credited_answer')) keyRefs.push('L' + (i+1) + ': ' + l.trim());
});
console.log('6. Key references:');
keyRefs.forEach(r => console.log('   ' + r));

// 7. Drift audit + transformed_from + letter_map in analyzer_notes
const drSrc = content.includes('drift_audit') && content.includes('transformed_from');
console.log('7. analyzer_notes: drift_audit + transformed_from: ' + (drSrc ? 'YES' : 'MISSING'));

// 8. Outline code consistency
const ocMatches = content.match(/72060202/g);
console.log('8. Outline code 72060202 occurrences: ' + (ocMatches ? ocMatches.length : 0));

// 9-10. Gold/Silver Keys
const block3Sec = content.match(/### 3\. c3_annotation[\s\S]*?(?=### 4)/);
const block5Sec = content.match(/### 5\. program_intelligence[\s\S]*?(?=\n```$|$)/);

if(block3Sec && block5Sec) {
  const gk3 = (block3Sec[0].match(/GK-CRIM/g) || []).length;
  const gk5 = (block5Sec[0].match(/GK-CRIM/g) || []).length;
  const sk3 = (block3Sec[0].match(/SK-CRIM/g) || []).length;
  const sk5 = (block5Sec[0].match(/SK-CRIM/g) || []).length;
  console.log('9. Gold Keys: Block3=' + gk3 + ' Block5=' + gk5 + ' - ' + (gk3 === gk5 ? 'MATCH' : 'MISMATCH'));
  console.log('10. Silver Keys: Block3=' + sk3 + ' Block5=' + sk5 + ' - ' + (sk3 === sk5 ? 'MATCH' : 'MISMATCH'));
}

// 11. Review Truth check
const rtMatches = content.match(/review_truth[^.]*\./g);
if(rtMatches) {
  const hasProcess = rtMatches.some(r => /(source|row|original|unchanged|disregard)/i.test(r));
  console.log('11. Review Truth pure rule (no process words): ' + (!hasProcess ? 'YES' : 'CHECK'));
}

// 12. Controlled vocab
const cvTerms = ['NOT_TRUE', 'NOT_RESPONSIVE', 'EAR_OVERCLAIM', 'EAR_FALSITY', 'EAR_DISTORTION', 
  'ISSUE_SENSE', 'tiered_absolute', 'flat_misstatement', 'half_truth', 'wrong_element',
  'hard_structural', 'C3_SOLVE', 'PASS', 'HARD_STRUCTURAL', 'CRIMINAL',
  'wrong_answer_architecture_tags', 'method_class', 'mold_code', 'mold_family',
  'HARD_STRUCTURAL', 'HEURISTIC_STRUCTURAL', 'ANCHOR_ASSISTED', 'PURE_ANCHOR', 'HUMAN_REVIEW'];
let cvMissing = [];
cvTerms.forEach(t => {
  if(!content.includes(t)) cvMissing.push(t);
});
console.log('12. Controlled vocab issues: ' + (cvMissing.length ? 'MISSING: ' + cvMissing.join(', ') : 'NONE (all found)'));

// 13. No original letters outside Letter Map/provenance
const origLetters = ['\"A\"', '\"B\"', '\"C\"', '\"D\"'];
let suspicious = [];
lines.forEach((l, i) => {
  if(l.includes('original_letter') || l.includes('Letter Map') || l.includes('letter_map') || 
     l.includes('original_key') || l.includes('LetterMap') || l.includes('analytics_hooks') ||
     l.includes('answer_array')) return;
  origLetters.forEach(ol => {
    if(l.includes(ol) && !l.includes('comment') && !l.trim().startsWith('#')) {
      // Check if this is within a provenance context
      if(!l.includes('transformed_from') && !l.includes('original_key') && !l.includes('letter_map') &&
         !l.includes('original_letter') && !l.includes('original_') && !l.includes('orig')) {
        suspicious.push('L' + (i+1) + ': ' + l.trim().substring(0,80));
      }
    }
  });
});
console.log('13. Suspicious original letter refs outside provenance: ' + (suspicious.length ? '\n    ' + suspicious.join('\n    ') : 'NONE (clean)'));

// 14. Recognition test summaries present
const sum1 = content.includes('Mary saw Hannah');
const sum2 = content.includes('Mei saw him');
console.log('14. Recognition test summaries present: old=' + sum2 + ' new=' + sum1);

// 15. program_elements uses red_zone_dimensions not red_zones
const peSection = content.match(/### 4\. program_elements[\s\S]*?(?=### 5)/);
if(peSection) {
  const hasRZ = peSection[0].includes('\"red_zone_dimensions\"');
  const hasLegacy = peSection[0].includes('\"red_zones\"');
  console.log('15. program_elements: red_zone_dimensions=' + (hasRZ ? 'OK' : 'MISSING') + ' red_zones(legacy)=' + (hasLegacy ? 'WARNING' : 'absent'));
}

// 16. Each distractor = 1 mold + 1 filter
console.log('16. Each distractor = 1 mold + 1 filter: check manual');

console.log('\n=== DONE ===');