from pathlib import Path
import json, re

qid = "14069_christian-tutoring-van-lease"
variant_slug = "christian-tutoring-van-lease"
transformed_from = "14069"
subject = "CIVIL_PROCEDURE"
topic = "Jury Trials"
subtopic = "Jury Instructions"
outline_code = "91090400"
key = "D"
original_key = "A"
letter_map_string = "A→D, B→B, C→C, D→A"
dominant_trap = "A"
review_truth = "A party preserves a jury-instruction objection for appeal only by stating, on the record, the matter objected to and the precise grounds before the jury retires."
distilled_core_question = "When a party objects to a proposed jury instruction only by saying it is prejudicial and gives no specific matter or grounds, is the instruction error preserved for appeal?"

selection_percentages = {
    "A": {"value": 29, "provenance": "predicted"},
    "B": {"value": 16, "provenance": "predicted"},
    "C": {"value": 12, "provenance": "predicted"},
    "D": {"value": 43, "provenance": "predicted"},
}
assert sum(v["value"] for v in selection_percentages.values()) == 100

gold_keys = [
    {
        "id": "GK-CIVIL_PROCEDURE-JURY-OBJECTION-01",
        "statement": "In a federal civil jury trial, a party who objects to a jury instruction must state on the record the matter objected to and the grounds for the objection; a vague objection does not preserve the claimed error unless plain error affecting substantial rights is shown.",
        "type": "rule",
        "unlocks": "The timely-but-vague jury-instruction objection trap.",
        "trigger": "The objector says only that an instruction is prejudicial and does not identify the matter or grounds.",
        "tested_choice": "D",
        "authority": "Fed. R. Civ. P. 51(c)(1), 51(d)(1)-(2), and 61.",
        "last_minute_review": True,
    }
]

silver_keys = [
    {
        "id": "SK-CIVIL_PROCEDURE-JURY-OBJECTION-01",
        "statement": "When the call asks whether an appellate court will reverse, first ask whether the trial court got a usable objection; if the objector did not name the matter and grounds, cut choices that reward a vague objection.",
        "type": "call_focus",
        "navigates": "The tension between a timely objection and a specific objection.",
        "trigger": "The stem says the party objected before the jury was instructed but gave no further information.",
        "tested_choice": "A",
        "last_minute_review": True,
    }
]

final_question = """Martha owns a small Christian tutoring center in State A. She leased two used vans from Barnabas, a van dealer in State B, for summer field trips. Martha sued Barnabas in federal diversity, claiming the vans failed to meet the written lease and that the breach stranded students. The case was set for a jury trial. At the close of evidence, the judge showed both sides the proposed jury instructions. Before the jury was instructed and sent to deliberate, Martha objected to one proposed instruction about a peripheral procedural step, saying only that it would be prejudicial. The judge gave the instruction. The jury found for Barnabas. Martha appealed, arguing the instruction was erroneous.

Is the appellate court likely to reverse the judgment?"""

choices = {
    "A": "Yes, because Martha objected before the jury was instructed, so the judge was required to fix the instruction for her.",
    "B": "No, because Barnabas did not respond to Martha's objection.",
    "C": "Yes, because any flaw in a jury instruction is prejudicial error.",
    "D": "No, because Martha's objection did not distinctly identify the matter she objected to or the precise grounds for it.",
}

letter_map_rows = [
    ("A", "D", "correct_answer — the objection failed to state the matter and grounds distinctly", "kept", "43%", "predicted", ""),
    ("B", "B", "ISSUE_SENSE / wrong_element — opponent response is irrelevant to preservation", "kept", "16%", "predicted", ""),
    ("C", "C", "EAR_OVERCLAIM / tiered_absolute — any flaw equals prejudicial error", "kept", "12%", "predicted", ""),
    ("D", "A", "EAR_FALSITY / backwards — timely objection shifts burden to the judge", "kept", "29%", "predicted", "flagged"),
]

variations = [
    ("1", "Christian Café Espresso Machine", "Private Christian café buys commercial equipment", "Mary and Barnabas", "Jury-instruction objection preservation", "Memorable equipment-failure facts and private business context", "Contract frame remains close to original commercial dispute", "6/10"),
    ("2", "Ruth's Retreat Center Sound System", "Retreat center rents audio equipment", "Ruth and Stephen", "Same FRCP 51 preservation rule", "Event logistics create a different rhythm", "Retreat-center facts risk sounding like church-property clutter if overdeveloped", "7/10"),
    ("3", "Lydia's Bookstore Delivery Dispute", "Christian bookstore receives damaged inventory", "Lydia and Timothy", "Same appellate-preservation issue", "Inventory and delivery details are concrete and non-cluttered", "Still a sale-of-goods/commercial frame, so divergence is moderate", "7/10"),
    ("4", "Peter's Tutoring Tablet Order", "Christian tutoring center orders tablets", "Peter and Barnabas", "Same jury-instruction objection rule", "Ed-tech facts modernize the surface", "Contract/wholesale texture still echoes the source row", "8/10"),
    ("5", "Martha's Tutoring Van Lease", "Christian tutoring center leases used vans for field trips", "Martha and Barnabas", "Same Rule 51 specific-objection preservation issue", "Field-trip vans, private tutoring center, and van-dealer lease create a fresh surface while keeping federal diversity and jury-trial posture intact", "No church-property, constitutional, charitable-immunity, or standing clutter; private commercial lease only", "9/10"),
]

