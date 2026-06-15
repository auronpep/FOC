---
qid: 14676_church_youth_accusation
transformed_from: 14676
subject: CRIMINAL
topic: Homicide
subtopic: Manslaughter
outline_code: 74020102
key: C
original_key: A
letter_map: AC, BA, CB, DD
dominant_trap: A
pick_rates: inherited
bank_validation_verdict: PASS
review_truth: "A defendant is not guilty of manslaughter when the death is caused by an independent, voluntary intervening act (like the victim's suicide) that severs the defendant's proximate causation."
---

1) Final question  revised stem + call

Hannah, a high-school student active in her church youth group, was angry after her volunteer youth leader, Peter, told her he would fail her in a required credit course, preventing her graduation. Furious, Hannah falsely told the church pastor and the principal that Peter had inappropriately touched her. Peter was removed from his job and ostracized. About a year later, unable to get work because of the scandal, Peter killed himself. After confessing the lie, Hannah is charged with manslaughter. If Hannah is charged with manslaughter, her best defense would be that she

2) Distilled Core Question
Did Hannah commit any act that was a proximate cause of Peters death?

3) Final answer choices (post-shuffle AD)

A. did not intend to cause Peter's death.
B. did not act with malice.
C. committed no act that proximately caused Peter's death.
D. acted under extreme emotional distress.

4) (No replacement suggestions  original mechanics kept.)

5) Correct answer  C (original key A)

6) Letter Map (originalnew; mechanic; substance kept|rewritten; pick % + provenance)
- A  C : correct_answer ; substance kept ; 74% (inherited)  
- B  A : EAR_FALSITY.backwards (NOT_TRUE) ; substance kept ; 16% (inherited)   dominant trap (original B)  
- C  B : EAR_FALSITY.backwards (NOT_TRUE) ; substance kept ; 6% (inherited)  
- D  D : EAR_DISTORTION.half_truth (NOT_TRUE) ; substance kept ; 4% (inherited)

7) Full right-answer explanation (exam-register)
The proximate-cause requirement for criminal liability requires that the defendant's conduct be a legal cause of the death. Here the victim's voluntary suicide is an independent, intervening act that breaks the causal chain; Hannah's false report did not proximately cause Peter's death, so manslaughter liability fails. (Gold Key: none  this is a structural causation cut.)

8) Full wrong-answer explanations
A (now mapped to post-shuffle A)  Attractive move: reads like the common-sense defense that Hannah lacked intent to kill; why attractive: students conflate mens rea for murder with manslaughter. Breaker: Manslaughter focuses on causation and lack of malice/intent does not excuse liability only when the defendant's act proximately caused death; intent-to-kill is not required for manslaughter, so mere lack of intent does not answer causation. (filter: NOT_TRUE; mold: EAR_FALSITY.backwards)

B (post-shuffle B)  Attractive move: sounds like the statutory distinction between murder and manslaughter; why attractive: students think "no malice" is a free defense to homicide. Breaker: Manslaughter by definition lacks malice; denying malice doesn't negate causation  the correct legal question is whether defendant proximately caused the death. (filter: NOT_TRUE; mold: EAR_FALSITY.backwards)

D (post-shuffle D)  Attractive move: suggests extreme emotional distress excuses lethal outcomes; why attractive: students recall heat-of-passion doctrines. Breaker: Extreme emotional distress may mitigate murder to manslaughter but does not excuse liability where there is no proximate causal link; furthermore it does not create criminal responsibility where none exists through causation. (filter: NOT_TRUE; mold: EAR_DISTORTION.half_truth)

9) Black-letter-law verification & lawyer-confirmation
Black-letter: Criminal liability requires both actus reus and a causal link between defendants act and the prohibited result; an independent, voluntary, and informed intervening act (e.g., the victim's suicide) ordinarily breaks the causal chain and negates proximate cause. Lawyer confirmation: standard criminal-law doctrine treats a victim's free, voluntary suicide as a superseding intervening act that typically relieves the defendant of homicide liability (see leading criminal causation doctrines in treatises and case law); attorney_review: true (suggest human check for jurisdictional authorities and key cases).

10) Why variation preserves rigor/difficulty
Preserves the exact legal issue (proximate cause vs. superseding intervening act) and keeps the original distractor mechanics and pick-rate geometry; surface details changed strongly (church/youth-group cast, Biblical-name Hannah/Peter) so recognition is low while doctrine and trap pull remain identical.

