---
name: barmatrix-hearsay-christian-qa
description: Binding QA gate for BarMatrix Hearsay Christian Study Group question generation. Load before generating or repairing any hearsay_finished_question_draft artifact.
---

# BarMatrix Hearsay Christian QA Skill

Run this checklist after drafting and before finalizing every Hearsay question. Fix every miss. Do not ship a file that fails a required gate.

## 1. Output-mode gate

- Batch mode returns exactly three YAML documents separated by `---` and no narrative outside YAML.
- Single-slot mode returns exactly one YAML document and no narrative outside YAML.
- Full C3 study mode returns all five named blocks and all JSON blocks parse.
- No output may be labeled final, gold, official, publishable, attorney-reviewed, or student-ready.
- `review_status` must be `draft_internal_only`.
- `source_mode` must be `synthetic_from_tension_not_source_question` unless a transform task expressly says otherwise.

## 2. Required top-level YAML sections

Every Hearsay YAML artifact must contain these sections, in this order:

1. `artifact_type`
2. `version`
3. `question_id`
4. `review_status`
5. `source_mode`
6. `metadata`
7. `christian_surface_profile`
8. `mechanics`
9. `statement_map`
10. `layer_map`
11. `route_gate_checklist`
12. `question`
13. `answer_array_geometry`
14. `answer_choice_forensics`
15. `explanation`
16. `student_learning_layer`
17. `qa_self_audit`
18. `copy_safety`
19. `human_review_flags`
20. `source_law_trace`
21. `taxonomy_growth_delta`

## 3. Hearsay mechanics gate

Reject if any are missing or inconsistent:

- `official_outline_node`
- `primary_tension_id`
- `statement_count`
- `declarant_count`
- `layer_count`
- `evidence_vehicle`
- `offered_purpose`
- `route_type`
- `admissibility_scope`
- `wrong_answer_mechanic`
- `repair_id`
- `confrontation_flag`
- `california_distinction_flag`

## 4. Statement-routing gate

For each offered evidence item, the artifact must identify:

- exact statement unit;
- declarant;
- listener;
- asserted proposition;
- offered proposition;
- truth/nontruth/dual status;
- evidence vehicle;
- route;
- result;
- admissibility scope;
- whether a limiting instruction is needed.

Reject if the analysis says only “hearsay” or “exception applies” without statement-level routing.

## 5. Layer gate

Every layer needs its own route.

Reject if:

- a record, report, chart, transcript, tape, computer record, or certificate is admitted without checking embedded statements;
- the container route is treated as curing an outsider statement;
- the layer count does not match the statement map;
- the explanation does not name the failing link in a chain-pass/fail item.

## 6. Purpose gate

Reject if:

- the offered purpose is missing;
- asserted proposition and offered proposition are the same in a nontruth item;
- a nontruth item is explained by exception-hunting;
- limited-purpose evidence is treated as all-purpose evidence;
- the item fails to state whether the answer is truth, notice-only, effect-only, impeachment-only, read-only, dual-route, or inadmissible.

## 7. Confrontation gate

For every criminal, testimonial, truth-use, absent-declarant fact pattern, the artifact must address:

- criminal case;
- testimonial status;
- truth use;
- declarant absence;
- prior opportunity to cross;
- whether the hearsay route and Confrontation result differ.

Confrontation is not a hearsay exception. It is a constitutional overlay.

Current-law checkpoint: expert-basis / forensic-basis confrontation items must flag `Smith v. Arizona` or current-law review.

## 8. California gate

For California, mixed, or comparison items:

- flag California mode in metadata;
- identify whether the difference is label-only or outcome-changing;
- use California statutory labels only when the packet supports them;
- do not import FRE present-sense-impression or residual-exception shortcuts into California;
- set `needs_human_legal_review: true` and `california_review_required: true`.

## 9. Christian surface gate

The item must be openly Christian.

Pass requires at least three of these, unless legally unsafe:

- Christian setting or event;
- popular Bible names;
- Scripture, hymn, worship, devotional, mission, retreat, fellowship, or Christian bar-prep context;
- Christian student-facing program frame;
- faith-forward object, place, or activity;
- Christian memory hook that does not replace legal reasoning.

Reject if:

- the Christian flavor is only one renamed character;
- the surface creates First Amendment, privilege, church-governance, tax, donor, charitable-immunity, or religious-discrimination clutter not required by the slot;
- the item uses antagonist-coded Bible names;
- theology becomes the legal reason;
- faith facts vilify a denomination or group.

## 10. Answer-choice gate

- Exactly four choices.
- Exactly one best answer.
- Correct answer breaks neither True nor Responsive.
- Each wrong answer has exactly one primary failure axis.
- Each wrong answer has WAL ID, C3 filter, mold code, plausible attraction, wrongness reason, true/responsive alternative, repair ID, and pick-rate object.
- Wrong answers are mechanically distinct.
- The dominant trap is named.
- Pick rates are not all null.
- Predicted pick rates are clearly labeled as predicted.

## 11. C3 student-access gate

Do not present lawyer-only doctrine as visible C3 structure.

A student-facing cut is allowed only if the defect is visible from:

1. grammar or internal contradiction;
2. an overclaim in the answer text;
3. a named taught Gold Key or Silver Key;
4. the stem/call relation.

Otherwise mark the choice `anchor_assisted`, `pure_anchor`, `anchor_gap`, or `legal_leak` as appropriate.

## 12. Controlled-vocabulary gate

- Every C3 controlled field must come from `controlled_vocabularies.md` verbatim.
- Do not pluralize, paraphrase, or invent controlled values.
- If a Hearsay-specific field needs a value not in the vocabulary, use `taxonomy_growth_delta` with `canonicalization_status: proposed_only`.
- `confidence` must match the deciding method class.
- `component_routing.destination_key` must be one of the controlled destination keys.

## 13. Outline-code gate

- Every outline code must appear verbatim in `OUTLINE_CODES_COMPLETE.md`.
- Use `33040000` for broad Hearsay if no deeper valid code fits.
- Use `33040400` for Confrontation Clause as a Hearsay bar.
- Never use a plausible-looking code not in the file.
- If no valid code fits, use `00000000` and explain in `qa_self_audit.warning_flags`.

## 14. Legal authority gate

- Legal authority belongs only in lawyer-confirmation / source-law trace, not in student C3 logic.
- Use real authority only: FRE rule numbers, California Evidence Code sections, constitutional provisions, or certain leading cases.
- Do not fabricate case names, citations, or holdings.
- If authority is uncertain, state the rule plainly and flag attorney review.
- If authority contradicts the proposed answer, set the artifact to human review and do not bend analysis.

## 15. Copy-safety gate

Reject or flag if:

- source question text was copied;
- source answer choices were copied;
- distinctive source facts, names, numbers, dialogue, sequence, or rhythm were reconstructed;
- a handoff fact frame was treated as final wording instead of a seed mechanic;
- similarity risk is medium/high without reviewer notes.

## 16. Student-learning layer gate

Required:

- distilled core question;
- review truth;
- BarMatrix takeaway;
- Gold Keys when anchor-dependent;
- Silver Keys when a navigation move decides the item;
- repair modules connected to REP IDs;
- drill seeds tied to wrong choices;
- next-item routing.

The Review Truth must be a pure student-facing rule sentence. It must not mention exports, source rows, prompt artifacts, or unchanged content.

## 17. Final pass checklist

Before output, verify:

- Christian surface present and intentional.
- No religious clutter doctrine introduced.
- Exact statement identified.
- Offered purpose identified.
- Every layer routed.
- Vehicle/scope checked.
- One best answer.
- All wrong answers mechanically distinct.
- No record-container cure error.
- No Confrontation omission.
- No California/FRE confusion.
- No unsupported authority.
- No source copy or close paraphrase.
- Human legal review and calibration review remain true.