frontmatter = f"""---
qid: {qid}
transformed_from: {transformed_from}
subject: {subject}
topic: {topic}
subtopic: {subtopic}
outline_code: {outline_code}
key: {key}
original_key: {original_key}
letter_map: {letter_map_string}
dominant_trap: {dominant_trap}
pick_rates: predicted_seed
bank_validation_verdict: PASS
review_truth: "{review_truth}"
---
"""

pass1 = f"""## PASS-1 TRANSFORM REPORT

### 1. Final Question

{final_question}

---

### 2. Distilled Core Question

{distilled_core_question}

---

### 3. Final Answer Choices (post-shuffle)

| Letter | Choice |
|--------|--------|
| A | {choices["A"]} |
| B | {choices["B"]} |
| C | {choices["C"]} |
| D | {choices["D"]} |

---

### 4. Possible Replacement Answer Choices

No swap recommended. All three distractors are sound and reveal genuine misconceptions. The dominant trap is preserved.

---

### 5. Correct Answer

**D** (original key: A)

---

### 6. Letter Map

| Original | New | Mechanic | Substance | Pick Rate | Provenance | Dominant Trap |
|----------|-----|----------|-----------|-----------|------------|---------------|
"""
for r in letter_map_rows:
    pass1 += f"| {r[0]} | {r[1]} | {r[2]} | {r[3]} | {r[4]} | {r[5]} | {r[6]} |\n"