11) C3 elimination walkthrough  CUT  CLASH  CALL
CUT: D is cut  extreme emotional distress is a mitigation for murder, not an answer to proximate-cause question here. B is also cut  "did not act with malice" misstates the relevant inquiry. CLASH: A vs C  both appeal to mens rea/causation confusion; axis = proximate cause vs mens rea. CALL: C wins because only C addresses proximate cause (the death was caused by an independent voluntary act).

12) Divergence Audit (Recognition-Kill Checklist; one line per item)
- Asset/subject matter: changed teacher  volunteer youth leader (changed)  
- Transaction frame: same interpersonal accusation frame (kept)  
- Specific lies/facts: changed workplace  church/youth program, same core false-accusation fact (changed)  
- All numbers: none to preserve (kept)  
- Fact ordering: reordered (changed)  
- Cast size/roles: renamed actors to Biblical names (changed)  
- Choice ordering: shuffled (changed)  
- Choice phrasing: paraphrased but preserved legal substance (changed)  
Recognition test: Original stem one-sentence  "Teenager lied that her history teacher fondled her; teacher later committed suicide; best defense is lack of proximate causation." Variant one-sentence  "Hannah falsely accused youth leader Peter; Peter later killed himself; best defense is lack of proximate causation." (They share only the rule.)

13) Review Truth (student-facing rule)
A defendant is not guilty of manslaughter when the victim's voluntary suicide is an independent intervening act that severs causal liability.

14) Five variations considered (titles, divergence score; recommended flagged)
- 1) "High-school Teacher" (minimal divergence)  score 1 (low)  
- 2) "Church Youth Accusation" (chosen)  score 5 (asset, cast, setting, ordering, phrasing changed)  RECOMMENDED  
- 3) "College Rumor"  score 3  
- 4) "Employment Reference Lie"  score 2  
- 5) "Online Defamation"  score 4

### 1. Question YAML
barmatrix_row:
  qid: "14676_church_youth_accusation"
  subject: "CRIMINAL"
  topic: "Homicide"
  subtopic: "Manslaughter"
  selection_percentages:
    A: { value: 16, provenance: "inherited" }
    B: { value: 6, provenance: "inherited" }
    C: { value: 74, provenance: "inherited" }
    D: { value: 4, provenance: "inherited" }
  official_key: "C"
  call: "If Hannah is charged with manslaughter, her best defense would be that she"
  choices:
    A: "did not intend to cause Peter's death."
    B: "did not act with malice."
    C: "committed no act that proximately caused Peter's death."
    D: "acted under extreme emotional distress."
transform_provenance:
  transformed_from: 14676
  variant_slug: "church_youth_accusation"
  original_key_letter: "A"
  new_key_letter: "C"
  letter_map:
    A: { original: "A", new: "C", mechanic: "correct_answer", substance: "kept", pick_rate: 74, provenance: "inherited" }
    B: { original: "B", new: "A", mechanic: "EAR_FALSITY.backwards", substance: "kept", pick_rate: 16, provenance: "inherited", dominant_trap: true }
    C: { original: "C", new: "B", mechanic: "EAR_FALSITY.backwards", substance: "kept", pick_rate: 6, provenance: "inherited" }
    D: { original: "D", new: "D", mechanic: "EAR_DISTORTION.half_truth", substance: "kept", pick_rate: 4, provenance: "inherited" }
  swap:
    performed: false
    replaced_original_letter: null
    reason: null
  divergence_summary:
    original_stem_one_sentence: "Teenager lied that her history teacher fondled her; teacher later committed suicide; best defense is lack of proximate causation."
    variant_stem_one_sentence: "Hannah falsely accused youth leader Peter; Peter later killed himself; best defense is lack of proximate causation."
    dimensions_changed: ["asset/subject", "setting", "cast_names", "fact_order", "choice_order", "phrasing"]
    dimensions_skipped_with_reason: []
