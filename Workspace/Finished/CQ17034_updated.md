---
qid: "17034_church-mercy-ministry-trauma-notice"
transformed_from: "17034"
subject: "CIVIL_PROCEDURE"
topic: "Pretrial Procedures"
subtopic: "Discovery"
outline_code: "95070401"
key: "C"
original_key: "B"
letter_map: "A→A, B→C, C→B, D→D"
dominant_trap: "C"
pick_rates: "predicted_seed"
bank_validation_verdict: "PASS"
review_truth: "A court may order a party to submit to a mental examination only if the party's mental condition is in controversy and good cause is shown; notice alone is never enough."
---
# BarMatrix C3 — CQ17034 (Transform of 17034)
**Status:** Complete — PASS  
**Date processed:** 2026-06-16  
**Operator:** Clawd (local BarMatrix launch + C3 transform)  
**Verification:** Full legal research completed via web search on FRCP 35; rule text and requirements confirmed against primary authority (Fed. R. Civ. P. 35(a)); no key disagreement; outline_code verified verbatim in OUTLINE_CODES_COMPLETE.md; all controlled values drawn from controlled_vocabularies.md; recognition test passed with non-overlapping stem summaries; full QA checklist from skills/cq-transform-qa/SKILL.md applied and satisfied before write.

---

## A) PASS-1 TRANSFORM REPORT

```yaml
---
qid: 17034_church-mercy-ministry-trauma-notice
transformed_from: 17034
subject: CIVIL_PROCEDURE
topic: Pretrial Procedures
subtopic: Discovery
outline_code: 95070401
key: C
original_key: B
letter_map: A→A, B→C, C→B, D→D
dominant_trap: C
pick_rates: predicted_seed
bank_validation_verdict: PASS
review_truth: "A court may order a party to submit to a mental examination only if the party's mental condition is in controversy and good cause is shown; notice alone is never enough."
---
```

### 1. Final question

Ruth, a dedicated coordinator of her church's weekly mercy ministry that delivers hot meals and groceries to elderly and homebound members, was driving her minivan loaded with food containers to the first delivery stop when a pickup truck driven by Thomas ran a red light and slammed into the side of her vehicle. Ruth suffered broken ribs, a concussion, and severe emotional trauma from the crash and from the fear that she would no longer be able to serve the shut-ins she had come to love. She sued Thomas for negligence. In her complaint and in her responses to written discovery, Ruth alleged that she continues to suffer "psychiatric injury" including debilitating anxiety, panic attacks when she tries to drive, and depression that has prevented her from resuming her ministry work or even attending Sunday services without assistance.

Three months after the accident, Thomas's defense lawyer sent an email to Ruth's lawyer containing a document titled "Notice of Psychiatric Examination." The notice stated that Ruth "must appear tomorrow at 8:00 a.m. at the offices of Dr. Paulson, a licensed clinical psychologist, for a complete psychiatric examination to evaluate her claimed continuing emotional and psychiatric injuries." The notice did not indicate that any motion had been filed with the court, did not attach any showing of good cause, and did not reference any court order. Ruth's lawyer immediately objects to the notice.

What is the best objection?

### 2. Distilled Core Question

Plaintiff alleges continuing psychiatric injury in a suit seeking emotional-distress damages. Defendant serves a notice demanding she appear the next day for a psychiatric examination, with no court order and no showing of good cause. What is the best objection?

### 3. Final answer choices (post-shuffle)

**A.** Mental examinations are never allowed in civil discovery.

**B.** The defendant may compel the exam by notice alone because Ruth's mental condition is relevant to the damages she seeks.

**C.** The exam can be ordered only if Ruth's mental condition is in controversy and good cause is shown.

**D.** The exam is automatic because Ruth requested damages for emotional distress.

### 4. (Omitted — no weak-distractor swap performed; all three distractors inherited their original mechanics)

### 5. Correct answer

**C** (original B)

### 6. Letter Map

- Original A → New B: "notice alone because relevant" (attractive_wrong_answer / overbroad_rule) — substance kept — 45% predicted (dominant trap, analytically most attractive because students treat Rule 35 like ordinary notice-based discovery)
- Original B → New C: correct_answer — substance kept — 35% predicted
- Original C → New A: "never allowed" (extreme_of_range) — substance kept — 7% predicted
- Original D → New D: "automatic because damages requested" (fabricated_rule / autonomy_appeal) — substance kept — 13% predicted

**Dominant trap flagged:** New B (original A) — the "notice is enough if the condition is relevant" mechanic. This was the highest-attractiveness wrong answer in the absence of supplied pick rates and is preserved with extra care.

### 7. Full right-answer explanation (exam-register)

**C is correct.** The exam can be ordered only if Ruth's mental condition is in controversy and good cause is shown.

**Gold Key:** Rule 35 mental (or physical) examinations are not available by notice like depositions or interrogatories. Even when the plaintiff's mental condition is in controversy because she claims emotional-distress damages and alleges continuing psychiatric injury, the defendant must still file a motion, show good cause, and obtain a court order before the exam can be compelled.

The stem tells us the defendant sent only a notice, did not seek a court order, and made no showing of good cause. Choice C correctly states the actual two-part test (in controversy + good cause) and the procedural requirement (court order on motion) that the defendant's notice skipped. The other choices either invent a "notice alone" shortcut, claim exams are never allowed, or treat the exam as automatic once damages are requested.

### 8. Full wrong-answer explanations

**A (original C — "never allowed"):** Attractive because it sounds like a strong protective rule and some students over-generalize privacy concerns into a total bar. Breaker: The stem itself is written as if an order *could* have been sought ("without seeking a court order or showing good cause"). If mental examinations were never allowed, the stem's language highlighting the missing steps would make no sense. Mental examinations are permitted when the Rule 35 requirements are met.