pass1 += f"""
**Dominant trap: A** (original D) — analytically the most attractive distractor because students often remember that a jury-instruction objection must be timely, then overextend that into the mistaken idea that the judge must fix the problem once any objection is made.

**Note:** No measured focus-group rates were supplied with the source row. All percentages are estimated seed values summing to 100, labeled `predicted`.

---

### 7. Full Right-Answer Explanation (Exam Register)

**Gold Key:** In a federal civil jury trial, a party who objects to a jury instruction must state on the record the matter objected to and the grounds for the objection; a vague objection does not preserve the claimed error unless plain error affecting substantial rights is shown.

**Silver Key:** When the call asks whether an appellate court will reverse, first ask whether the trial court got a usable objection; if the objector did not name the matter and grounds, cut choices that reward a vague objection.

Martha objected before the jury was instructed, so the objection was timely in the timing sense. But she said only that the instruction would be prejudicial. She did not identify the matter objected to or the precise grounds. That did not give the trial judge a usable chance to correct the claimed problem. Because the instruction concerned a peripheral procedural step and the facts do not show a substantial-rights problem, the appellate court is unlikely to reverse. The correct answer is **D**.

---

### 8. Full Wrong-Answer Explanations

**A — Yes, because the judge was required to fix the instruction (DOMINANT TRAP):** This choice tempts students who remember the timing half of the rule and stop there. The Gold Key defeats it: a timely objection is not enough unless the objector states the matter and grounds on the record. The judge is not required to guess what the party thinks is wrong.

**B — No, because Barnabas did not respond:** This choice tempts students who treat objections like a debate between the parties. The Silver Key keeps the focus on the call: appellate reversal turns on whether Martha preserved the claimed instruction error, not on whether Barnabas answered her. The preservation rule looks to what the objector placed on the record for the judge.

**C — Yes, because any flaw is prejudicial error:** This choice tempts students to turn “error” into automatic reversal. The Gold Key and harmless-error principle defeat it: flawed instructions may warrant reversal only when the preserved error matters, or when an unpreserved instruction error rises to plain error affecting substantial rights. The stem points the other way by describing a peripheral procedural step.

---

### 9. Full Black-Letter-Law Verification & Legal Reasoning

**Governing rule:** Federal Rule of Civil Procedure 51 governs jury instructions in federal civil cases. Rule 51(b)(2) requires the court to give the parties an opportunity to object on the record before instructions and arguments are delivered. Rule 51(c)(1) requires a party objecting to an instruction, or to the failure to give an instruction, to state distinctly the matter objected to and the grounds for the objection. Rule 51(d)(1)(A) allows a party to assign error in an instruction actually given only if the party properly objected. Rule 51(d)(2) permits consideration of plain error in instructions not preserved as required, but only if the error affects substantial rights. Rule 61 supplies the harmless-error floor: errors that do not affect substantial rights are disregarded.

**Application:** Martha objected before the jury was instructed, so the objection was timely. But she said only that the instruction would be prejudicial and gave no further information. She did not state the matter objected to or the grounds for the objection. The trial judge therefore did not receive a usable objection that could be corrected on the record. The appellate court is unlikely to reverse unless the instruction error was plain and affected substantial rights; the peripheral procedural nature of the instruction makes that showing unlikely.

**Authority:** Fed. R. Civ. P. 51(b)(2), 51(c)(1), 51(d)(1), 51(d)(2), and 61. Research checked against Cornell LII: https://www.law.cornell.edu/rules/frcp/rule_51 and https://www.law.cornell.edu/rules/frcp/rule_61.

**Doctrinal currency:** No hotlisted currency issue is triggered by this item.

**Verified:** PASS. The tested rule, legal issue, and credited outcome are unchanged from the original. The official key is correct.

---

### 10. Rigor/Difficulty Note

The variation preserves the original's rigor. The same narrow preservation rule controls, the same vague-objection fact decides the item, and the same three distractor mechanics survive: the dominant trap that a timely objection shifts the burden to the judge, the irrelevant-opponent-response trap, and the overbroad “any flaw means reversal” trap. The source row supplied no difficulty value, so this file carries `UNKNOWN` and logs a difficulty-source defect rather than inventing a scale.

---

### 11. C3 Elimination Walkthrough

**CUT phase:**

- **A (Yes — judge required to fix it):** CUT. The choice states a backwards rule. Timeliness matters, but Rule 51(c) still requires the objector to state the matter and grounds. This is the dominant trap.
- **B (No — Barnabas did not respond):** CUT. The call asks whether Martha preserved the instruction error for appeal. Barnabas's response is not the preservation event. This is NOT_RESPONSIVE.
- **C (Yes — any flaw is prejudicial error):** CUT. The choice overstates the remedy. Not every flawed instruction warrants reversal; the error must be preserved and substantial, or qualify as plain error affecting substantial rights.

**CLASH phase:**

- No real clash remains after the CUT phase. If a student hesitates between A and D, the axis is: *does a timely objection shift the burden to the judge, or must the objector make the objection specific?* The splitting fact is that Martha gave no matter or grounds.

**CALL phase:**

- D is the residual answer. It is true and responsive because it gives the reason Martha's objection failed to preserve the claimed instruction error.

---

### 12. Divergence Audit — Recognition-Kill Checklist

| Dimension | Changed? | Details |
|-----------|----------|---------|
| **Asset/subject matter** | ✅ Yes | Bakery/wholesale contract dispute → Christian tutoring-center van lease dispute. |
| **Transaction frame** | ✅ Yes | Goods/supply contract frame → used-van lease for field trips. |
| **Specific facts** | ✅ Yes | Baker objected to a procedural jury instruction → Martha objected to a peripheral procedural instruction after leased vans allegedly stranded students. |
| **All numbers** | ⚠️ Skipped | No operative source numbers were supplied; adding numeric thresholds would create clutter. |
| **Fact ordering / stem rhythm** | ✅ Yes | Original rhythm centered on a baker/wholesaler breach case; variant opens with Martha's tutoring center, van lease, field-trip purpose, diversity suit, then the instruction objection. |
| **Cast size/roles** | ✅ Yes | Baker and wholesaler → Martha's tutoring center and Barnabas's van dealership. |
| **Choice ordering** | ✅ Yes | Post-shuffle key moved from original A to new D; dominant trap moved to new A. |
| **Choice phrasing** | ✅ Yes | Choices are re-skinned around Martha, Barnabas, and the van-lease context while preserving the same legal mechanics. |
| **Setting/era/texture** | ✅ Yes | Bakery/wholesale commercial setting → Christian tutoring-center summer field-trip logistics. |
| **Call wording** | ✅ Preserved | “Is the appellate court likely to reverse?” performs the same legal function as the original call without naming the doctrine. |
| **Christian skin / clutter** | ✅ Preserved | Popular Bible names only; no church-property, tithe, First Amendment, charitable-immunity, or standing facts added. |

**One-sentence stem summaries:**

- **Original:** In a federal diversity contract case, a baker made only a vague, prejudicial objection to a proposed jury instruction before deliberations, then lost a jury verdict.
- **Variant:** In a federal diversity van-lease case involving a Christian tutoring center, Martha made only a vague, prejudicial objection to a proposed jury instruction before deliberations, then lost a jury verdict.

The summaries share only the preserved rule function; the asset, transaction, cast, setting, and surface rhythm are materially different. **Recognition test: PASSED.**

---

### 13. Review Truth

{review_truth}

---

### 14. The 5 Variations Considered

| # | Title | Setting | Cast | Preserved Issue | Why Memorable | Legal Risks | Divergence Score |
|---|-------|---------|------|-----------------|---------------|-------------|------------------|
"""
for v in variations:
    pass1 += f"| {v[0]} | {v[1]} | {v[2]} | {v[3]} | {v[4]} | {v[5]} | {v[6]} | {v[7]} |\n"
pass1 += """
**Recommended: Variation 5** — it wins on divergence because it changes the asset, transaction frame, cast, setting, fact rhythm, and choice texture while preserving the exact black-letter rule, credited outcome, and trap mechanics.
"""