source_stack: ["QBank/14676.md (original row)", "PROMPT.md", "skills/cq-transform-qa/SKILL.md", "controlled_vocabularies.md", "OUTLINE_CODES_COMPLETE.md"]
student_access_contract: "Student-level C3 path only; no legal authority cited here."
stem_parse:
  actor_roles: ["Hannah (accuser)", "Peter (victim/former leader)"]
  central_event: "false accusation  removal  later suicide"
trigger_facts:
  - "false accusation leading to removal"
  - "victim's later suicide"
c3_routing:
  subject_fit: "CRIMINAL"
  governing_law_type: "RULE"
  deciding_phase: "CUT/CLASH"
  method_class: "hard_structural"
  confidence: "HARD_STRUCTURAL"
  case_study_verdict: "C3_SOLVE"
  bank_validation_verdict: "PASS"
  residual: "C"
  agrees_with_official_key: true
  is_fork: false
  fork_type: null
  difficulty: "Core"
answer_array:
  geometry: "3 distractors vs correct (original A correct)"
choice_walkthroughs:
  A:
    filter_broken: "NOT_TRUE"
    mold_code: "EAR_FALSITY.backwards"
    mold_family: "EAR_FALSITY"
    bait_architecture_code: null
    wrong_answer_architecture_tags: ["common_student_myth","sounds_lawyerly"]
    method_class: "heuristic_structural"
    student_label: "No intent = no crime"
    c3_signal: "Appeals to mens rea confusion"
    lawyer_confirmation: "Intent-to-kill is not required for manslaughter; this answer fails to address causation."
  B:
    filter_broken: "NOT_TRUE"
    mold_code: "EAR_FALSITY.backwards"
    mold_family: "EAR_FALSITY"
    bait_architecture_code: null
    wrong_answer_architecture_tags: ["misstated_rule","bar_exam_bait"]
    method_class: "heuristic_structural"
    student_label: "No malice = no manslaughter"
    c3_signal: "Misstates required element"
    lawyer_confirmation: "Manslaughter lacks malice by definition; denying malice doesn't address causation."
  C:
    filter_broken: null
    mold_code: "correct_answer"
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags: ["correct_answer"]
    method_class: "hard_structural"
    student_label: "No proximate cause"
    c3_signal: "Victim's suicide is independent intervening act"
    lawyer_confirmation: "Correct: victim's voluntary suicide severs proximate causation."
  D:
    filter_broken: "NOT_TRUE"
    mold_code: "EAR_DISTORTION.half_truth"
    mold_family: "EAR_DISTORTION"
    bait_architecture_code: null
    wrong_answer_architecture_tags: ["exception_omitted","half_right_answer"]
    method_class: "heuristic_structural"
    student_label: "Emotional distress excuses result"
    c3_signal: "Confuses mitigation with causation"
    lawyer_confirmation: "Distress mitigates degrees but does not create a proximate causal link."
residual_answer: "C"
legal_leak_audit:
  issues_found: []
gold_keys: []
remediation:
  card_id: "RC-CRIM-CAUS-001"
  title: "When a victim's voluntary act breaks causation"
  signal: "victim acted voluntarily after defendant's act"
  student_move: "Ask: Did anything independent and voluntary cause the death?"
  tiny_rule: "If the victim makes a free, voluntary decision that causes death, the defendant typically lacks proximate causation."
  trap: "Confusing motive/intent with causation"
  confidence: "HARD_STRUCTURAL"
distilled_core_question: "Did the defendant's act proximately cause the death or was suicide a superseding intervening act?"
review_truth: "A voluntary, independent intervening act by the victim severs proximate causation."
case_study_output: {}
quality_control:
  checks_run: ["SKILL.md checklist", "outline_code verified", "pick_rates inherited", "letter_map present"]
analytics_hooks: { destination: "question_history" }

### 2. The 17-section student case study
(program_frame)
This item tests criminal causation  whether a victim's voluntary suicide is a superseding intervening act breaking proximate causation for manslaughter.

(student_access_test)
Limit to C3 student-visible moves: identify visible defects; cut obvious non-responsive choices; clash remaining two by naming axis: proximate cause vs mens rea.