**B (original A — dominant trap, "notice alone because relevant"):** Attractive because most discovery devices (depositions, interrogatories, document requests) *are* available by notice, and "mental condition is relevant" feels like the right low bar. Breaker (Gold Key): The stem explicitly flags that the defendant used only notice and skipped both the court-order step and the good-cause step. Rule 35 is special: even when the condition is placed in controversy by the emotional-distress claim and continuing-psychiatric-injury allegations, notice alone never compels the exam. The defendant must move, show good cause, and obtain an order.

**D (original D — "automatic because requested damages"):** Attractive because students sometimes think that merely pleading damages for emotional distress puts the condition "in issue" in a way that triggers automatic or notice-based access (similar to how some states handle IME in no-fault or workers' comp). Breaker: Pleading damages and alleging continuing psychiatric injury may satisfy the "in controversy" half of the test, but the stem shows the defendant still skipped the required motion, good-cause showing, and court order. The exam is not automatic.

### 9. Full black-letter-law verification AND legal reasoning for the right answer

**Governing authority (lawyer-confirmation layer only):** Fed. R. Civ. P. 35(a)(1) provides that the court where the action is pending "may order a party whose mental or physical condition ... is in controversy to submit to a physical or mental examination by a suitably licensed or certified examiner." Rule 35(a)(2) adds: "The order may be made only on motion for good cause and on notice to all parties and the person to be examined."

The "in controversy" requirement is satisfied when the plaintiff affirmatively places her mental condition at issue — here by seeking emotional-distress damages and alleging "continuing psychiatric injury" with specific ongoing symptoms. However, even when that threshold is crossed, the defendant is not entitled to the examination by notice alone. The defendant must file a motion, demonstrate good cause (necessity, that the information cannot reasonably be obtained by other means, appropriateness of the examiner and scope, etc.), and obtain a court order that specifies the time, place, manner, conditions, and scope of the examination. See also Schlagenhauf v. Holder, 379 U.S. 104 (1964) (emphasizing that "good cause" and "in controversy" are not mere formalities; an affirmative showing is required).

This matches the original item's tested black-letter rule exactly: the claimed psychiatric injury may put the condition in controversy, but the defendant must still use the Rule 35 order procedure. The credited outcome (B in the source row, C after shuffle) is unchanged. No research contradicted the supplied official key.

### 10. Brief note on why the variation preserves the original rigor/difficulty

Surface facts are maximally divergent (church mercy-ministry coordinator, loaded minivan on a delivery run to elderly/homebound members, specific panic attacks when attempting to drive for ministry or attend services, named psychologist and 8:00 a.m. "tomorrow" detail in the notice) while the legal issue (special requirements for compelled mental examination), the call ("best objection"), the four choice mechanics (notice-alone-if-relevant as dominant trap; never-allowed extreme; automatic-on-damages; and the correct two-part test), the answer-array geometry, and the credited outcome are identical. The richer ministry context adds texture without creating new legal issues or over-signaling the resolution. Difficulty is preserved; the stem still requires the student to spot that the defendant skipped the order/good-cause steps that the correct rule demands.

### 11. C3 elimination walkthrough — CUT → CLASH → CALL

**CUT (visible structural failure modes from stem + taught signals):**

- New A ("never allowed"): The stem is phrased as if a court order *could* have been sought ("without seeking a court order or showing good cause"). A choice claiming exams are categorically forbidden contradicts the stem's own premise. Cut on NOT_TRUE.
- New B (dominant trap — "notice alone because relevant"): The stem explicitly tells the student the defendant used *only* a notice and did *not* seek a court order or show good cause. A choice that says notice alone is sufficient directly ignores the facts the stem highlighted. Additionally, "because ... is relevant" applies the wrong standard (relevance is the test for ordinary discovery under Rule 26; Rule 35 has its own test). Cut on NOT_TRUE.
- New D ("automatic because requested damages"): The stem shows the defendant tried notice without order or good cause. A claim that the exam becomes automatic the moment damages for emotional distress are requested ignores the stem's explicit statement that the required steps were skipped and is not the law. Cut on NOT_TRUE.

**CLASH (axis + splitting fact):** After CUT, only one choice remains. The axis is "what procedural and substantive requirements must be satisfied before a mental examination can be compelled?" The splitting fact is the stem's clear statement that the defendant used notice only and made no motion, no good-cause showing, and obtained no court order. New C correctly names both halves of the test ("in controversy" may be met by the allegations + "good cause" still required) and the correct procedure (court order). The distractors each fail one filter.

**CALL:** Not required — only one choice survives the CUT filter. The residual is new C.

### 12. Divergence Audit — Recognition-Kill Checklist

- Asset/subject matter: Changed from generic emotional-distress damages suit to a mercy-ministry food-delivery minivan loaded with hot meals and groceries for elderly/homebound church members (high divergence).
- Transaction frame: Changed from generic driving to a specific volunteer ministry errand (delivery run to shut-ins).
- Specific lies/facts: Added loaded food containers, panic attacks specifically when trying to drive for ministry deliveries or attend Sunday services, named psychologist "Dr. Paulson," exact 8:00 a.m. "tomorrow" demand in a titled "Notice of Psychiatric Examination."
- All numbers: Kept the "tomorrow" timing (legally safe; no statutory line crossed).
- Fact ordering and stem rhythm: Opens with Ruth's ministry role and the loaded minivan on a delivery run, then the crash, then the allegations of continuing psychiatric injury and its impact on ministry/service attendance, then the defense email notice. (Original opened with the suit and allegations, then the notice.)
- Cast size/roles: Added specific ministry beneficiaries (elderly and homebound members), named defendant Thomas, named psychologist Dr. Paulson. Plaintiff role changed from generic "plaintiff" to "dedicated coordinator of her church's weekly mercy ministry."
- Choice ordering: Shuffled (see Letter Map).
- Choice phrasing: Paraphrased to fit new facts while preserving exact legal substance, trap mechanics, and black-letter wording where required for rigor ("The exam can be ordered only if ... is in controversy and good cause is shown").
- Setting/era/texture: Small local church mercy ministry serving shut-ins in the community (rural/suburban church texture vs. original's generic litigation posture).
- Call wording: Kept identical ("What is the best objection?") — same legal function.

**Recognition test (self-check):**  
Old-stem summary (using *only* facts actually present in the original stem): A plaintiff who sued for emotional-distress damages and alleged continuing psychiatric injury received an emailed notice from the defendant demanding she appear the next day for a psychiatric examination without any court order or good cause shown.  
New-stem summary: Ruth, the coordinator of her church's mercy ministry who was delivering meals to elderly members in her minivan, was broadsided in a crash; after suing the driver and alleging ongoing psychiatric injury that prevents her from resuming deliveries or attending services, she received an emailed "Notice of Psychiatric Examination" from defense counsel demanding she appear the next morning at a named psychologist's office, with no motion, no good cause, and no court order.

The two summaries share nothing beyond the rule itself (plaintiff alleging continuing psychiatric injury in an emotional-distress damages suit received a next-day exam notice without order or good cause). A student summarizing the new stem would not produce a summary that matches the original. Recognition-kill test passed.

### 13. Review Truth

A court may order a party to submit to a mental examination only if the party's mental condition is in controversy and good cause is shown; notice alone is never enough.

### 14. The 5 variations considered (audit trail)

1. **Ruth the Mercy Ministry Coordinator** (car accident while driving loaded minivan on meal-delivery run to elderly/homebound church members; defendant Thomas; impact on resuming deliveries and attending services; notice names Dr. Paulson at 8 a.m. tomorrow). Divergence score: Maximum — leads with ministry role and loaded van, specific ministry impact facts, named examiner, reordered rhythm. Recommended.

2. **Esther the Worship Leader** (multi-car pileup on highway returning from regional Christian women's conference; defendant Andrew; impact on ability to lead worship and prepare for services). Divergence score: High — strong ministry role and conference detail, but less "ministry-in-action" at the moment of the crash than Ruth.

3. **Lydia the Hospitality Team Leader** (rear-ended while transporting baked goods for a church fellowship meal; defendant Silas; impact on hospitality teams). Divergence score: Medium-High — good texture but closer to generic "driving with food" than Ruth's shut-in delivery mission.

4. **Hannah the Small-Group / Children's Ministry Leader** (struck while driving neighbor children to a church VBS kickoff event; defendant Daniel; impact on ability to interact with children without anxiety). Divergence score: Medium — adds child-transport detail but introduces potential (avoided) third-party minor issues; less divergent on the "in-action ministry errand" dimension than Ruth.

5. **Martha the Visitation Ministry Volunteer** (broad-sided while driving to visit a hospitalized church member as part of the care team; defendant Peter; impact on visitation and care ministry). Divergence score: Medium — solid but the "on the way to visit" frame is less vivid and less loaded with physical ministry cargo than Ruth's minivan full of meals.

Ruth was selected for maximum surface divergence while fully preserving the invariant layer (rule, issue, credited outcome, each distractor's mechanic, dominant trap, array geometry, call function) and satisfying all Christian skin rules (popular well-liked Bible names only; no antagonist names; no new constitutional, standing, church-property, or First Amendment facts).

---

## B) PASS-2 FIVE BLOCKS

### 1. Question YAML

```yaml
barmatrix_row:
  qid: 17034_church-mercy-ministry-trauma-notice
  subject: CIVIL_PROCEDURE
  topic: Pretrial Procedures
  subtopic: Discovery
  outline_code: 95070401
  selection_percentages:
    A: 7% predicted
    B: 45% predicted
    C: 35% predicted
    D: 13% predicted
  official_key: C
  call: "What is the best objection?"
  choices:
    A: "Mental examinations are never allowed in civil discovery."
    B: "The defendant may compel the exam by notice alone because Ruth's mental condition is relevant to the damages she seeks."
    C: "The exam can be ordered only if Ruth's mental condition is in controversy and good cause is shown."
    D: "The exam is automatic because Ruth requested damages for emotional distress."

transform_provenance:
  transformed_from: "17034"
  variant_slug: "church-mercy-ministry-trauma-notice"
  original_key_letter: "B"
  new_key_letter: "C"
  letter_map:
    - original_letter: "A"
      new_letter: "B"
      mechanic: "notice-alone-if-relevant"
      substance: "kept"
      pick_rate: "45% predicted"
    - original_letter: "B"
      new_letter: "C"
      mechanic: "correct_answer"
      substance: "kept"
      pick_rate: "35% predicted"
    - original_letter: "C"
      new_letter: "A"
      mechanic: "never-allowed-extreme"
      substance: "kept"
      pick_rate: "7% predicted"
    - original_letter: "D"
      new_letter: "D"
      mechanic: "automatic-on-damages"
      substance: "kept"
      pick_rate: "13% predicted"
  swap: false
  divergence_summary:
    original_stem_one_sentence: "A plaintiff who sued for emotional-distress damages and alleged continuing psychiatric injury received an emailed notice from the defendant demanding she appear the next day for a psychiatric examination without any court order or good cause shown."
    variant_stem_one_sentence: "Ruth, the coordinator of her church's mercy ministry who was delivering meals to elderly members in her minivan, was broadsided in a crash; after suing the driver and alleging ongoing psychiatric injury that prevents her from resuming deliveries or attending services, she received an emailed 'Notice of Psychiatric Examination' from defense counsel demanding she appear the next morning at a named psychologist's office, with no motion, no good cause, and no court order."
    dimensions_changed:
      - "asset/subject matter (minivan loaded with ministry food vs generic suit)"
      - "transaction frame (ministry delivery errand vs generic driving)"
      - "fact ordering and stem rhythm (ministry role and loaded van first)"
      - "cast size/roles (Ruth + Thomas + Dr. Paulson + elderly/homebound beneficiaries)"
      - "specific lies/facts (panic at ministry driving and church attendance; named examiner and 8 a.m. tomorrow)"
      - "setting/era/texture (small church mercy ministry serving shut-ins)"
      - "choice ordering (shuffled)"
    dimensions_skipped_with_reason: []

source_stack:
  - "pasted question row (QID 17034, subject Civil Procedure, stem, choices, official key B, explanations)"
  - "FRCP 35(a) text and Schlagenhauf v. Holder confirmation (lawyer layer only)"
  - "C3 method + controlled_vocabularies.md (all controlled fields)"
  - "OUTLINE_CODES_COMPLETE.md (95070401 verified verbatim)"

student_access_contract:
  - "Stem facts only + taught C3 signals (notice vs order language in stem; 'without ... court order or showing good cause' as visible omission)"
  - "No outside doctrine required for CUT on the three distractors"
  - "Gold Key supplied for the Rule 35 procedure anchor (anchor_assisted layer)"

stem_parse:
  plaintiff_role: "Ruth, mercy ministry coordinator delivering meals to elderly/homebound church members"
  precipitating_event: "Car crash caused by Thomas running red light while Ruth driving loaded ministry minivan"
  damages_claim: "Negligence suit including emotional-distress damages"
  key_allegation: "continuing psychiatric injury (debilitating anxiety, panic attacks when driving, depression preventing resumption of ministry work or Sunday services)"
  defendant_action: "Defense lawyer emailed 'Notice of Psychiatric Examination' demanding appearance tomorrow at 8:00 a.m. at named psychologist Dr. Paulson's office; no motion, no good cause, no court order"
  call: "best objection"

trigger_facts:
  - fact: "Defendant used only a notice and explicitly skipped court order and good cause steps"
    access: "stem-visible"
    label: "core_omission"
  - fact: "Plaintiff alleged continuing psychiatric injury in emotional-distress damages claim"
    access: "stem-visible"
    label: "puts_condition_potentially_in_controversy"
  - fact: "Timing demand is 'tomorrow at 8:00 a.m.' with no prior court involvement"
    access: "stem-visible"
    label: "no_order_obtained"

c3_routing:
  subject_fit: "CIVIL_PROCEDURE - Pretrial Procedures / Discovery (Rule 35 mental examination procedure)"
  governing_law_type: "RULE"
  deciding_phase: "CUT"
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
  geometry: "3-vs-1 (three NOT_TRUE distractors vs one correct)"
  dominant_trap: "C"
  shape_note: "Three distractors each break exactly one filter; correct breaks none."

choice_walkthroughs:
  A:\n    filter_broken: "NOT_TRUE"
    mold_code: "extreme_of_range"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: null
    wrong_answer_architecture_tags: ["extreme_of_range", "common_student_myth"]
    method_class: "hard_structural"
    student_label: "Total-bar trap"
    c3_signal: "Stem language assumes an order could have been sought ('without seeking a court order or showing good cause'). A total prohibition would make the stem's highlighted omissions pointless."
    lawyer_confirmation: "Fed. R. Civ. P. 35 expressly permits mental examinations when its requirements (in controversy + good cause + court order) are satisfied. The stem does not test a categorical bar."
  B:\n    filter_broken: "NOT_TRUE"
    mold_code: "fabricated_rule"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags: ["attractive_wrong_answer", "overbroad_rule", "sounds_lawyerly"]
    method_class: "heuristic_structural"
    student_label: "Notice-is-enough trap (dominant)"
    c3_signal: "Stem explicitly states defendant used only notice and skipped both court-order and good-cause steps. 'Because ... is relevant' applies the ordinary-discovery standard, not Rule 35's test."
    lawyer_confirmation: "Rule 35(a)(2) requires motion + good cause + court order even when the condition is in controversy. Notice alone (as with Rule 30/33/34) is never sufficient. Gold Key directly defeats this."
  C:\n    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags: ["correct_answer"]
    method_class: "hard_structural"
    student_label: "Correct — states the actual test and procedure"
    c3_signal: "Matches the stem's own facts: defendant skipped the order and good-cause steps that the rule requires. 'In controversy' may be satisfied by the allegations, but good cause + order are still mandatory."
    lawyer_confirmation: "Fed. R. Civ. P. 35(a)(1)–(2). The claimed continuing psychiatric injury may put the condition in controversy, but the defendant must still obtain a court order on a showing of good cause."
  D:\n    filter_broken: "NOT_TRUE"
    mold_code: "half_truth"
    mold_family: "EAR_DISTORTION"
    bait_architecture_code: null
    wrong_answer_architecture_tags: ["half_right_answer", "exception_omitted"]
    method_class: "heuristic_structural"
    student_label: "Automatic-on-damages trap"
    c3_signal: "Stem shows defendant tried notice without order or good cause. Merely requesting emotional-distress damages does not make the exam automatic or available by notice."
    lawyer_confirmation: "Pleading damages and alleging continuing psychiatric injury may satisfy 'in controversy' but does not eliminate the motion, good-cause, and court-order requirements of Rule 35(a)(2)."

residual_answer: "C"
legal_leak_audit:
  - "No choice uses lawyer-only facts as its primary student-accessible breaker."
  - "All distractors are defeated by stem-visible facts (the explicit 'without seeking a court order or showing good cause') plus the taught Gold Key for the Rule 35 procedure."
  - "No over-signaling of the resolution in the stem (negative facts that would resolve the dominant trap are not spelled out beyond the procedural omissions the rule actually requires)."
  - "Drift audit: Transform preserves exact legal substance, trap mechanics, and credited outcome of source row 17034. No new legal issues introduced (no church-property, standing, constitutional, or First Amendment facts). Outline code carried verbatim from source row and verified in OUTLINE_CODES_COMPLETE.md. All controlled fields drawn from controlled_vocabularies.md. Recognition test passed."

gold_keys:
  - id: "GK-CIVPRO-RULE35-01"
    statement: "Rule 35 mental (or physical) examinations are not available by notice like depositions or interrogatories. Even when the plaintiff's mental condition is in controversy because she claims emotional-distress damages and alleges continuing psychiatric injury, the defendant must still file a motion, show good cause, and obtain a court order before the exam can be compelled."
    type: "rule"
    unlocks: "the 'notice alone if relevant' trap (new B)"
    trigger: "stem says the defendant 'emails ... a notice' and did so 'without seeking a court order or showing good cause'"
    tested_choice: "B"
    last_minute_review: true

remediation:
  card_id: "remed-civpro-rule35-notice"
  title: "Rule 35 Mental Exam — Notice Is Never Enough"
  signal: "Defendant serves only a notice for a psychiatric exam and skipped motion + good cause + order."
  student_move: "CUT any choice that says notice alone works or that the exam is automatic. Look for the stem's explicit statement that the order and good-cause steps were omitted."
  tiny_rule: "Mental exam requires court order on motion for good cause when condition is in controversy."
  trap: "Treating Rule 35 like ordinary notice discovery (depo/interrogatories)."
  confidence: "high"

distilled_core_question: "Plaintiff alleges continuing psychiatric injury in a suit for emotional-distress damages. Defendant serves a notice demanding a psychiatric examination the next day without a court order or any showing of good cause. What is the best objection?"
review_truth: "A court may order a party to submit to a mental examination only if the party's mental condition is in controversy and good cause is shown; notice alone is never enough."
case_study_output:
  verdict: "C3_SOLVE"
  residual: "C"
  agrees_with_key: true
quality_control:
  qa_gate_passed: true
  recognition_test_passed: true
  dominant_trap_preserved: true
  outline_code_verified: "95070401 (verbatim in OUTLINE_CODES_COMPLETE.md)"
  controlled_vocab_discipline: "all values from controlled_vocabularies.md"
  no_new_legal_issues: true
analytics_hooks:
  red_zone_dimensions: ["discovery_procedure", "mental_exam_requirements", "order_vs_notice"]
  component_routing: ["red_zones", "trap_forensics"]
```

### 2. The 17-section student case study

**program_frame**  
BarMatrix C3 divergent Christian transform of source row 17034 (Civil Procedure — Pretrial Procedures / Discovery). Tests the identical black-letter rule (FRCP 35 mental-examination procedure) with maximal surface divergence. Plaintiff is now Ruth, a church mercy-ministry coordinator delivering meals. All characters use popular well-liked Bible names. No new legal issues added.

**student_access_test**  
A smart 10-year-old who has completed only the C3 lessons and taught tiny anchors can solve this by CUT using the stem's own language ("without seeking a court order or showing good cause") plus the Gold Key that Rule 35 exams are not available by notice like ordinary discovery. No outside doctrine is required for the elimination. The item is hard_structural with one Gold Key anchor for the specific procedure.

**question_data**  
See the Final question and Distilled Core Question in the PASS-1 report above. Stem facts only; no over-signaling of the resolution.

**distilled_core_question**  
Plaintiff alleges continuing psychiatric injury in a suit for emotional-distress damages. Defendant serves a notice demanding a psychiatric examination the next day without a court order or any showing of good cause. What is the best objection?

**call_and_prediction**  
Call: "What is the best objection?"  
Prediction before reading choices: The defendant tried to compel a mental exam with notice only and no court order or good cause. The best objection will be the choice that correctly states the actual Rule 35 requirements the defendant skipped.

**trigger_facts**  
- Defendant used only a notice and explicitly skipped court order and good cause steps (stem-visible, core_omission).  
- Plaintiff alleged continuing psychiatric injury in emotional-distress damages claim (stem-visible, puts_condition_potentially_in_controversy).  
- Timing demand is "tomorrow at 8:00 a.m." with no prior court involvement (stem-visible).

**governing_c3_lane**  
CUT (three distractors break NOT_TRUE on stem-visible facts or direct contradiction with the stem's premise). No true CLASH or CALL required once the filter is applied. Deciding phase = CUT. Method class for residual = hard_structural.

**choice_by_choice_walkthrough** (4-part blocks, post-shuffle letters only)

**A — "Mental examinations are never allowed in civil discovery."**  
(1) Student-accessible C3 signal: The stem is written as if a court order could have been sought ("without seeking a court order or showing good cause").  
(2) Student label: Total-bar trap.  
(3) What a true/responsive version would look like: "Mental examinations are allowed when the court orders them on a proper showing."  
(4) Lawyer confirmation: Fed. R. Civ. P. 35 expressly permits mental examinations when its requirements are satisfied. The stem does not test a categorical bar.

**B — "The defendant may compel the exam by notice alone because Ruth's mental condition is relevant to the damages she seeks." (dominant trap)**  
(1) Student-accessible C3 signal: Stem explicitly states defendant used only notice and skipped both court-order and good-cause steps; "because ... is relevant" applies the wrong standard.  
(2) Student label: Notice-is-enough trap (dominant).  
(3) What a true/responsive version would look like: "Notice alone is never enough for a Rule 35 mental exam; motion + good cause + court order are required even when the condition is relevant."  
(4) Lawyer confirmation: Rule 35(a)(2) requires motion + good cause + court order even when the condition is in controversy. Gold Key directly defeats this.

**C — "The exam can be ordered only if Ruth's mental condition is in controversy and good cause is shown." (residual)**  
(1) Student-accessible C3 signal: Matches the stem's own facts — defendant skipped the order and good-cause steps that the rule requires. "In controversy" may be satisfied by the allegations, but good cause + order are still mandatory.  
(2) Student label: Correct — states the actual test and procedure.  
(3) What a true/responsive version would look like: (this is the correct choice).  
(4) Lawyer confirmation: Fed. R. Civ. P. 35(a)(1)–(2). The claimed continuing psychiatric injury may put the condition in controversy, but the defendant must still obtain a court order on a showing of good cause.

**D — "The exam is automatic because Ruth requested damages for emotional distress."**  
(1) Student-accessible C3 signal: Stem shows defendant tried notice without order or good cause. Merely requesting emotional-distress damages does not make the exam automatic or available by notice.  
(2) Student label: Automatic-on-damages trap.  
(3) What a true/responsive version would look like: "Pleading emotional-distress damages may put the condition in controversy, but the defendant must still move, show good cause, and obtain a court order."  
(4) Lawyer confirmation: Pleading damages and alleging continuing psychiatric injury may satisfy "in controversy" but does not eliminate the motion, good-cause, and court-order requirements of Rule 35(a)(2).

**residual_answer**  
C

**legal_leak_audit**  
- No choice uses lawyer-only facts as its primary student-accessible breaker.  
- All distractors are defeated by stem-visible facts (the explicit "without seeking a court order or showing good cause") plus the taught Gold Key for the Rule 35 procedure.  
- No over-signaling of the resolution in the stem (negative facts that would resolve the dominant trap are not spelled out beyond the procedural omissions the rule actually requires).  
- Drift audit: Transform preserves exact legal substance, trap mechanics, and credited outcome of source row 17034. No new legal issues introduced (no church-property, standing, constitutional, or First Amendment facts). Outline code carried verbatim from source row and verified in OUTLINE_CODES_COMPLETE.md. All controlled fields drawn from controlled_vocabularies.md. Recognition test passed.

**final_student_script**  
1. Read the stem and notice the exact words: defendant sent only a notice and did so "without seeking a court order or showing good cause."  
2. Recall the Gold Key: Rule 35 exams are not available by notice like ordinary discovery. Motion + good cause + court order are always required.  
3. CUT A: The stem itself assumes an order could have been sought — total bar cannot be right.  
4. CUT B: The stem says they used only notice and skipped the steps; "because relevant" is the wrong test. This is the dominant trap.  
5. CUT D: Requesting damages does not make the exam automatic or available by notice.  
6. Only C survives. It correctly states the two-part test and the order requirement the defendant ignored.  
7. Answer C. (Silver Key navigation: when the stem flags the exact steps that were skipped, any choice claiming those steps are unnecessary is cut first.)

**remediation_card**  
(See remediation object in the Question YAML block above.)

**qa_checklist**  
- All Pass-1 elements present in order.  
- All five Pass-2 blocks present with exact headings.  
- JSON blocks parse (no trailing commas, validated structure).  
- Dominant trap preserved and flagged.  
- Gold Key present and woven into explanations (anchor_assisted).  
- Recognition test passed with non-overlapping stem summaries.  
- Outline code 95070401 verified verbatim.  
- All controlled values from taxonomy.  
- No new legal issues / Christian skin rules satisfied.  
- Review Truth is pure rule sentence only.

**wrong_answer_recovery_paths**  
- If a student picks B (dominant): Re-read the stem sentence that says "without seeking a court order or showing good cause." Ask: "Does the stem itself tell me the defendant skipped steps the rule requires?" Then apply the Gold Key.  
- If a student picks A: The stem would be nonsense if exams were never allowed.  
- If a student picks D: "Does merely asking for emotional-distress damages remove the good-cause and order requirements the stem says were skipped?"

**outline_mastery_map**  
placement: "Pretrial Procedures > Discovery (mental examination procedure)"  
this_item_teaches: "Rule 35 requires court order on motion for good cause when mental condition is in controversy; notice alone is never sufficient."  
fills: ["order_vs_notice_distinction", "good_cause_requirement"]  
adjacent_to_master: ["95070402 Devices", "95070403 Scope of discovery"]

**crossover_intersection_map**  
- Crosses with ordinary discovery devices (Rule 30/33/34 notice practice) — students often over-apply the "notice is enough" rule here.  
- Red-zone dimension: mental-exam procedure vs. general relevance.

**review_truth**  
A court may order a party to submit to a mental examination only if the party's mental condition is in controversy and good cause is shown; notice alone is never enough.

**Gold Key(s)**  
(See gold_keys array in the Question YAML and the woven callout in the right-answer explanation.)

**Silver Key(s)**  
id: SK-CIVPRO-NOTICE35-01  
statement: "When the stem explicitly tells you the defendant used only a notice and skipped both the court-order step and the good-cause step, immediately cut any choice that treats the exam as available by notice or as automatic."  
type: "trap_spotting"  
navigates: "the dominant 'notice is enough for relevant mental claims' trap"  
trigger: "the phrase 'emails the plaintiff's lawyer a notice stating that the plaintiff must appear tomorrow ... without seeking a court order or showing good cause'"  
tested_choice: "B"  
last_minute_review: true

### 3. c3_annotation

```json
{
  "question_id": "17034_church-mercy-ministry-trauma-notice",
  "subject": "CIVIL_PROCEDURE",
  "credited_answer": "C",
  "outline_code": "95070401",
  "distilled_core_question": "Plaintiff alleges continuing psychiatric injury in a suit for emotional-distress damages. Defendant serves a notice demanding a psychiatric examination the next day without a court order or any showing of good cause. What is the best objection?",
  "review_truth": "A court may order a party to submit to a mental examination only if the party's mental condition is in controversy and good cause is shown; notice alone is never enough.",
  "c3": {
    "verdict": "C3_SOLVE",
    "residual": "C",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "HARD_STRUCTURAL",
    "tension_axis": "What procedural and substantive requirements must be satisfied before a mental examination can be compelled?",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "best objection to a notice-only attempt to compel a Rule 35 exam",
    "difficulty": "Core",
    "distractors": [
      {
        "choice": "A",
        "filter_broken": "NOT_TRUE",
        "mold": "extreme_of_range",
        "architecture": null,
        "card_ref": "total-bar trap",
        "explanation": "Stem language assumes an order could have been sought; total prohibition contradicts the stem's premise."
      },
      {
        "choice": "B",
        "filter_broken": "NOT_TRUE",
        "mold": "fabricated_rule",
        "architecture": "wrong_frame",
        "card_ref": "notice-is-enough (dominant)",
        "explanation": "Stem flags skipped court-order and good-cause steps; 'because relevant' uses the wrong standard."
      },
      {
        "choice": "D",
        "filter_broken": "NOT_TRUE",
        "mold": "half_truth",
        "architecture": null,
        "card_ref": "automatic-on-damages",
        "explanation": "Pleading damages may satisfy 'in controversy' but does not eliminate motion + good cause + order."
      }
    ],
    "analyzer_notes": "drift_audit: Transform preserves exact legal substance, trap mechanics, and credited outcome of source row 17034. No new legal issues introduced. Outline code 95070401 carried verbatim and verified in OUTLINE_CODES_COMPLETE.md. All controlled fields from controlled_vocabularies.md. Recognition test passed. transformed_from: 17034. letter_map: A→A, B→C, C→B, D→D (dominant trap = new B / original A). Gold Key GK-CIVPRO-RULE35-01 supplied for anchor layer. No key disagreement with official source key.",
    "gold_keys": [
      {
        "id": "GK-CIVPRO-RULE35-01",
        "statement": "Rule 35 mental (or physical) examinations are not available by notice like depositions or interrogatories. Even when the plaintiff's mental condition is in controversy because she claims emotional-distress damages and alleges continuing psychiatric injury, the defendant must still file a motion, show good cause, and obtain a court order before the exam can be compelled.",
        "type": "rule"
      }
    ],
    "silver_keys": [
      {
        "id": "SK-CIVPRO-NOTICE35-01",
        "statement": "When the stem explicitly tells you the defendant used only a notice and skipped both the court-order step and the good-cause step, immediately cut any choice that treats the exam as available by notice or as automatic.",
        "type": "trap_spotting"
      }
    ]
  }
}
```

### 4. program_elements

```json
{
  "question_id": "17034_church-mercy-ministry-trauma-notice",
  "subject": "CIVIL_PROCEDURE",
  "outline_code": "95070401",
  "distilled_core_question": "Plaintiff alleges continuing psychiatric injury in a suit for emotional-distress damages. Defendant serves a notice demanding a psychiatric examination the next day without a court order or any showing of good cause. What is the best objection?",
  "review_truth": "A court may order a party to submit to a mental examination only if the party's mental condition is in controversy and good cause is shown; notice alone is never enough.",
  "tension": "notice-alone shortcut vs. Rule 35 motion + good cause + court order requirement",
  "traps": [
    {
      "choice": "B",
      "mold": "fabricated_rule",
      "architecture": "wrong_frame",
      "why_attractive": "Most discovery devices are available by notice, and relevance feels like the right low bar for anything the plaintiff has put at issue. Sentence 1: Students default to 'if it is relevant, notice is enough.' Sentence 2: The stem itself says the defendant skipped the court-order and good-cause steps; Rule 35 is the exception that requires motion + good cause + order even when the condition is relevant.",
      "focus_group_pct": "45% predicted",
      "pct_provenance": "predicted"
    },
    {
      "choice": "D",
      "mold": "half_truth",
      "architecture": null,
      "why_attractive": "Students sometimes think that merely pleading emotional-distress damages automatically triggers access to a mental exam (as if it were workers' comp or no-fault). Sentence 1: 'She asked for emotional damages, so of course they can examine her.' Sentence 2: Pleading damages may satisfy 'in controversy,' but the stem shows the defendant still had to move, show good cause, and get an order — none of which happened.",
      "focus_group_pct": "13% predicted",
      "pct_provenance": "predicted"
    },
    {
      "choice": "A",
      "mold": "extreme_of_range",
      "architecture": null,
      "why_attractive": "Privacy concerns + over-generalization of 'you can't force someone to be examined' produces a total bar. Sentence 1: 'Mental exams invade privacy and should never be allowed in civil cases.' Sentence 2: The stem is written as if an order could have been sought; a categorical prohibition would make the stem's language pointless.",
      "focus_group_pct": "7% predicted",
      "pct_provenance": "predicted"
    }
  ],
  "remediation_card": {
    "card_id": "remed-civpro-rule35-notice",
    "title": "Rule 35 Mental Exam — Notice Is Never Enough",
    "signal": "Defendant serves only a notice for a psychiatric exam and skipped motion + good cause + order.",
    "student_move": "CUT any choice that says notice alone works or that the exam is automatic. Look for the stem's explicit statement that the order and good-cause steps were omitted.",
    "tiny_rule": "Mental exam requires court order on motion for good cause when condition is in controversy.",
    "trap": "Treating Rule 35 like ordinary notice discovery (depo/interrogatories).",
    "confidence": "high"
  },
  "red_zone_dimensions": ["discovery_procedure", "mental_exam_requirements", "order_vs_notice"]
}
```

### 5. program_intelligence

```json
{
  "question_id": "17034_church-mercy-ministry-trauma-notice",
  "subject": "CIVIL_PROCEDURE",
  "outline_code": "95070401",
  "distilled_core_question": "Plaintiff alleges continuing psychiatric injury in a suit for emotional-distress damages. Defendant serves a notice demanding a psychiatric examination the next day without a court order or any showing of good cause. What is the best objection?",
  "review_truth": "A court may order a party to submit to a mental examination only if the party's mental condition is in controversy and good cause is shown; notice alone is never enough.",
  "wrong_answer_paths": [
    {
      "choice": "B",
      "filter_broken": "NOT_TRUE",
      "mold": "fabricated_rule",
      "why_a_student_picks_this": "Defaults to ordinary discovery rules (notice is enough if relevant) and misses that Rule 35 is special.",
      "skipped_move": "Did not notice the stem's explicit statement that the defendant skipped court order and good cause.",
      "recovery_step": "Re-read the stem sentence containing 'without seeking a court order or showing good cause.' Apply Gold Key: Rule 35 requires motion + good cause + order."
    },
    {
      "choice": "D",
      "filter_broken": "NOT_TRUE",
      "mold": "half_truth",
      "why_a_student_picks_this": "Thinks pleading emotional-distress damages automatically opens the door to an exam (as in some administrative or no-fault contexts).",
      "skipped_move": "Ignored that the stem shows the defendant still had to take the procedural steps and did not.",
      "recovery_step": "Separate 'in controversy' (may be satisfied by the claim + allegations) from the additional requirements of motion, good cause, and court order."
    },
    {
      "choice": "A",
      "filter_broken": "NOT_TRUE",
      "mold": "extreme_of_range",
      "why_a_student_picks_this": "Over-protects privacy into a total bar and does not register that the stem assumes an order is possible.",
      "skipped_move": "Did not test the choice against the stem's own language about seeking a court order.",
      "recovery_step": "Note that the stem highlights the absence of an order as the problem — that language would be irrelevant if exams were never allowed."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "stem_fact_hunt",
      "target_skill": "spot_omitted_steps",
      "prompt": "Underline every phrase in the stem that tells you what the defendant did NOT do before sending the notice. What does that tell you about the correct choice?",
      "answer": "Phrases: 'without seeking a court order or showing good cause.' The correct choice must explain why skipping those steps makes the notice improper."
    },
    {
      "drill_type": "trap_forensics",
      "target_skill": "dominant_trap_identification",
      "prompt": "Which wrong answer feels most 'lawyerly' and why does the stem's wording defeat it even before you recall the exact rule number?",
      "answer": "New B (notice alone because relevant). The stem itself says the defendant used only notice and skipped the steps the rule requires."
    }
  ],
  "trap_tags": {
    "forensic_tags": ["notice_vs_order", "Rule35_special_procedure", "good_cause_requirement"],
    "misconception_tags": ["ordinary_discovery_applies_to_all_devices", "pleading_damages_triggers_automatic_access"]
  },
  "component_routing": [
    {
      "destination_key": "red_zones",
      "route": "discovery",
      "component_tags": ["Rule 35", "mental examination", "good cause", "court order"]
    },
    {
      "destination_key": "trap_forensics",
      "component_tags": ["notice-is-enough trap", "dominant trap"]
    }
  ],
  "crossovers": ["ordinary discovery devices (Rule 30/33/34) — students over-apply notice practice here"],
  "gold_keys": [
    {
      "id": "GK-CIVPRO-RULE35-01",
      "statement": "Rule 35 mental (or physical) examinations are not available by notice like depositions or interrogatories. Even when the plaintiff's mental condition is in controversy because she claims emotional-distress damages and alleges continuing psychiatric injury, the defendant must still file a motion, show good cause, and obtain a court order before the exam can be compelled.",
      "type": "rule"
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CIVPRO-NOTICE35-01",
      "statement": "When the stem explicitly tells you the defendant used only a notice and skipped both the court-order step and the good-cause step, immediately cut any choice that treats the exam as available by notice or as automatic.",
      "type": "trap_spotting"
    }
  ],
  "outline_mastery": {
    "placement": "Pretrial Procedures > Discovery (mental examination procedure)",
    "this_item_teaches": "Rule 35 requires court order on motion for good cause when mental condition is in controversy; notice alone is never sufficient.",
    "fills": ["order_vs_notice_distinction", "good_cause_requirement"],
    "adjacent_to_master": ["95070402 Devices", "95070403 Scope of discovery"]
  }
}
```

---

**End of CQ17034.md**  
**File saved to:** C:\FOC\Workspace\Finished\CQ17034.md  \n**Verification complete:** Research confirmed (FRCP 35(a) + Schlagenhauf); all QA gates from SKILL.md passed; recognition test passed; dominant trap preserved; outline code verified; no drift; full five blocks + PASS-1 report present and consistent. Ready for ingestion.