question_yaml = f"""barmatrix_row:
  question_id: "{qid}"
  subject: {subject}
  topic: "{topic}"
  subtopic: "{subtopic}"
  selection_percentages:
    A: {{ value: {selection_percentages["A"]["value"]}, provenance: {selection_percentages["A"]["provenance"]} }}
    B: {{ value: {selection_percentages["B"]["value"]}, provenance: {selection_percentages["B"]["provenance"]} }}
    C: {{ value: {selection_percentages["C"]["value"]}, provenance: {selection_percentages["C"]["provenance"]} }}
    D: {{ value: {selection_percentages["D"]["value"]}, provenance: {selection_percentages["D"]["provenance"]} }}
  official_key: {key}
  call: "Is the appellate court likely to reverse the judgment?"
  choices:
    A: "{choices["A"]}"
    B: "{choices["B"]}"
    C: "{choices["C"]}"
    D: "{choices["D"]}"

transform_provenance:
  transformed_from: "{transformed_from}"
  variant_slug: "{variant_slug}"
  original_key_letter: {original_key}
  new_key_letter: {key}
  letter_map:
    - {{ original_letter: A, new_letter: D, mechanic: "correct_answer — objection failed to state matter and grounds distinctly", substance: kept, pick_rate: {{ value: 43, provenance: predicted }} }}
    - {{ original_letter: B, new_letter: B, mechanic: "ISSUE_SENSE/wrong_element — opponent response irrelevant to preservation", substance: kept, pick_rate: {{ value: 16, provenance: predicted }} }}
    - {{ original_letter: C, new_letter: C, mechanic: "EAR_OVERCLAIM/tiered_absolute — any flaw equals prejudicial error", substance: kept, pick_rate: {{ value: 12, provenance: predicted }} }}
    - {{ original_letter: D, new_letter: A, mechanic: "EAR_FALSITY/backwards — timely objection shifts burden to judge", substance: kept, pick_rate: {{ value: 29, provenance: predicted }} }}
  swap:
    performed: false
    replaced_original_letter: null
    reason: null
  divergence_summary:
    original_stem_one_sentence: "In a federal diversity contract case, a baker made only a vague, prejudicial objection to a proposed jury instruction before deliberations, then lost a jury verdict."
    variant_stem_one_sentence: "In a federal diversity van-lease case involving a Christian tutoring center, Martha made only a vague, prejudicial objection to a proposed jury instruction before deliberations, then lost a jury verdict."
    dimensions_changed:
      - asset/subject matter
      - transaction frame
      - specific facts
      - cast/roles
      - choice ordering
      - choice phrasing
      - setting/texture
    dimensions_skipped_with_reason:
      - "No operative source numbers existed to alter; adding numeric thresholds would create clutter."
      - "No constitutional posture existed; no constitutional texture added."

source_stack:
  - "QBank/14069.md"
  - "PROMPT.md"
  - "controlled_vocabularies.md"
  - "OUTLINE_CODES_COMPLETE.md"
  - "skills/cq-transform-qa/SKILL.md"
  - "Cornell LII Fed. R. Civ. P. 51"
  - "Cornell LII Fed. R. Civ. P. 61"

student_access_contract:
  student_accessible_surface: "Specificity of objection, timing before the jury retires, opponent-response distraction, and overbroad reversal rhetoric."
  authority_quarantine: "FRCP citations and authority discussion remain in lawyer_confirmation and Gold Key authority only."

stem_parse:
  call: "Is the appellate court likely to reverse the judgment?"
  call_function: "Appeal reversal after alleged jury-instruction error."
  adjacent_call_trap: null
  negative_stem: false

trigger_facts:
  - {{ fact: "Martha objected before the jury was instructed and sent to deliberate.", access: student }}
  - {{ fact: "Martha said only that the instruction would be prejudicial.", access: student }}
  - {{ fact: "Martha did not identify the matter objected to or the grounds for the objection.", access: student }}
  - {{ fact: "The instruction concerned a peripheral procedural step.", access: student }}
  - {{ fact: "The jury found for Barnabas.", access: student }}

c3_routing:
  subject_fit: "Civil Procedure — jury trials — jury instructions — preservation of objection."
  governing_law_type: RULE
  deciding_phase: CUT
  method_class: anchor_assisted
  confidence: ANCHOR_ASSISTED
  case_study_verdict: ANCHOR_SOLVE
  bank_validation_verdict: PASS
  residual: {key}
  agrees_with_official_key: true
  is_fork: false
  fork_type: null
  difficulty: UNKNOWN
  difficulty_source_defect: "No difficulty value supplied in source row."

answer_array:
  shape: "2x2 outcome x preservation rationale"
  axis_1: "No reversal vs reversal"
  axis_2: "Specific objection vs irrelevant/overbroad rationale"
  invariant_mechanics:
    - "correct_answer: vague objection fails preservation"
    - "dominant_trap: timely objection shifts burden to judge"
    - "wrong_element: opponent response irrelevant"
    - "overclaim: any flaw equals prejudicial error"

choice_walkthroughs:
  A:
    filter_broken: NOT_TRUE
    mold_code: EAR_FALSITY
    mold_family: backwards
    bait_architecture_code: procedural_frame
    wrong_answer_architecture_tags: [half_right_answer, sounds_lawyerly, common_student_myth]
    method_class: anchor_assisted
    student_label: "lawyerly but backwards"
    c3_signal: "Timely objection alone does not shift the burden to the judge."
    lawyer_confirmation: "FRCP 51(c)(1) requires the objector to state the matter and grounds; Rule 51(d)(2) plain error is not shown by a peripheral procedural instruction."
  B:
    filter_broken: NOT_RESPONSIVE
    mold_code: ISSUE_SENSE
    mold_family: wrong_element
    bait_architecture_code: wrong_party
    wrong_answer_architecture_tags: [wrong_party, legally_true_but_irrelevant]
    method_class: heuristic_structural
    student_label: "wrong-party distraction"
    c3_signal: "The call is about Martha's preservation, not Barnabas's response."
    lawyer_confirmation: "Rule 51(b)(2) gives parties an opportunity to object on the record; no opposing-party response is required for preservation."
  C:
    filter_broken: NOT_TRUE
    mold_code: EAR_OVERCLAIM
    mold_family: tiered_absolute
    bait_architecture_code: violation_vs_remedy
    wrong_answer_architecture_tags: [overbroad_rule, wrong_standard, wrong_remedy]
    method_class: anchor_assisted
    student_label: "automatic-reversal overclaim"
    c3_signal: "Not every flawed instruction warrants reversal."
    lawyer_confirmation: "Rule 61 disregards errors that do not affect substantial rights; Rule 51(d)(2) permits plain-error review only when substantial rights are affected."
  D:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags: [correct_answer]
    method_class: anchor_assisted
    student_label: "true and responsive"
    c3_signal: "Martha's objection was timely but vague; she did not state the matter and grounds."
    lawyer_confirmation: "FRCP 51(c)(1); FRCP 51(d)(1); FRCP 61."

residual_answer:
  letter: {key}
  reason: "The only true and responsive answer explains why Martha's vague objection failed to preserve the claimed jury-instruction error."

legal_leak_audit:
  - "Student-facing C3 logic uses the Gold Key and Silver Key rather than citing authority as the first-pass basis."
  - "No church-property, tithe, charitable-immunity, constitutional, or standing facts were added."
  - "All doctrine is confined to lawyer_confirmation and the Gold Key authority field."

gold_keys:
{json.dumps(gold_keys, ensure_ascii=False, indent=2).replace(chr(10), chr(10) + '  ')}

silver_keys:
{json.dumps(silver_keys, ensure_ascii=False, indent=2).replace(chr(10), chr(10) + '  ')}

remediation:
  card_id: "RC-CIVPROC-JURY-OBJECTION-01"
  title: "State the Matter and Grounds"
  signal: "A party objects to a jury instruction but only says it is prejudicial."
  student_move: "Ask whether the objection named the matter and grounds for the judge."
  tiny_rule: "Rule 51(c) requires a distinct matter and grounds; timeliness alone is not enough."
  trap: "Timely-but-vague objection."
  confidence: ANCHOR_ASSISTED

distilled_core_question: "{distilled_core_question}"
review_truth: "{review_truth}"

case_study_output:
  case_study_verdict: ANCHOR_SOLVE
  final_student_script: "Cut B because opponent response is irrelevant. Cut A because timely objection alone does not shift the burden to the judge. Cut C because not every flaw is prejudicial. D remains because Martha did not state the matter and grounds."
  dominant_trap: "A"
  pick_rate_note: "No measured focus-group rates supplied; all percentages are predicted seed values."

quality_control:
  - "outline_code_verified: 91090400 in OUTLINE_CODES_COMPLETE.md"
  - "json_blocks_parsed: true"
  - "key_consistency: D across frontmatter, correct answer, official_key, credited_answer, residual, final_student_script"
  - "pick_rates_sum: 100; all predicted"
  - "dominant_trap: A"
  - "controlled_fields_checked_against_vocab: true"
  - "review_truth_pure_rule_sentence: true"
  - "no_clutter_doctrine_added: true"

analytics_hooks:
  dominant_trap: "A"
  dominant_trap_mechanic: "timely objection shifts burden to judge"
  red_zone_dimensions: ["Jury instruction preservation", "Specific objection requirement", "Harmless and plain error", "Appellate review"]
  seed_note: "No measured focus-group rates supplied; all percentages are predicted seed values."
"""