(question_data)
See YAML block above for question data and percentages.

(distilled_core_question)
Did Hannah commit any act that was a proximate cause of Peters death?

(call_and_prediction)
Call: "best defense would be that she..." Prediction: students will pick C if they think about causation; dominant wrong is now A (16%) which appeals to intent confusion.

(trigger_facts)
- False accusation reported to officials
- Removal/ostracism caused employment loss
- Later voluntary suicide by Peter

(governing_c3_lane)
Subject fit: Manslaughter causation lane; deciding_phase: CUT into proximate-cause analysis.

(choice_by_choice_walkthrough)
A (post-shuffle A): Cut for wrong focus (mens rea vs causation).  
B: Cut for misstatement (malice irrelevant).  
C: Keep  addresses proximate cause.  
D: Cut  emotional distress not a causation defense.

(residual_answer)
C

(legal_leak_audit)
No lawyer-level contradictions found; authority floor flagged for human review for a jurisdictional case citation.

(final_student_script)
1. Spot that the death is suicide  ask "was suicide voluntary and independent?"  
2. If yes, call proximate-cause chain broken  cut all non-causation answers.  
3. Select choice about no proximate causation.

(remediation_card)
See remediation object in YAML.

(qa_checklist)
All SKILL.md completeness gates passed; letter map present; outline_code verified.

(wrong_answer_recovery_paths)
A: Teach difference between mens rea and causation.  
B: Teach that manslaughter lacks malice; focus on causation instead.  
D: Teach mitigation vs causation.

(outline_mastery_map)
Placement: 74020102  teaches causation break by voluntary intervening acts.

(crossover_intersection_map)
Crossovers: tort causation examples useful in study; keep jurisdiction caution.

(review_truth)
A voluntary, independent intervening act severs proximate causation.

## Gold Key(s)
None  structural causation rule suffices.

## Silver Key(s)
SK-CRIM-CHURCH-001:
  id: "SK-CRIM-CHURCH-001"
  statement: "When death is a later voluntary act by the victim, cut answers that only attack intent or malice first."
  type: "cut"
  navigates: "keeps students from confusing mens rea with causation"
  trigger: "victim's voluntary suicide noted in stem"
  last_minute_review: true

### 3. c3_annotation
{
  "question_id": "14676_church_youth_accusation",
  "subject": "CRIMINAL",
  "credited_answer": "C",
  "outline_code": "74020102",
  "distilled_core_question": "Did the defendant's act proximately cause the death or was suicide a superseding intervening act?",
  "review_truth": "A voluntary, independent intervening act by the victim severs proximate causation.",
  "c3": {
    "verdict": "C3_SOLVE",
    "residual": "C",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "HARD_STRUCTURAL",
    "tension_axis": "proximate cause vs mens rea",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "find intervening voluntary acts",
    "difficulty": "Core",
    "distractors": [
      { "choice": "A", "filter_broken": "NOT_TRUE", "mold": "EAR_FALSITY.backwards", "architecture": null, "explanation": "Appeals to intent confusion; fails to address causation." },
      { "choice": "B", "filter_broken": "NOT_TRUE", "mold": "EAR_FALSITY.backwards", "architecture": null, "explanation": "Denies malice but malice is not the causation issue for manslaughter." },
      { "choice": "D", "filter_broken": "NOT_TRUE", "mold": "EAR_DISTORTION.half_truth", "architecture": null, "explanation": "Confuses mitigation with causation." }
    ],
    "analyzer_notes": "drift_audit: variant changes setting and cast; transformed_from: 14676; letter_map: AC,BA,CB,DD"
  }
}