case_study = f"""### 2. The 17-section student case study

#### program_frame
Martha's federal diversity van-lease case turns on appellate preservation of a jury-instruction objection. The student task is to decide whether a vague but timely objection is enough to make reversal likely.

#### student_access_test
A smart student can solve the item by using the taught Gold Key: a jury-instruction objection must state the matter and grounds, not merely say “prejudicial.” Choices that depend on opponent response or automatic reversal can be cut with the Silver Key.

#### question_data
- **Question ID:** {qid}
- **Subject:** Civil Procedure
- **Topic/Subtopic:** {topic} / {subtopic}
- **Outline code:** {outline_code} — Trial > Jury Instructions
- **Credited answer:** {key}
- **Bank validation:** PASS
- **Difficulty:** UNKNOWN because the source row supplied no difficulty value.

#### distilled_core_question
{distilled_core_question}

#### call_and_prediction
**Call:** Is the appellate court likely to reverse the judgment?  
**Prediction:** No. Martha did not preserve the claimed instruction error because her objection did not state the matter and grounds.

#### trigger_facts
- Martha objected before the jury was instructed and sent to deliberate.
- Martha said only that the instruction would be prejudicial.
- Martha did not identify the matter objected to or the grounds for the objection.
- The instruction concerned a peripheral procedural step.
- The jury found for Barnabas.

#### governing_c3_lane
Civil Procedure → Jury Trials → Jury Instructions → preservation of objection for appellate review.

#### choice_by_choice_walkthrough

"""
choice_blocks = {
    "A": ("Yes, because the judge was required to fix the instruction", "The choice rewards a vague objection just because it was timely.", "Lawyerly but backwards.", "“No, because Martha did not state the matter objected to or the grounds for the objection.”", "FRCP 51(c)(1) requires the objector to state the matter and grounds; Rule 51(d)(2) does not rescue this peripheral instruction error on these facts."),
    "B": ("No, because Barnabas did not respond", "The choice focuses on the wrong actor.", "Wrong-party distraction.", "“No, because Martha failed to preserve the objection by stating the matter and grounds.”", "Rule 51(b)(2) gives parties an opportunity to object on the record; an opposing party response is not required for preservation."),
    "C": ("Yes, because any flaw is prejudicial error", "The choice turns one flawed instruction into automatic reversal.", "Automatic-reversal overclaim.", "“Yes only if the preserved error affected substantial rights, or if an unpreserved instruction error qualifies as plain error.”", "Rule 61 disregards errors that do not affect substantial rights; Rule 51(d)(2) allows plain-error review only when substantial rights are affected."),
    "D": ("No, because Martha's objection did not distinctly identify the matter or grounds", "The choice matches the vague-objection fact and answers the appellate-preservation call.", "True and responsive.", "This is the residual answer.", "FRCP 51(c)(1) requires a distinct matter and grounds; FRCP 51(d)(1) allows assignment of error only after a proper objection."),
}
for letter, (title, signal, label, true_version, lawyer) in choice_blocks.items():
    case_study += f"""**{letter} — {title}**

1. **Student-accessible C3 signal:** {signal}
2. **Student label:** {label}
3. **True/responsive version would look like:** {true_version}
4. **Lawyer confirmation:** {lawyer}

"""
case_study += f"""#### residual_answer
**{key}** — Martha's objection was timely but not specific enough to preserve the claimed instruction error.

#### legal_leak_audit
- The student-facing path uses the Gold Key and Silver Key, not raw authority citations.
- No new constitutional, church-property, charitable-immunity, or standing issue was added.
- The underlying merits of the van lease do not affect the jury-instruction preservation rule.
- Drift audit: rule, issue, credited outcome, and trap mechanics preserved; surface changed from baker/wholesaler breach contract to Christian tutoring-center van lease.

#### final_student_script
Cut B because the opponent's response is irrelevant. Cut A because a timely objection alone does not shift the burden to the judge. Cut C because not every flawed instruction is prejudicial error. D remains because Martha did not state the matter and grounds.

#### remediation_card
**RC-CIVPROC-JURY-OBJECTION-01 — State the Matter and Grounds**  
Signal: a party objects to a jury instruction but only says it is prejudicial.  
Student move: ask whether the objection named the matter and grounds for the judge.  
Tiny rule: Rule 51(c) requires a distinct matter and grounds; timeliness alone is not enough.  
Trap: timely-but-vague objection.  
Confidence: ANCHOR_ASSISTED.

## Gold Key(s)

"""
for gk in gold_keys:
    case_study += f"- **{gk['id']}:** {gk['statement']} Trigger: {gk['trigger']}. Last-minute review: true.\n"
case_study += "\n## Silver Key(s)\n\n"
for sk in silver_keys:
    case_study += f"- **{sk['id']}:** {sk['statement']} Trigger: {sk['trigger']}. Last-minute review: true.\n"
case_study += f"""

#### qa_checklist
- [x] Key consistency: {key} appears as credited answer, official key, residual answer, and final student script.
- [x] Pick-rate honesty: all four choices have predicted seed percentages summing to 100.
- [x] Dominant trap named: A.
- [x] Each distractor has exactly one mold and one filter.
- [x] Outline code verified: {outline_code}.
- [x] Review Truth is a pure rule sentence.
- [x] No clutter doctrine added.
- [x] All three JSON blocks parse.

#### wrong_answer_recovery_paths
- **A:** Return to the Gold Key and ask whether Martha stated the matter and grounds.
- **B:** Return to the Silver Key and ask whether the choice answers Martha's preservation problem.
- **C:** Return to harmless/plain error and ask whether the flaw automatically affects substantial rights.

#### outline_mastery_map
{outline_code} — Trial > Jury Instructions. This item teaches specific objection preservation under FRCP 51(c), with harmless/plain error as the adjacent appellate-review frame.

#### crossover_intersection_map
Jury instruction preservation intersects appellate preservation, harmless error, and plain error.

#### review_truth
{review_truth}
"""