### 4. program_elements
{
  "question_id": "14676_church_youth_accusation",
  "subject": "CRIMINAL",
  "outline_code": "74020102",
  "distilled_core_question": "Did the defendant's act proximately cause the death or was suicide a superseding intervening act?",
  "review_truth": "A voluntary, independent intervening act by the victim severs proximate causation.",
  "tension": "causation vs mens rea",
  "traps": [
    { "choice": "A", "mold": "EAR_FALSITY.backwards", "architecture": null, "why_attractive": "Students think lacking intent to kill defeats a homicide charge. This distractor sounds lawlike and shifts focus away from causation.", "focus_group_pct": 16, "pct_provenance": "inherited" },
    { "choice": "B", "mold": "EAR_FALSITY.backwards", "architecture": null, "why_attractive": "Denial of malice reads as correct for manslaughter to some students; it sounds doctrinally close but misses causation.", "focus_group_pct": 6, "pct_provenance": "inherited" },
    { "choice": "D", "mold": "EAR_DISTORTION.half_truth", "architecture": null, "why_attractive": "Emotional-distress language triggers heat-of-passion recall, but doesn't answer causation.", "focus_group_pct": 4, "pct_provenance": "inherited" }
  ],
  "remediation_card": {
    "card_id": "RC-CRIM-CAUS-001",
    "title": "When a victim's voluntary act breaks causation",
    "signal": "victim acted voluntarily after defendant's act",
    "student_move": "Ask whether the intervening act was voluntary and independent",
    "tiny_rule": "Voluntary, independent acts by victims typically sever proximate causation",
    "trap": "confusing intent/malice with causation",
    "confidence": "HARD_STRUCTURAL"
  },
  "red_zone_dimensions": ["causation","intervening_acts","heat_of_passion_confusion"]
}

### 5. program_intelligence
{
  "question_id": "14676_church_youth_accusation",
  "subject": "CRIMINAL",
  "outline_code": "74020102",
  "distilled_core_question": "Did the defendant's act proximately cause the death or was suicide a superseding intervening act?",
  "review_truth": "A voluntary, independent intervening act by the victim severs proximate causation.",
  "wrong_answer_paths": [
    { "choice": "A", "filter_broken": "NOT_TRUE", "mold": "EAR_FALSITY.backwards", "why_a_student_picks_this": "Conflates intent to kill with causation requirements", "skipped_move": "Check for independent voluntary act", "recovery_step": "Ask whether the death followed an independent voluntary decision by the victim" },
    { "choice": "B", "filter_broken": "NOT_TRUE", "mold": "EAR_FALSITY.backwards", "why_a_student_picks_this": "Reads like manslaughter definition (no malice)", "skipped_move": "Differentiate definition from causation", "recovery_step": "Focus on causal chain analysis" },
    { "choice": "D", "filter_broken": "NOT_TRUE", "mold": "EAR_DISTORTION.half_truth", "why_a_student_picks_this": "Recalls heat-of-passion mitigating doctrine", "skipped_move": "Distinguish mitigation from causation", "recovery_step": "Teach mitigation vs causation distinction" }
  ],
  "drill_seeds": [
    { "drill_type": "multiple-choice", "target_skill": "identify superseding intervening acts", "prompt": "Victim dies by a later voluntary act after defendant's lie  choose the best defense.", "answer": "No proximate causation" }
  ],
  "trap_tags": { "forensic_tags": ["superseding_act","proximate_cause"], "misconception_tags": ["mens_rea_for_confusion","mitigation_vs_causation"] },
  "component_routing": [
    { "destination_key": "drills", "route": null, "component_tags": ["causation","intervening_act"] },
    { "destination_key": "review_cards", "route": null, "component_tags": ["RC-CRIM-CAUS-001"] }
  ],
  "crossovers": [],
  "gold_keys": [],
  "silver_keys": [
    { "id": "SK-CRIM-CHURCH-001", "statement": "When death is a later voluntary act by the victim, cut answers that only attack intent or malice first.", "type": "cut", "trigger": "victim's voluntary suicide" }
  ],
  "outline_mastery": { "placement": "74020102", "this_item_teaches": ["identify superseding intervening acts"], "fills": [], "adjacent_to_master": [] }
}

Notes / QA flags:
- Outline code verified as 74020102 in OUTLINE_CODES_COMPLETE.md.
- Focus-group percentages were supplied; all preserved/inherited per Letter Map.
- Gold Key not required; Silver Key offered (student navigation).
- Lawyer-confirmation: a jurisdictional citation was not pinned; attorney_review: true for case-level authority if needed.