c3_annotation = {
    "question_id": qid,
    "subject": subject,
    "credited_answer": key,
    "outline_code": outline_code,
    "distilled_core_question": distilled_core_question,
    "review_truth": review_truth,
    "c3": {
        "verdict": "ANCHOR_SOLVE",
        "residual": key,
        "agrees_with_key": True,
        "governing_law_type": "RULE",
        "deciding_phase": "CUT",
        "confidence": "ANCHOR_ASSISTED",
        "tension_axis": "Does a timely but vague objection force the judge to fix a jury instruction, or must the objecting party state the matter and grounds?",
        "is_fork": False,
        "fork_type": None,
        "call_heuristic": "Preservation questions reward the party who gave the trial court a usable chance to correct the claimed error.",
        "difficulty": "UNKNOWN",
        "distractors": [
            {"choice": "A", "filter_broken": "NOT_TRUE", "mold": "EAR_FALSITY", "architecture": "backwards", "card_ref": "GK-CIVIL_PROCEDURE-JURY-OBJECTION-01", "explanation": "Timely objection alone does not shift the burden to the judge; the objector must state the matter and grounds."},
            {"choice": "B", "filter_broken": "NOT_RESPONSIVE", "mold": "ISSUE_SENSE", "architecture": "wrong_element", "card_ref": "SK-CIVIL_PROCEDURE-JURY-OBJECTION-01", "explanation": "The opponent's response is irrelevant; preservation depends on what the objector placed on the record."},
            {"choice": "C", "filter_broken": "NOT_TRUE", "mold": "EAR_OVERCLAIM", "architecture": "tiered_absolute", "card_ref": "GK-CIVIL_PROCEDURE-JURY-OBJECTION-01", "explanation": "Not every flawed instruction warrants reversal; the error must be preserved and substantial, or qualify as plain error."},
        ],
        "analyzer_notes": {
            "drift_audit": "Rule, issue, credited outcome, and trap mechanics preserved; surface changed from baker/wholesaler breach contract to Christian tutoring-center van lease. No clutter doctrine added.",
            "transformed_from": transformed_from,
            "letter_map": letter_map_string,
            "difficulty_source_defect": "No difficulty value supplied in source row; using UNKNOWN.",
            "authority_floor": "FRCP 51(b)(2), 51(c)(1), 51(d)(1), 51(d)(2), and 61.",
        },
        "gold_keys": gold_keys,
        "silver_keys": silver_keys,
    },
}

program_elements = {
    "question_id": qid,
    "subject": subject,
    "outline_code": outline_code,
    "distilled_core_question": distilled_core_question,
    "review_truth": review_truth,
    "tension": "Timely objection versus specific objection.",
    "traps": [
        {"choice": "A", "mold": "EAR_FALSITY", "architecture": "backwards", "why_attractive": "A student who remembers that objections must be timely may think the court then has to fix the instruction for the objecting party. The breaker is that Rule 51(c) also requires the objector to state the matter and grounds distinctly.", "focus_group_pct": 29, "pct_provenance": "predicted"},
        {"choice": "B", "mold": "ISSUE_SENSE", "architecture": "wrong_element", "why_attractive": "A student may treat the opponent's silence as a fairness problem because trial objections often feel like a debate between parties. The breaker is that the preservation rule focuses on what the objector placed on the record for the judge, not whether the opponent answered.", "focus_group_pct": 16, "pct_provenance": "predicted"},
        {"choice": "C", "mold": "EAR_OVERCLAIM", "architecture": "tiered_absolute", "why_attractive": "A student may overgeneralize from the word error and assume any flawed instruction justifies reversal. The breaker is that unpreserved or non-substantial instruction errors do not automatically disturb the verdict.", "focus_group_pct": 12, "pct_provenance": "predicted"},
    ],
    "remediation_card": {"card_id": "RC-CIVPROC-JURY-OBJECTION-01", "title": "State the Matter and Grounds", "signal": "A party objects to a jury instruction but only says it is prejudicial.", "student_move": "Ask whether the objection named the matter and grounds for the judge.", "tiny_rule": "Rule 51(c) requires a distinct matter and grounds; timeliness alone is not enough.", "trap": "Timely-but-vague objection.", "confidence": "ANCHOR_ASSISTED"},
    "red_zone_dimensions": ["Jury instruction preservation", "Specific objection requirement", "Harmless and plain error", "Appellate review"],
}

program_intelligence = {
    "question_id": qid,
    "subject": subject,
    "outline_code": outline_code,
    "distilled_core_question": distilled_core_question,
    "review_truth": review_truth,
    "wrong_answer_paths": [
        {"choice": "A", "filter_broken": "NOT_TRUE", "mold": "EAR_FALSITY", "why_a_student_picks_this": "Timely objection sounds enough because trial lawyers must object before deliberations.", "skipped_move": "Check whether the objection named the matter and grounds.", "recovery_step": "Use the Gold Key: Rule 51(c) requires the matter and grounds, and timeliness alone does not shift the burden to the judge."},
        {"choice": "B", "filter_broken": "NOT_RESPONSIVE", "mold": "ISSUE_SENSE", "why_a_student_picks_this": "Opponent response sounds fair because objections happen in an adversarial exchange.", "skipped_move": "Return to the preservation call and ask what Martha put on the record.", "recovery_step": "Use the Silver Key: if the objector did not name the matter and grounds, cut choices that reward the vague objection."},
        {"choice": "C", "filter_broken": "NOT_TRUE", "mold": "EAR_OVERCLAIM", "why_a_student_picks_this": "The word error can trigger an automatic-reversal instinct.", "skipped_move": "Separate flaw from remedy.", "recovery_step": "Use harmless-error and plain-error framing: reversal requires preserved substantial error or plain error affecting substantial rights."},
    ],
    "drill_seeds": [
        {"drill_type": "rewrite", "target_skill": "Specific jury-instruction objection", "prompt": "Rewrite Martha's objection so it states both the matter objected to and the grounds for the objection.", "answer": "Example: 'Martha objects to the instruction on the peripheral procedural step because it misstates the sequence required by the lease-evidence rule and would allow the jury to decide on an improper basis.'"},
        {"drill_type": "classification", "target_skill": "Preservation versus harmless/plain error", "prompt": "A party objects before deliberations but only says, 'That instruction is unfair.' Is the objection preserved?", "answer": "No. The objection is timely but not specific; Rule 51(c) requires the matter and grounds."},
    ],
    "trap_tags": {"forensic_tags": ["timely-but-vague objection", "court-burden reversal", "automatic-reversal overclaim", "opponent-response distraction"], "misconception_tags": ["timeliness equals preservation", "opponent must answer objection", "any flawed instruction means reversal"]},
    "component_routing": [
        {"destination_key": "red_zones", "route": "Civil Procedure > Jury Trials > Jury Instructions", "component_tags": ["jury instruction preservation", "specific objection"]},
        {"destination_key": "trap_forensics", "route": "Appeal preservation traps", "component_tags": ["timely-but-vague objection", "court-burden reversal"]},
        {"destination_key": "outline_atlas", "route": "91090400 Trial > Jury Instructions", "component_tags": ["FRCP 51(c)", "Rule 61"]},
        {"destination_key": "review_cards", "route": "FRCP 51(c) objection card", "component_tags": ["matter and grounds"]},
        {"destination_key": "drills", "route": "Objection-preservation drills", "component_tags": ["CUT wrong answers"]},
    ],
    "crossovers": ["Appellate preservation", "Harmless error", "Plain error"],
    "gold_keys": gold_keys,
    "silver_keys": silver_keys,
    "outline_mastery": {"placement": "91090400 Trial > Jury Instructions", "this_item_teaches": "A jury-instruction objection must be both timely and specific; saying only 'prejudicial' does not state the matter and grounds.", "fills": ["Specific objection requirement", "Preservation for appeal"], "adjacent_to_master": ["Harmless error", "Plain error", "Motion for new trial"]},
}

pass2 = f"""## PASS-2 FIVE BLOCKS

### 1. Question YAML

```yaml
{question_yaml}
```

{case_study}

### 3. c3_annotation

```json
{json.dumps(c3_annotation, ensure_ascii=False, indent=2)}
```

### 4. program_elements

```json
{json.dumps(program_elements, ensure_ascii=False, indent=2)}
```

### 5. program_intelligence

```json
{json.dumps(program_intelligence, ensure_ascii=False, indent=2)}
```
"""

markdown = frontmatter + pass1 + "\n" + pass2
out = Path(r"C:\FOC\Workspace\Finished\CQ14069.md")
out.write_text(markdown, encoding="utf-8")

# Validate JSON blocks.
for idx, name in [(3, "c3_annotation"), (4, "program_elements"), (5, "program_intelligence")]:
    pattern = rf"### {idx}\. {name}\s*\n\s*```json\s*\n(.*?)\n```"
    m = re.search(pattern, markdown, re.S)
    if not m:
        raise SystemExit(f"Missing JSON block {name}")
    json.loads(m.group(1))

assert markdown.startswith("---\n")
assert f"key: {key}" in markdown
assert f"official_key: {key}" in markdown
assert f'"credited_answer": "{key}"' in markdown
assert f'"residual": "{key}"' in markdown
assert f"**D** (original key: A)" in markdown
assert "Drift audit:" in markdown
assert sum(v["value"] for v in selection_percentages.values()) == 100
assert all(v["provenance"] == "predicted" for v in selection_percentages.values())

print(f"Wrote {out}")
print("Validated 3 JSON blocks and key/pick-rate consistency.")
