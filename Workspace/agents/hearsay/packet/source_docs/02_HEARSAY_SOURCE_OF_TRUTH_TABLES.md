# Hearsay Source-of-Truth Tables — Consolidated

This file consolidates the individual source-of-truth Markdown files so the ChatGPT Project stays below the 40-file cap.


---

# SOURCE FILE: `hearsay_master_analysis.md`

# Evidence Hearsay Master Analysis — BarMatrix™

## Core thesis

Hearsay is not a list of exceptions. It is a **statement-routing system**.

Every Hearsay MCQ is a routing problem across seven axes:

1. **Statement identity** — What exact words, writing, conduct, record entry, certification, transcript, or embedded assertion is being offered?
2. **Declarant identity** — Who made that assertion, and is the declarant a person?
3. **Offered purpose** — Is the statement offered for truth, notice, effect, knowledge, state of mind, impeachment, or some other nontruth use?
4. **Layer count** — Is this single hearsay, double hearsay, or a statement inside a record/report/transcript/recording?
5. **Route type** — Exclusion/exemption, 803 exception, 804 exception, nontruth use, declarant impeachment, policy/completeness route, or constitutional overlay?
6. **Vehicle and scope** — Is the evidence admitted as testimony, read-only statement, record exhibit, duplicate, transcript, public certificate, or limited-purpose proof?
7. **Constitutional or California overlay** — Does Confrontation, California statutory structure, secondary evidence, or expert-basis hearsay change the answer?

The uploaded two-part Hearsay dataset proves the point: the hardest rows are not obscure exceptions. They are **routing failures** where one layer works and another fails, the evidence is admitted for only one purpose, or the wrong answer names a real exception at the wrong scope.

## Official scope

The California Bar Evidence MCQ content map places **Hearsay at 25%** of Evidence multiple-choice coverage and states that the Evidence topics listed are illustrative, not exhaustive, with the Federal Rules of Evidence assumed for all questions unless the question states otherwise. The Hearsay section includes the hearsay rule, conduct as hearsay, multiple hearsay, unavailability, prior witness statements, opposing-party statements, nonhearsay purposes, unavailability-required exceptions, availability-independent exceptions, and the Confrontation Clause.

## Dataset profile

- Uploaded hearsay rows reviewed: **60**
- Question range: **Q92–Q151**
- Part 1 rows: **30**
- Part 2 rows: **30**
- Average correct: **61.6%**
- Hard rows under 55%: **16**
- Correct answer distribution: **A 18, B 16, C 12, D 14**

## Cluster performance

| Pillar | Rows | Avg Correct | Range | Hard Q# |
| --- | --- | --- | --- | --- |
| A. In General | 7 | 44.3% | 17-63% | Q105, Q116, Q117 |
| B1. Prior statement of witness | 6 | 59.5% | 43-74% | Q99, Q125 |
| B2. Opposing-party statements | 8 | 61.5% | 43-82% | Q119, Q130, Q148 |
| B3. Non-hearsay purposes / declarant impeachment | 8 | 61.9% | 27-76% | Q120 |
| C1. Exceptions requiring unavailability | 4 | 70.0% | 65-79% | none |
| C2. Exceptions not requiring unavailability | 26 | 65.9% | 22-91% | Q94, Q104, Q127, Q132, Q138, Q139 |
| D. Confrontation Clause | 1 | 51.0% | 51-51% | Q144 |

## Hardest diagnostic rows

| Q# | Part | Correct % | Top Wrong | Tension | Mechanic | Primary trap |
| --- | --- | --- | --- | --- | --- | --- |
| Q116 | pt1 | 17% | C (42%) | HS-CHAIN-FORMER-TESTIMONY-FAIL | Guard transcript fails former-testimony route because store lacked party/opportunity; agency admission fails because employment ended. | Former-testimony overclaim; inner instruction rescuing outer transcript. |
| Q94 | pt1 | 22% | A (49%) | HS-VEHICLE-CONTENTS | Custodian testimony about invoice contents excluded; proponent must produce records or account for absence when proving contents. | Business-record overreach; first-hand-contents overclaim; self-serving red herring. |
| Q105 | pt1 | 27% | B (58%) | HS-CHAIN-WRONG-LISTENER | Manager notice link might work, but resident-to-tenant layer fails and wrong listener prevents notice route. | Wrong-listener notice; partial-chain success. |
| Q120 | pt1 | 27% | A (65%) | HS-PURP-NOTICE-ROUTINE | Letter copy offered to show notice and routine mailing practice, not truth/content; duplicate allowed. | Business-record label addiction; best-evidence false negative. |
| Q117 | pt1 | 29% | B (38%) | HS-CHAIN-THREAT-OUTERFAIL | Defendant’s threat might be party admission, but deceased’s retelling to plaintiff has no exception. | Inner-party-admission tunnel vision; state-of-mind false route. |
| Q125 | pt2 | 43% | B (33%) | HS-801D1-PRIOR-ID-CROSS-FAIL | Prior ID fails because witness refuses to testify and is not subject to cross about the statement. | Physical presence equals cross-examination; prior-ID shortcut. |
| Q130 | pt2 | 43% | B (25%) | HS-OPP-PARTY-POLICY-DECOY | Plumber’s offer/reaction admitted as party admission; no disputed claim/settlement and no remedial measure actually taken. | Settlement/remedial-measure false exclusion. |
| Q127 | pt2 | 44% | B (35%) | HS-VEHICLE-TREATISE-EXHIBIT | Treatise statements may be read but treatise itself is not received as exhibit. | Learned treatise all-or-nothing; jury can inspect exhibit overclaim. |
| Q132 | pt2 | 47% | C (38%) | HS-EXPERT-BASIS-NOT-SUBSTANTIVE | Doctor’s letter may support expert basis but is not itself admissible for truth; not business record. | Expert basis becomes exhibit; business-record overclaim. |
| Q99 | pt1 | 50% | A (30%) | HS-IMPEACH-PIS-LIMITED | Cellmate testimony admissible to impeach friend’s trial testimony, not as substantive statement against interest because declarant available/subject to recall. | Impeachment/substantive merger; availability confusion. |
| Q138 | pt2 | 50% | B (35%) | HS-DUAL-PSI-RECORDED-RECOLLECTION | License-number dictation qualifies as present sense impression and recorded recollection. | Route underuse; memory loss defeats PSI false assumption. |
| Q139 | pt2 | 50% | D (41%) | HS-RECORD-PERSONAL-NOTES-FAIL | Self-initiated notes not business records and no recorded-recollection foundation. | Business-record flavor; immunity/trustworthiness decoy. |
| Q144 | pt2 | 51% | A (24%) | HS-CONF-VEHICLE-SORT | Routine computerized bank records are nontestimonial; witness statements/grand jury/ID vehicles testimonial. | Authentication equals confrontation compliance; business record/source confusion. |
| Q104 | pt1 | 52% | B (38%) | HS-VEHICLE-LEARNED-TREATISE-READ | Reliable treatise passage can be read/substantive through expert; channel is read/use, not free exhibit. | Basis-only underuse; expert exhibit confusion. |
| Q148 | pt2 | 53% | B (31%) | HS-OPP-PARTY-MEDPAY-DECOY | Defendant’s immediate payment statement admitted as party admission; no settlement dispute/medical payment exclusion does not bar admission of accompanying fault statement in this setup. | Payment/settlement exclusion overread. |
| Q119 | pt1 | 54% | A (20%) | HS-OPP-AUTHORIZED-CONDITIONAL | Agent’s acceptance statement admissible if total evidence supports actual/apparent authority. | Judge-preponderance overrequirement; statement alone proves agency overclaim. |

## What makes Hearsay uniquely difficult

### 1. The statement is rarely the only evidence object

The stem often offers a **vehicle**: a note, transcript, hospital chart, police report, tape, certified absence, computerized record, registration, letter copy, or witness’s testimony about a record. The wrong answer names the vehicle instead of the statement.

Example architecture:

```text
Witness testimony → document/record/transcript → declarant statement → embedded statement
```

A correct answer must route each level. The uploaded set’s hardest chain rows — Q105, Q116, Q117, and Q146 — all punish students who stop after one successful route.

### 2. Nontruth purpose is broader than “effect on listener”

The sample shows at least six nontruth purposes:

- notice;
- effect on listener;
- reason for action;
- bias/motive;
- knowledge/mens rea;
- circumstantial identity.

Q120 is the model trap: the correct answer is not “business record,” even though the letter came from regular files. The letter copy is offered to show notice/routine practice, not the truth of the letter’s contents.

### 3. Exception labels are not enough

The hard rows frequently give a salient setting that suggests an exception, then make the exact statement fall outside the exception:

- dying person mentions a loan, not the cause/circumstances of death;
- hospital setting contains a fault narrative not pertinent to treatment;
- official report contains an outsider eyewitness statement;
- learned treatise can be read but not handed to the jury;
- personal notes are not business records and not recorded recollection.

### 4. Admissibility scope is an answer-choice dimension

Hearsay answers must often specify scope:

```text
inadmissible
admissible for impeachment only
admissible for notice only
admissible substantively
admissible for both impeachment and substance
admissible only if read, not admitted as exhibit
admissible if each layer is separately covered
admissible but subject to Confrontation Clause
```

Any blueprint that uses only “admissible / inadmissible” is too shallow for Hearsay.

### 5. Confrontation is not a hearsay exception

Confrontation Clause questions are vehicle-sorting questions. Q144 is the template: four authenticated evidence vehicles are presented, but only routine computerized records avoid the testimonial-hearsay problem. In modern confrontation doctrine, the prosecution cannot use testimonial hearsay against a criminal defendant without unavailability and prior opportunity for cross-examination, and Smith v. Arizona makes expert-basis hearsay a current high-priority route.

## Build target

This master packet sets a **1,200-slot production blueprint** for Hearsay.

This is intentionally larger than the 60-row sample. Hearsay needs a large blueprint because each official outline node must be tested across:

- federal baseline;
- California distinction;
- civil/criminal;
- single-layer vs multi-layer;
- nontruth vs truth;
- document/record/tape/transcript vehicle;
- limited-purpose versus all-purpose admission;
- Confrontation overlay;
- decoy exception labels.

## Official-node production allocation

| Node | Section | Topic | Canonical Slots | Sample Q# |
| --- | --- | --- | --- | --- |
| HS-A1 | A. In General | Hearsay rule | 44 | 92, 101, 102, 105, 120, 121, 145 |
| HS-A2 | A. In General | Conduct as hearsay | 20 | 102, 124 |
| HS-A3 | A. In General | Multiple hearsay | 50 | 98, 105, 116, 117, 123, 146 |
| HS-A4 | A. In General | Unavailability necessary/unnecessary | 30 | 99, 106, 111, 125, 149 |
| HS-B1a | B. Hearsay Exemptions | Prior sworn inconsistent statement | 28 | 99, 114, 128, 137 |
| HS-B1b | B. Hearsay Exemptions | Prior consistent statement | 22 | — |
| HS-B1c | B. Hearsay Exemptions | Prior identification | 28 | 125, 149 |
| HS-B2a | B. Hearsay Exemptions | Adoptive statements | 28 | 124 |
| HS-B2b | B. Hearsay Exemptions | Authorized statements | 28 | 119 |
| HS-B2c | B. Hearsay Exemptions | Vicarious statements | 38 | 93, 142, 116 |
| HS-B2d | B. Hearsay Exemptions | Co-conspirator statements | 31 | 98 |
| HS-B2e | B. Hearsay Exemptions | Direct party admissions | 38 | 110, 130, 133, 137, 148 |
| HS-B3a | B. Hearsay Exemptions | Effect on listener | 44 | 92, 105, 108, 120, 121, 141 |
| HS-B3b | B. Hearsay Exemptions | Declarant/victim state of mind as nontruth/condition proof | 35 | 100, 112, 118 |
| HS-B3c | B. Hearsay Exemptions | Legally operative facts and verbal acts | 28 | 119, 117, 145 |
| HS-B3d | B. Hearsay Exemptions | Statements showing declarant’s knowledge | 22 | 145, 121 |
| HS-B3e | B. Hearsay Exemptions | Absence of mistake / mens rea | 22 | 121, 145 |
| HS-C1a | C. Hearsay Exceptions requiring unavailability | Former testimony | 35 | 106, 116 |
| HS-C1b | C. Hearsay Exceptions requiring unavailability | Statement against interest | 35 | 98, 111, 140 |
| HS-C1c | C. Hearsay Exceptions requiring unavailability | Dying declaration | 25 | 122 |
| HS-C1d | C. Hearsay Exceptions requiring unavailability | Statement of personal/family history | 16 | — |
| HS-C1e | C. Hearsay Exceptions requiring unavailability | Forfeiture by wrongdoing | 28 | — |
| HS-C2a | C. Hearsay Exceptions not requiring unavailability | Business records | 50 | 94, 95, 113, 123, 139, 143 |
| HS-C2b | C. Hearsay Exceptions not requiring unavailability | Present sense impression | 28 | 109, 138 |
| HS-C2c | C. Hearsay Exceptions not requiring unavailability | Excited utterance | 31 | 96, 97, 129, 147 |
| HS-C2d | C. Hearsay Exceptions not requiring unavailability | Mental, emotional, or physical condition | 35 | 100, 112, 118 |
| HS-C2e | C. Hearsay Exceptions not requiring unavailability | Medical diagnosis or treatment | 35 | 134, 147, 150 |
| HS-C2f | C. Hearsay Exceptions not requiring unavailability | Past recollection recorded | 35 | 115, 135, 138, 139 |
| HS-C2g | C. Hearsay Exceptions not requiring unavailability | Public records and reports | 44 | 107, 126, 131, 136, 146 |
| HS-C2h | C. Hearsay Exceptions not requiring unavailability | Learned treatises | 28 | 104, 127 |
| HS-C2i | C. Hearsay Exceptions not requiring unavailability | Ancient documents | 16 | — |
| HS-C2j | C. Hearsay Exceptions not requiring unavailability | Commercial lists or compilations | 13 | — |
| HS-C2k | C. Hearsay Exceptions not requiring unavailability | Prior judgments | 16 | — |
| HS-C2l | C. Hearsay Exceptions not requiring unavailability | Residual exception | 22 | — |
| HS-C2m | C. Hearsay Exceptions not requiring unavailability | Rule of completeness | 31 | — |
| HS-D1 | D. Confrontation Clause | Testimonial hearsay gate | 50 | 144 |
| HS-D2 | D. Confrontation Clause | Forensic/expert-basis statements | 35 | — |
| HS-D3 | D. Confrontation Clause | Emergency vs past-facts statements | 28 | — |
| HS-D4 | D. Confrontation Clause | Records and certificates | 28 | 126, 131, 144 |

## Handoff principle

Do not build Hearsay questions by asking “Which exception applies?” Build them by asking:

> What is the statement, who made it, why is it offered, how many layers exist, what route covers each layer, what vehicle presents it, what scope does the jury get, and is there a constitutional or California overlay?


---

# SOURCE FILE: `hearsay_handoff_packet.md`

# Hearsay Master Handoff Packet — BarMatrix™

## Build status

This packet is the canonical operating core for the Hearsay subtopic.

Inputs used:

- Evidence_hearsay_pt1.xlsx
- Evidence_hearsay_pt2.xlsx
- California Bar Evidence MCQ content map
- Federal Rules of Evidence 801–807, 105, 106, 1002
- California hearsay and secondary evidence anchors
- Current Confrontation Clause/expert-basis source law including Smith v. Arizona

## Final output inventory

- hearsay_master_analysis.md
- hearsay_official_outline_crosswalk.md
- hearsay_tension_matrix.md
- hearsay_fact_triggers.md
- hearsay_wrong_answer_mechanics.md
- hearsay_bootcamp_repairs.md
- hearsay_row_diagnostics.md
- hearsay_question_blueprint.md
- hearsay_california_distinctions.md
- hearsay_confrontation_matrix.md
- hearsay_layering_engine.md
- source_appendix.md
- hearsay_master_blueprint.xlsx

## Production target

- Uploaded rows analyzed: 60
- Tension rows: 80
- Fact triggers: 155
- Wrong-answer mechanics: 48
- Repair modules: 49
- Canonical production slots: 1200

## Non-negotiable tagging fields

Every Hearsay item must include:

- official_outline_node
- primary_tension_id
- statement_count
- declarant_count
- layer_count
- evidence_vehicle
- offered_purpose
- route_type
- admissibility_scope
- wrong_answer_mechanic
- repair_id
- confrontation_flag
- california_distinction_flag

## First build priority

1. Hearsay purpose/nontruth routes.
2. Hearsay chains and embedded statements.
3. Prior statements of witnesses.
4. Opposing-party statement architecture.
5. Business/public records and absence routes.
6. Recorded recollection / learned treatise / read-only vehicles.
7. Former testimony and statement against interest.
8. Confrontation vehicle sorting.
9. California distinction toggles.

## QA rejection rules

Reject any item if:

1. it does not identify the exact statement;
2. it uses a generic hearsay label without layer analysis;
3. it fails to specify offered purpose;
4. it treats admissibility as all-or-nothing when the evidence is limited-purpose;
5. it admits a record without checking embedded statements;
6. it uses an exception label without subject-matter fit;
7. it ignores Confrontation in criminal testimonial statements;
8. it imports a California distinction into a federal baseline item without saying so.

## Implementation instruction

Use the 1,200-slot workbook as the canonical production roadmap. Use the 80 tension rows and 48 wrong-answer mechanics as the diagnostic engine. Use bootcamp repairs as the adaptive study routing layer.


---

# SOURCE FILE: `hearsay_official_outline_crosswalk.md`

# Hearsay Official Outline Crosswalk — BarMatrix™

The crosswalk below uses the California Bar Evidence MCQ content map as the canonical index for Hearsay. Slot counts are production targets, not predictions.

| Node | Official Section | Official Topic | Operating Description | Sample Uploaded Rows | Canonical Production Slots |
| --- | --- | --- | --- | --- | --- |
| HS-A1 | A. In General | Hearsay rule | 44 | 92, 101, 102, 105, 120, 121, 145 |
| HS-A2 | A. In General | Conduct as hearsay | 20 | 102, 124 |
| HS-A3 | A. In General | Multiple hearsay | 50 | 98, 105, 116, 117, 123, 146 |
| HS-A4 | A. In General | Unavailability necessary/unnecessary | 30 | 99, 106, 111, 125, 149 |
| HS-B1a | B. Hearsay Exemptions | Prior sworn inconsistent statement | 28 | 99, 114, 128, 137 |
| HS-B1b | B. Hearsay Exemptions | Prior consistent statement | 22 | — |
| HS-B1c | B. Hearsay Exemptions | Prior identification | 28 | 125, 149 |
| HS-B2a | B. Hearsay Exemptions | Adoptive statements | 28 | 124 |
| HS-B2b | B. Hearsay Exemptions | Authorized statements | 28 | 119 |
| HS-B2c | B. Hearsay Exemptions | Vicarious statements | 38 | 93, 142, 116 |
| HS-B2d | B. Hearsay Exemptions | Co-conspirator statements | 31 | 98 |
| HS-B2e | B. Hearsay Exemptions | Direct party admissions | 38 | 110, 130, 133, 137, 148 |
| HS-B3a | B. Hearsay Exemptions | Effect on listener | 44 | 92, 105, 108, 120, 121, 141 |
| HS-B3b | B. Hearsay Exemptions | Declarant/victim state of mind as nontruth/condition proof | 35 | 100, 112, 118 |
| HS-B3c | B. Hearsay Exemptions | Legally operative facts and verbal acts | 28 | 119, 117, 145 |
| HS-B3d | B. Hearsay Exemptions | Statements showing declarant’s knowledge | 22 | 145, 121 |
| HS-B3e | B. Hearsay Exemptions | Absence of mistake / mens rea | 22 | 121, 145 |
| HS-C1a | C. Hearsay Exceptions requiring unavailability | Former testimony | 35 | 106, 116 |
| HS-C1b | C. Hearsay Exceptions requiring unavailability | Statement against interest | 35 | 98, 111, 140 |
| HS-C1c | C. Hearsay Exceptions requiring unavailability | Dying declaration | 25 | 122 |
| HS-C1d | C. Hearsay Exceptions requiring unavailability | Statement of personal/family history | 16 | — |
| HS-C1e | C. Hearsay Exceptions requiring unavailability | Forfeiture by wrongdoing | 28 | — |
| HS-C2a | C. Hearsay Exceptions not requiring unavailability | Business records | 50 | 94, 95, 113, 123, 139, 143 |
| HS-C2b | C. Hearsay Exceptions not requiring unavailability | Present sense impression | 28 | 109, 138 |
| HS-C2c | C. Hearsay Exceptions not requiring unavailability | Excited utterance | 31 | 96, 97, 129, 147 |
| HS-C2d | C. Hearsay Exceptions not requiring unavailability | Mental, emotional, or physical condition | 35 | 100, 112, 118 |
| HS-C2e | C. Hearsay Exceptions not requiring unavailability | Medical diagnosis or treatment | 35 | 134, 147, 150 |
| HS-C2f | C. Hearsay Exceptions not requiring unavailability | Past recollection recorded | 35 | 115, 135, 138, 139 |
| HS-C2g | C. Hearsay Exceptions not requiring unavailability | Public records and reports | 44 | 107, 126, 131, 136, 146 |
| HS-C2h | C. Hearsay Exceptions not requiring unavailability | Learned treatises | 28 | 104, 127 |
| HS-C2i | C. Hearsay Exceptions not requiring unavailability | Ancient documents | 16 | — |
| HS-C2j | C. Hearsay Exceptions not requiring unavailability | Commercial lists or compilations | 13 | — |
| HS-C2k | C. Hearsay Exceptions not requiring unavailability | Prior judgments | 16 | — |
| HS-C2l | C. Hearsay Exceptions not requiring unavailability | Residual exception | 22 | — |
| HS-C2m | C. Hearsay Exceptions not requiring unavailability | Rule of completeness | 31 | — |
| HS-D1 | D. Confrontation Clause | Testimonial hearsay gate | 50 | 144 |
| HS-D2 | D. Confrontation Clause | Forensic/expert-basis statements | 35 | — |
| HS-D3 | D. Confrontation Clause | Emergency vs past-facts statements | 28 | — |
| HS-D4 | D. Confrontation Clause | Records and certificates | 28 | 126, 131, 144 |

## Crosswalk use rule

Every Hearsay question must receive:

1. one official outline node;
2. one primary tension ID;
3. one purpose route;
4. one layer count;
5. one evidence vehicle;
6. one wrong-answer mechanic;
7. one repair module;
8. one California/FRE/confrontation flag when applicable.

Do not tag a question merely as `Hearsay / Exception`. That label is too broad to diagnose wrong-answer logic.


---

# SOURCE FILE: `hearsay_tension_matrix.md`

# Hearsay Tension Matrix — BarMatrix™ Master Packet

Each row is a repeatable MCQ architecture. The row is not a rule outline; it is a diagnostic trap pattern.

| ID | Official Node | Legal Collision | Fact Triggers | Decision Axis | WAL Traps | Misconceptions | Repair | Question Specs | Sample Q# | Priority |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HS-001 | HS-A1 | Out-of-court words vs truth-purpose hearsay | statement repeated in court; offered for notice/reason/identity; no exception named | Does the offered proposition require the jury to believe the assertion? | every out-of-court statement is hearsay; exception-before-purpose | Hearsay starts with purpose, not location of words. | REP-HS-001 | Same statement offered once for notice and once for truth; correct answer flips. | 92,101,120,121,145 | P0 |
| HS-002 | HS-A1 | Statement vs nonstatement / person vs nonperson conduct | dog alert; machine readout; silence; nod; pointing; conduct intended as assertion | Was there a person/declarant intending an assertion? | animal/machine conduct as hearsay; all conduct as nonhearsay | Only a person's intended assertion is a hearsay statement. | REP-HS-002 | Use animal, sensor, silence, and gesture variants. | 102 | P1 |
| HS-003 | HS-A1 | Statement object vs evidence vehicle | note, tape, transcript, report, letter, registration, chart | Is the hearsay unit the words, the document container, or a witness's testimony about it? | tags vehicle not statement; business record cures contents | The evidence vehicle is not the same as the assertion. | REP-HS-003 | Stem offers multiple objects and asks item-by-item admissibility. | 92,94,120 | P0 |
| HS-004 | HS-A3 | Single-layer success vs multi-layer failure | A testifies B said C said; report includes witness quote; transcript repeats statement | Does every hearsay layer have its own route? | one valid inner route admits the chain; record container cures embedded hearsay | Multiple hearsay is link-by-link routing. | REP-HS-004 | Correct explanation must list Layer 1/2/3 and mark each pass/fail. | 98,105,116,117,146 | P0 |
| HS-005 | HS-A3 | Wrong listener / wrong effect problem | statement to tenant about notice to manager; statement to officer about reason; letter to manufacturer | Which listener's mental state/legal notice is relevant? | effect-on-listener applied to wrong listener | Notice/effect requires the legally relevant listener. | REP-HS-005 | Three-listener stems; one layer reaches relevant party and one does not. | 105 | P0 |
| HS-006 | HS-A4 | Availability necessary vs irrelevant | declarant dead/available/refuses/memory loss; exception under 803/804/801(d)(1) | Does the selected route require unavailability, availability, or subject-to-cross? | dead always helps; presence in courtroom equals subject-to-cross | Declarant status matters only for the route invoked. | REP-HS-006 | Same statement under 801(d)(1), 803, and 804 variants. | 99,106,125,149 | P0 |
| HS-007 | HS-A1 | Limited purpose vs substantive proof | impeachment-only tape; notice letters; bias promise; completeness statement | Is the evidence admitted for all purposes or only the precise purpose? | impeachment/substantive merger; notice becomes truth | Admissibility scope must be tagged. | REP-HS-007 | Answer choices: inadmissible / impeachment only / notice only / substantive / dual route. | 103,114,128,141,151 | P0 |
| HS-008 | HS-A1 | Original-writing false positive inside hearsay | copy of notice letter; tape exists but witness testifies from memory; invoice contents; duplicate questionnaire | Is proponent proving contents of writing or event/notice/heard words? | best evidence triggered by any writing; business record defeats original rule | Original-writing doctrine turns on proof target, not presence of writing. | REP-HS-008 | Hearsay and contents-of-writing answers both plausible. | 94,120,133,150 | P0 |
| HS-009 | HS-A1 | Nonhearsay route underuse | statement has both nontruth purpose and exception; party statement plus impeachment | Does a broader or narrower route apply? | identifies one valid route and stops; rejects dual-route answer | Some statements have multiple admissible channels. | REP-HS-009 | Both/only/neither answer choices; correct may be both. | 137,138 | P1 |
| HS-010 | HS-A1 | Policy/privilege decoy vs hearsay route | settlement-like offer; payment; spouse/wife; secret recording; dead man statute | Is the exclusion/privilege actually triggered, or is hearsay route controlling? | emotionally familiar exclusion selected without elements | A real-looking policy label must still match facts. | REP-HS-010 | Use policy decoys in hearsay questions but make the statement route decisive. | 97,110,114,122,130,148 | P1 |
| HS-011 | HS-B1a | Prior inconsistent statement: impeachment vs substantive | witness testifies inconsistently; tape/second witness; no oath/proceeding | Was prior statement under oath/proceeding for substantive use, or only impeachment? | PIS always substantive; PIS always excluded | Federal substantive PIS requires 801(d)(1)(A); impeachment may still work. | REP-HS-011 | Pair under-oath deposition with casual conversation variant. | 99,114,128,137 | P0 |
| HS-012 | HS-B1a | Declarant still subject to recall vs unavailable exception | friend testified and still subject to recall; cellmate statement against interest | Is declarant unavailable for 804 route or available for impeachment foundation? | statement against interest used despite availability | Availability may defeat 804 even while impeachment route survives. | REP-HS-006 | Use same confession with declarant available/dead/refusing. | 99 | P1 |
| HS-013 | HS-B1b | Prior consistent statement: proper rehabilitative use | charge of recent fabrication; motive timing; memory attack; general bolstering | Does prior consistent statement rebut a qualifying attack and have right timing/ground? | PCS always bolsters; any consistency proves truth | Prior consistent statements need an attack they logically answer. | REP-HS-012 | Build accusation-of-recent-fabrication variants with pre/post motive timing. |  | P1 |
| HS-014 | HS-B1c | Prior identification: subject-to-cross requirement | witness identifies defendant earlier; refuses at trial; remembers nothing; testifies subject to cross | Does declarant testify and remain subject to cross about the prior ID? | courtroom presence enough; current memory required | Prior ID requires subject-to-cross, not current memory. | REP-HS-013 | Contrast witness refuses all questions with witness lacks memory but answers. | 125,149 | P0 |
| HS-015 | HS-B1c | Prior ID vs excited utterance / present sense routes | victim names attacker immediately; later cannot remember; third-party officer relays ID | Which route, if any, supports the ID and vehicle? | prior ID route used when declarant absent; excited utterance missed | ID statements often have alternate routes but facts control. | REP-HS-013 | Create same ID under excited, prior-ID, and testimonial police-statement variants. | 129,144,149 | P1 |
| HS-016 | HS-B1a | Impeachment vehicle: tape, transcript, second witness | secret tape; second witness recounts statement; authenticated transcript | What can be used to impeach, and can the vehicle be admitted? | privacy/authentication decoy; tape equals substantive proof | Impeachment vehicle does not expand hearsay scope. | REP-HS-011 | Ask whether tape is admitted, played, or used through witness only. | 114,128 | P1 |
| HS-017 | HS-B2e | Direct party admission vs exception/against-interest confusion | party's own letter, apology, taped statement, offer to redo | Is statement offered against the party who made/adopted it? | must be against interest when made; party can self-introduce own statement | Opposing-party statements need no unavailability or disserving quality. | REP-HS-014 | Use self-serving party statement offered by that party as wrong variant. | 110,130,133,137,148 | P0 |
| HS-018 | HS-B2a | Adoptive admission by silence/conduct | introduction as partner; accusation in circumstances calling for denial; nod/handshake | Did party manifest adoption or belief in truth? | silence always admission; silence never admission | Context determines whether response was expected. | REP-HS-015 | Use custody/silence, social setting, business handshake variants. | 124 | P1 |
| HS-019 | HS-B2b | Authorized speaker foundation | agent says 'I accept for principal'; authority disputed | Is there sufficient independent evidence of authority, not just statement alone? | statement alone proves agency; judge must find agency by preponderance in all answer choices | Authorized admission requires a foundation route. | REP-HS-016 | Use offer/acceptance legal words and foundation dispute. | 119 | P0 |
| HS-020 | HS-B2c | Vicarious employee/agent statement scope/timing | employee talks after accident; assistant discusses plans; guard after employment ended | Was speaker employee/agent at time and statement on matter within scope? | requires authorization to speak; post-event automatically outside scope; former employee still agent | Scope and timing are separate conditions. | REP-HS-017 | One statement during employment, one after termination, one outside scope. | 93,116,142 | P0 |
| HS-021 | HS-B2d | Co-conspirator during and in furtherance | confession to girlfriend; post-arrest narrative; sale proceeds demand | Was statement during conspiracy and in furtherance, or narrative/confession? | co-conspirator applied to every conspirator statement | Conspiracy label does not admit idle narratives. | REP-HS-018 | Include romantic/confidential statements as wrong-furtherance traps. | 98 | P1 |
| HS-022 | HS-B2e | Party admission vs public-policy exclusion decoy | offer to pay; promise to fix; compromise-looking words; no disputed claim | Does public-policy rule actually apply, or is it just an opposing-party statement? | settlement/remedial/medical payment label blocks every admission | Policy exclusions require their own trigger facts. | REP-HS-010 | Statement after accident before dispute; existing dispute variant. | 130,148 | P1 |
| HS-023 | HS-B2 | Opposing-party statement in writing + authentication | anonymous handwriting letter; signature; distinctive contents | Can the statement be authenticated and offered against the party? | anonymous means inadmissible; handwriting issue is hearsay issue | Authentication and hearsay route are separate gates. | REP-HS-014 | Use anonymous note with handwriting/distinctive facts. | 110 | P1 |
| HS-024 | HS-B2 | Statement against principal vs statement by declarant party | representative capacity; agent speaks for entity; individual statement in entity case | Against whom is the statement offered? | admission must be against declarant interest; wrong party offered against | Party-opponent route is relational, not reliability-based. | REP-HS-014 | Corporate officer/employee/principal/adverse-party variants. | 93,142 | P2 |
| HS-025 | HS-B3a | Effect on listener / notice vs truth | police radio description; warning letters; employer advice; product notice | Is statement offered to prove listener had information, not that content was true? | notice admits truth; notice fails because declarant absent | Nontruth use still needs relevance and limiting scope. | REP-HS-001 | Same warning offered for defect truth vs notice. | 92,120,121,141 | P0 |
| HS-026 | HS-B3a | Reasonable belief / motive for action | false arrest, hiring refusal, possession knowledge | Does statement explain why actor reasonably acted or believed? | truth-purpose collapse; state-of-mind exception unnecessarily invoked | Reason-for-action is effect on listener, not truth. | REP-HS-001 | Civil rights/false arrest/discrimination/stolen property variants. | 92,121,145 | P0 |
| HS-027 | HS-B3b | Declarant/victim state of mind vs remembered fact | victim loved defendant; declarant planned trip; statement of fear; 'I remember X' | Is current state/intent itself relevant or a backdoor past fact? | state of mind proves all embedded facts | State-of-mind route cannot smuggle memory/belief facts. | REP-HS-019 | Use 'I am afraid' vs 'I remember he attacked me'. | 100,112,118 | P0 |
| HS-028 | HS-B3b | Hillmon intent / future conduct inference | letter says intent to travel; friend heard plan; later alibi | Does statement prove declarant's later conduct, not truth of past fact? | self-serving statements always excluded; only statements to doctor count | Intent statements can prove future conduct when properly limited. | REP-HS-019 | Use alibi/travel/meeting plans, include third-party conduct trap. | 112,118 | P1 |
| HS-029 | HS-B3c | Legally operative words / verbal acts | acceptance, threat, defamation, notice, consent, offer | Do the words themselves have legal effect regardless of truth? | verbal acts treated as hearsay; threat admitted only if true | Some words matter because they were spoken. | REP-HS-020 | Contract acceptance and threat variants with nontruth and truth choices. | 119,117 | P1 |
| HS-030 | HS-B3d | Knowledge/belief proof | friend says TV is hers; former employer says plaintiff unproductive; letters show manufacturer knew complaints | Is statement used to show knowledge/belief, or truth of ownership/defect? | knowledge route becomes proof of asserted fact | Knowledge is a mental-state route for listener/declarant. | REP-HS-021 | Stolen property and product defect notice variants. | 141,145,121 | P0 |
| HS-031 | HS-B3e | Absence of mistake / mens rea via statement | defendant heard warning; actor received advice; prior statement shows knowledge | Does statement show mens rea/notice independent of truth? | truth of condition required to prove mens rea | Mens rea can be proved by information received, even if false. | REP-HS-021 | Age discrimination/reasonable belief and stolen goods variants. | 121,145 | P1 |
| HS-032 | HS-B3 | Circumstantial identity / nonassertive identity | pen name on passenger list; unique phrase; nickname; call-back details | Is statement circumstantial evidence linking identity, not offered for literal truth? | identity proof must be truth of content | Words can identify speaker/actor without proving asserted fact. | REP-HS-022 | Pen-name/passenger list and distinctive phrase variants. | 101 | P1 |
| HS-033 | HS-B3 | Bias/motive statement as nonhearsay | prosecutor promise to witness; plea deal; dropped charges; threat to witness | Is statement used to show motive/bias rather than truth of promise? | hearsay excludes bias promise; plea policy controls | Bias evidence is a credibility-purpose route. | REP-HS-023 | Witness deal variants with limiting purpose. | 108 | P1 |
| HS-034 | HS-B3 | Limiting instruction mechanics | letters admitted for notice; statement admitted against one party/purpose | If admitted for limited purpose, what instruction/scope follows? | limited evidence becomes all-purpose evidence | Admissible for one purpose does not mean all purposes. | REP-HS-007 | Ask proper ruling with timely limiting instruction request. | 141 | P0 |
| HS-035 | HS-C1a | Former testimony opportunity + similar motive | bankruptcy prior testimony; criminal trial transcript; store not party; deposition | Did opponent/predecessor have opportunity and similar motive to develop testimony? | former testimony if sworn once; cross was weak so route fails | Former testimony is about litigation incentives, not mere oath. | REP-HS-024 | Prior civil/criminal proceeding with same/different parties and motives. | 106,116 | P0 |
| HS-036 | HS-C1a | Former testimony transcript vehicle vs embedded statements | authenticated transcript contains witness's report of another statement | Does transcript route cover both testimony and embedded statement? | transcript admissibility cures embedded hearsay | Former testimony can be an outer route only. | REP-HS-004 | Trial transcript with inside agent statement; one layer fails. | 116 | P0 |
| HS-037 | HS-C1b | Statement against interest: declarant's own risk | friend confession; husband fault; civil/criminal liability exposure | Was statement against declarant's own pecuniary/proprietary/civil/criminal interest when made? | against party interest; against someone else; partially self-serving all admitted | Against-interest route is declarant-centered. | REP-HS-025 | Confession assigning blame partly to declarant and partly to defendant. | 98,111,140 | P0 |
| HS-038 | HS-C1b | Collateral/inculpatory portions of against-interest statement | 'I did it with D'; 'D said I owe money'; 'Nobody but me' | Which portions are genuinely disserving and corroborated if criminal? | whole narrative admitted once one part hurts declarant | Admit only the sufficiently disserving portions. | REP-HS-025 | Answer choices separate whole statement vs disserving excerpt. | 98,140 | P1 |
| HS-039 | HS-C1c | Dying declaration subject-matter limit | dying person mentions loan, blame, cause, family, threat | Does statement concern cause/circumstances of impending death and required case type? | dying setting automatically admits any statement | Dying declaration has subject-matter and case-type limits. | REP-HS-026 | Death scene with loan statement vs shooter identification. | 122 | P0 |
| HS-040 | HS-C1d | Personal/family history | birth, marriage, ancestry, family relationship, estate pedigree | Does statement concern family/personal history under 804 route? | treat all dead-person statements as family history | Pedigree exceptions have narrow subject matter. | REP-HS-027 | Estate/insurance/family relationship variants. |  | P2 |
| HS-041 | HS-C1e | Forfeiture by wrongdoing | defendant threatens witness, hides declarant, kills/intimidates witness | Did party wrongfully cause unavailability with intent to prevent testimony? | forfeiture if any wrongdoing caused absence; murder always forfeiture | Intent to prevent testimony is the key trap. | REP-HS-028 | Domestic violence/intimidation variants with intent ambiguity. |  | P1 |
| HS-042 | HS-A4 | Unavailability caused by proponent | declarant absent because proponent procured absence; privilege; refusal; memory loss | Can proponent claim unavailability if it caused the absence? | unavailability is purely physical absence | Wrongful procurement blocks 804 unavailability. | REP-HS-006 | Include privilege/refusal/memory loss/death/caused absence variants. |  | P1 |
| HS-043 | HS-C2a | Business record vs testimony about contents | custodian says invoices show deliveries; records not produced | Is the record offered or is a witness proving record contents orally? | business record exception admits oral summary of contents | Business record route is not a substitute for contents proof. | REP-HS-029 | Invoice/ledger/custodian testimony variants. | 94 | P0 |
| HS-044 | HS-C2a | Business record source/recorder duty chain | hospital chart; resident heard from doctor; employee/customer statements; regular duty | Did source and recorder have business duty or independent route? | record container cures outsider statements; all embedded statements fail | Business record reliability depends on source chain. | REP-HS-030 | Hospital/store/customer report variations with insider/outsider sources. | 95,123 | P0 |
| HS-045 | HS-C2a | Business record regular practice vs litigation/prepared memo | employees asked to make daily memos after issue; personal notes; ad hoc file | Was record made as regular course/practice, not special litigation collection? | any file maintained by business is business record | Regular-course creation matters more than business possession. | REP-HS-030 | Customer confusion memos/personal notes/litigation reports. | 113,139 | P0 |
| HS-046 | HS-C2a | Absence of business record | no medication entry; normal practice to record medication; hospital chart absence | Does regular record system make absence probative of nonoccurrence? | absence not hearsay; need positive record only | Absence-of-record is its own hearsay exception route. | REP-HS-031 | Hospital medication, payment, shipment, notice variants. | 143 | P1 |
| HS-047 | HS-C2b | Present sense impression timing | live phone relay; dictation as car speeds off; event being described immediately | Was statement made while or immediately after perceiving event/condition? | recent equals present sense; memory loss defeats PSI | PSI is timing/perception-driven and availability-independent. | REP-HS-032 | Call/recording/witness relay variants. | 109,138 | P0 |
| HS-048 | HS-C2b | Present sense impression multi-speaker relay | husband observes, wife phones, recording captures relay | Which declarant perceived, and is relay admissible? | all relay speakers treated as one declarant | Identify actual perceiver and each statement link. | REP-HS-004 | Husband-wife/dispatcher/officer relay variants. | 109 | P1 |
| HS-049 | HS-C2c | Excited utterance stress and timing | beating just ended; scream at night; later hospital narrative; complaint immediately after assault | Was declarant still under stress of startling event? | startling event enough regardless of calm delay | Excitement must still dominate reflection. | REP-HS-033 | Immediate scream, delayed narrative, calm report variants. | 96,97,129,147 | P0 |
| HS-050 | HS-C2c | Excited utterance identification | victim names attacker immediately; declarant not asked at trial | Can excited utterance provide ID despite no prior-ID route? | prior ID required for any ID statement | Excited utterances can include identity if stress/timing support it. | REP-HS-033 | Victim ID to bystander/911/family variants. | 129 | P1 |
| HS-051 | HS-C2d | Then-existing state of mind vs memory/belief | love/fear/intent; 'I remember he threatened me'; 'he told me yesterday' | Is statement offered to prove current condition/plan or past fact remembered? | state-of-mind exception proves past conduct | Memory/belief exclusion is a core trap. | REP-HS-019 | Create current fear plus cause-of-fear variants. | 100,112,118 | P0 |
| HS-052 | HS-C2d | Intent statement to prove future conduct | declarant plans trip, meeting, hiding, visiting State B | Does statement of intent support later conduct inference? | requires corroboration or self-serving exclusion | Intent-to-do route is availability-independent under 803(3). | REP-HS-019 | Alibi, missing person, travel plan variants. | 112,118 | P1 |
| HS-053 | HS-C2e | Medical diagnosis/treatment pertinence | patient statement of pain/cause; husband fault narrative; nurse/doctor statements | Was statement made for and reasonably pertinent to diagnosis/treatment? | medical setting admits everything; only statements to doctor count | Purpose and pertinence control medical statements. | REP-HS-034 | Ambulance, nurse, psychologist, litigation exam variants. | 134,147,150 | P0 |
| HS-054 | HS-C2e | Medical cause vs fault | fell from ladder; car was speeding; husband says defendant caused crash; dog bite details | Does statement describe general cause/inception or assign legal fault? | cause always inadmissible; fault always admissible in medical setting | Treatment exception admits medically pertinent cause, not legal blame unless pertinent. | REP-HS-034 | Child abuse identity exception variants can be advanced layer. | 134,147 | P0 |
| HS-055 | HS-C2f | Recorded recollection foundation | witness once knew, memory now insufficient, record made/adopted fresh, accurate | Are all foundation requirements satisfied? | notes used to remember automatically admitted; lack of memory unnecessary | Recorded recollection is a strict four-part foundation. | REP-HS-035 | Contrast police dictation vs self notes with no memory issue. | 115,135,138,139 | P0 |
| HS-056 | HS-C2f | Recorded recollection channel / exhibit limit | recording/notes read or played; exhibit received only if adverse party offers | How is the record presented to jury? | record always goes to jury; unavailable if witness can partially remember | Channel matters: read/played, not automatically exhibit. | REP-HS-035 | Ask whether writing may be received, read, or used to refresh. | 115,127,135 | P1 |
| HS-057 | HS-C2g | Public record official duty | fire marshal report, motor vehicle registration, police report, court record | Was record made by public employee within duty and trustworthy? | public label admits all reports; citation proves truth automatically | Public record route depends on duty/scope/trustworthiness. | REP-HS-036 | Fire marshal, DMV, police report variants. | 107,136 | P0 |
| HS-058 | HS-C2g | Absence of public record / certification | jail no-record search; licensing board certification; public agency files | Is absence offered to prove nonoccurrence or nonexistence of public record? | live custodian required; certification hearsay not exception | Absence certifications/searches are recognized record routes. | REP-HS-031 | Jail, license, citizenship, filing variants. | 126,131 | P1 |
| HS-059 | HS-C2g | Public report embedded outsider statement | police report includes eyewitness quote; officer interviewed parties | Does embedded statement have separate route? | public report cures eyewitness quote | Official record is outer route only. | REP-HS-004 | Police/fire/agency reports with outsider statements. | 146 | P0 |
| HS-060 | HS-C2h | Learned treatise reliability foundation | expert relied on text or text called to expert attention; reliable authority established | Was authority established by expert, other expert, or judicial notice? | any textbook qualifies; expert must have authored text | Reliable-authority foundation controls treatise route. | REP-HS-037 | Direct/cross variants with expert conceding reliability. | 104,127 | P1 |
| HS-061 | HS-C2h | Learned treatise read-only vs exhibit | passage read to jury; entire book requested as exhibit | What portion/channel is permitted? | treatise itself admitted as exhibit; no substantive use | Learned treatise statements are read, not received as exhibits. | REP-HS-037 | Ask admitted, read, examined by jury, basis only. | 104,127 | P0 |
| HS-062 | HS-C2i | Ancient documents boundary | old deed/map/letter; authenticated writing; age/foundation | Does document fall within ancient-document exception and relevance/authentication rules? | old means automatically admitted; age irrelevant if contents offered | Ancient documents are narrow and cross with authentication/contents. | REP-HS-038 | Historic deed/boundary/family letter variants. |  | P2 |
| HS-063 | HS-C2j | Commercial lists / market reports | price list, market quotation, directory, trade publication | Is compilation generally relied on in business/occupation? | internet list automatically reliable; all publications learned treatises | Commercial list route is reliance-based. | REP-HS-039 | Market price, phone book, trade directory variants. |  | P2 |
| HS-064 | HS-C2k | Prior judgment exception | felony judgment in civil action; essential fact; plea/nolo limits | Is judgment offered to prove fact essential to judgment under route? | any prior judgment proves everything; criminal judgment never admissible | Judgments have purpose and fact-essential limits. | REP-HS-040 | Felony conviction in civil fraud/insurance variants. |  | P2 |
| HS-065 | HS-C2l | Residual exception not a catchall | unique reliable statement; notice; better evidence unavailable; 803/804 fail | Does it satisfy trustworthiness, probativeness, notice, and necessity? | residual fixes every sympathetic hearsay problem | Residual exception is narrow and notice-dependent. | REP-HS-041 | Child statement/old report/lost witness variants. |  | P1 |
| HS-066 | HS-C2m | Rule of completeness over hearsay objection | adverse party introduces excerpt of statement; remainder corrects misimpression | Does fairness require contemporaneous completion, and what use is allowed? | completeness only timing rule; hearsay always bars remainder | Rule 106 can operate over hearsay objection when fairness requires. | REP-HS-042 | Partial confession/contract email/tape excerpt variants. |  | P0 |
| HS-067 | HS-C2 | Exception scope boundary | death scene but loan statement; doctor setting but legal fault; excited setting but unrelated statement | Does the exception cover this exact subject matter? | dramatic setting triggers exception automatically | Exception labels have subject-matter scope. | REP-HS-043 | Pair high-salience setting with wrong subject matter. | 122,147 | P0 |
| HS-068 | HS-C2 | Route underuse / route overuse | statement qualifies under two routes; answer says only one; or route too broad | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | Scope precision is a scored skill. | REP-HS-009 | Use both/only/neither answer choices. | 137,138,141 | P0 |
| HS-069 | HS-D1 | Confrontation: testimonial hearsay gate | criminal case; absent witness; police interview, grand jury testimony, lab certificate | Is statement testimonial and offered for truth against accused? | hearsay exception defeats confrontation; Confrontation applies in civil cases | Confrontation is a constitutional overlay after hearsay purpose. | REP-HS-044 | Four proof vehicles, one nontestimonial. | 144 | P0 |
| HS-070 | HS-D1 | Emergency vs investigation primary purpose | 911 call during attack; station interview after event; on-scene questions | Was primary purpose emergency response or establishing past facts? | all police statements testimonial; all 911 calls nontestimonial | Primary purpose determines testimonial status. | REP-HS-044 | Same domestic-violence facts under active emergency and later interview. |  | P1 |
| HS-071 | HS-D2 | Forensic/expert-basis testimonial hearsay | substitute analyst; absent lab notes; expert basis; independent opinion | Does expert convey absent analyst assertions that matter only if true? | basis-only label avoids hearsay/confrontation | Smith v. Arizona makes basis-truth issue central. | REP-HS-045 | Lab report and independent retest variants. |  | P0 |
| HS-072 | HS-D4 | Business/public records vs testimonial certificates | computerized bank records; certification of absence; lab certificate; police report | Was record created for routine administration or prosecution testimony? | authenticated record means nontestimonial; official record always testimonial | Record purpose controls confrontation risk. | REP-HS-046 | Vehicle menu with routine records and formal certificates. | 144 | P0 |
| HS-073 | HS-D1 | Prior testimony and Confrontation overlap | prelim testimony, grand jury testimony, deposition, unavailable witness | Was defendant given prior opportunity to cross with similar motive? | former testimony exception automatically satisfies Confrontation | Hearsay exception and Confrontation overlap but are not identical. | REP-HS-044 | Criminal preliminary hearing vs grand jury variants. | 144,106 | P1 |
| HS-074 | HS-D1 | Nontruth use and Confrontation | statement to show notice/bias/reason; testimonial setting but nontruth purpose | Is statement introduced for truth or nontruth? | testimonial-looking statement barred even for nontruth | Confrontation bars testimonial hearsay, not all out-of-court words. | REP-HS-001 | Station statement offered to explain officer conduct vs prove identity. | 92,108 | P1 |
| HS-075 | CA-HS | California party admission label vs FRE nonhearsay | party statement; employee admission; adoptive admission | Is California treating it as hearsay exception, while FRE excludes from hearsay? | California and FRE labels are identical | Classification label differs even where outcome similar. | REP-HS-047 | Federal/California toggle for same party statement. | 93,110,142 | P1 |
| HS-076 | CA-HS | California prior inconsistent statement broader substantive route | witness testifies inconsistently; statement not under oath | Does California §1235 admit for truth where FRE requires under-oath proceeding? | under-oath requirement imported into California | California PIS is a high-yield distinction. | REP-HS-048 | Same police statement under FRE and CA variants. | 99,114,128 | P0 |
| HS-077 | CA-HS | California spontaneous/contemporaneous vs FRE PSI | immediate description; stress absent/present; statement explaining declarant conduct | Does California route use §1240 spontaneous or §1241 contemporaneous, not generic PSI? | FRE present sense impression imported wholesale | California present-sense-like rules must be matched precisely. | REP-HS-049 | Federal PSI correct; California outcome changes if no §1241/§1240 fit. | 109,138 | P0 |
| HS-078 | CA-HS | California state-of-mind memory/belief limit | statement of fear/intent plus remembered cause | Does §1250 exclude memory/belief used to prove remembered fact? | state of mind proves all remembered facts | CA and FRE both limit memory/belief; CA code should be explicit. | REP-HS-019 | Fear-of-defendant and plan-to-travel variants. | 100,112,118 | P1 |
| HS-079 | CA-HS | California business/official record statutory route | business/official record; custodian; trustworthiness; source duty | Does CA §1271/§1280 route fit, and does embedded hearsay need separate route? | record label is enough | California uses statutory record conditions and trustworthiness. | REP-HS-030 | Hospital, police, fire marshal, licensing board variants. | 95,123,136,146 | P1 |
| HS-080 | CA-HS | California secondary evidence rule inside hearsay questions | copy of letter/questionnaire; unavailable original; contents vs notice | Does CA §1521 permit secondary evidence while preserving hearsay/authentication gates? | copy automatically inadmissible; secondary evidence cures hearsay | CA writing rules interact but do not replace hearsay analysis. | REP-HS-008 | Federal duplicate vs CA secondary evidence toggle. | 120,150 | P1 |

---

# SOURCE FILE: `hearsay_fact_triggers.md`

# Hearsay Fact Trigger Atlas — BarMatrix™

Use this atlas to tag fact patterns before writing answer choices. A trigger may activate a hearsay route, a presentation vehicle, a limited-purpose instruction, or a confrontation overlay.

| Trigger ID | Official Node | Topic | Fact Pattern Signal | Tension ID | Decision Axis | Likely WAL Trap | Repair | Jurisdiction Note |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| HTRG-001 | HS-A1 | Hearsay rule | police radio description offered for officer belief | HS-007 | Is the evidence admitted for all purposes or only the precise purpose? | impeachment/substantive merger; notice becomes truth | REP-HS-007 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-002 | HS-A1 | Hearsay rule | letter offered for notice rather than truth | HS-007 | Is the evidence admitted for all purposes or only the precise purpose? | impeachment/substantive merger; notice becomes truth | REP-HS-007 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-003 | HS-A1 | Hearsay rule | secret tape used to impeach only | HS-001 | Does the offered proposition require the jury to believe the assertion? | every out-of-court statement is hearsay; exception-before-purpose | REP-HS-001 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-004 | HS-A1 | Hearsay rule | statement used to identify speaker or location | HS-002 | Was there a person/declarant intending an assertion? | animal/machine conduct as hearsay; all conduct as nonhearsay | REP-HS-002 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-005 | HS-A2 | Conduct as hearsay | dog alerts to suitcase | HS-006 | Does the selected route require unavailability, availability, or subject-to-cross? | dead always helps; presence in courtroom equals subject-to-cross | REP-HS-006 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-006 | HS-A2 | Conduct as hearsay | machine timestamp prints | HS-009 | Does a broader or narrower route apply? | identifies one valid route and stops; rejects dual-route answer | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-007 | HS-A2 | Conduct as hearsay | silent nod after accusation | HS-002 | Was there a person/declarant intending an assertion? | animal/machine conduct as hearsay; all conduct as nonhearsay | REP-HS-002 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-008 | HS-A2 | Conduct as hearsay | text emoji/gesture intended as assertion | HS-005 | Which listener's mental state/legal notice is relevant? | effect-on-listener applied to wrong listener | REP-HS-005 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-009 | HS-A3 | Multiple hearsay | tenant repeats resident's statement about manager notice | HS-005 | Which listener's mental state/legal notice is relevant? | effect-on-listener applied to wrong listener | REP-HS-005 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-010 | HS-A3 | Multiple hearsay | police report contains eyewitness account | HS-005 | Which listener's mental state/legal notice is relevant? | effect-on-listener applied to wrong listener | REP-HS-005 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-011 | HS-A3 | Multiple hearsay | trial transcript contains witness repeating agent instruction | HS-004 | Does every hearsay layer have its own route? | one valid inner route admits the chain; record container cures embedded hearsay | REP-HS-004 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-012 | HS-A3 | Multiple hearsay | hospital record includes patient and doctor statements | HS-004 | Does every hearsay layer have its own route? | one valid inner route admits the chain; record container cures embedded hearsay | REP-HS-004 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-013 | HS-A4 | Unavailability necessary/unnecessary | declarant dead | HS-042 | Can proponent claim unavailability if it caused the absence? | unavailability is purely physical absence | REP-HS-006 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-014 | HS-A4 | Unavailability necessary/unnecessary | declarant refuses despite court order | HS-042 | Can proponent claim unavailability if it caused the absence? | unavailability is purely physical absence | REP-HS-006 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-015 | HS-A4 | Unavailability necessary/unnecessary | declarant lacks current memory | HS-042 | Can proponent claim unavailability if it caused the absence? | unavailability is purely physical absence | REP-HS-006 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-016 | HS-A4 | Unavailability necessary/unnecessary | declarant present but refuses all cross | HS-042 | Can proponent claim unavailability if it caused the absence? | unavailability is purely physical absence | REP-HS-006 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-017 | HS-B1a | Prior sworn inconsistent statement | trial witness contradicted by casual conversation | HS-011 | Was prior statement under oath/proceeding for substantive use, or only impeachment? | PIS always substantive; PIS always excluded | REP-HS-011 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-018 | HS-B1a | Prior sworn inconsistent statement | deponent contradicted by deposition transcript | HS-012 | Is declarant unavailable for 804 route or available for impeachment foundation? | statement against interest used despite availability | REP-HS-006 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-019 | HS-B1a | Prior sworn inconsistent statement | police interview inconsistent with testimony | HS-011 | Was prior statement under oath/proceeding for substantive use, or only impeachment? | PIS always substantive; PIS always excluded | REP-HS-011 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-020 | HS-B1a | Prior sworn inconsistent statement | tape of witness statement offered | HS-016 | What can be used to impeach, and can the vehicle be admitted? | privacy/authentication decoy; tape equals substantive proof | REP-HS-011 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-021 | HS-B1b | Prior consistent statement | prior consistent statement before motive arose | HS-013 | Does prior consistent statement rebut a qualifying attack and have right timing/ground? | PCS always bolsters; any consistency proves truth | REP-HS-012 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-022 | HS-B1b | Prior consistent statement | prior consistent statement after motive arose | HS-013 | Does prior consistent statement rebut a qualifying attack and have right timing/ground? | PCS always bolsters; any consistency proves truth | REP-HS-012 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-023 | HS-B1b | Prior consistent statement | memory attack rehabilitated by earlier consistent detail | HS-013 | Does prior consistent statement rebut a qualifying attack and have right timing/ground? | PCS always bolsters; any consistency proves truth | REP-HS-012 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-024 | HS-B1b | Prior consistent statement | general bolstering before attack | HS-013 | Does prior consistent statement rebut a qualifying attack and have right timing/ground? | PCS always bolsters; any consistency proves truth | REP-HS-012 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-025 | HS-B1c | Prior identification | victim prior identification to passerby | HS-014 | Does declarant testify and remain subject to cross about the prior ID? | courtroom presence enough; current memory required | REP-HS-013 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-026 | HS-B1c | Prior identification | witness identifies defendant at lineup then lacks memory | HS-014 | Does declarant testify and remain subject to cross about the prior ID? | courtroom presence enough; current memory required | REP-HS-013 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-027 | HS-B1c | Prior identification | witness refuses to testify after prior ID | HS-014 | Does declarant testify and remain subject to cross about the prior ID? | courtroom presence enough; current memory required | REP-HS-013 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-028 | HS-B1c | Prior identification | officer recounts lineup ID by absent declarant | HS-014 | Does declarant testify and remain subject to cross about the prior ID? | courtroom presence enough; current memory required | REP-HS-013 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-029 | HS-B2a | Adoptive statements | defendant introduced as partner and nods | HS-018 | Did party manifest adoption or belief in truth? | silence always admission; silence never admission | REP-HS-015 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-030 | HS-B2a | Adoptive statements | party silent after accusation in social setting | HS-024 | Against whom is the statement offered? | admission must be against declarant interest; wrong party offered against | REP-HS-014 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-031 | HS-B2a | Adoptive statements | employee accepts statement with handshake | HS-018 | Did party manifest adoption or belief in truth? | silence always admission; silence never admission | REP-HS-015 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-032 | HS-B2a | Adoptive statements | accused in custody remains silent after police accusation | HS-024 | Against whom is the statement offered? | admission must be against declarant interest; wrong party offered against | REP-HS-014 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-033 | HS-B2b | Authorized statements | agent says 'I accept for principal' | HS-024 | Against whom is the statement offered? | admission must be against declarant interest; wrong party offered against | REP-HS-014 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-034 | HS-B2b | Authorized statements | lawyer authorized to negotiate statement | HS-024 | Against whom is the statement offered? | admission must be against declarant interest; wrong party offered against | REP-HS-014 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-035 | HS-B2b | Authorized statements | spokesperson press statement | HS-019 | Is there sufficient independent evidence of authority, not just statement alone? | statement alone proves agency; judge must find agency by preponderance in all answer choices | REP-HS-016 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-036 | HS-B2b | Authorized statements | employee with no authority purports to bind principal | HS-024 | Against whom is the statement offered? | admission must be against declarant interest; wrong party offered against | REP-HS-014 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-037 | HS-B2c | Vicarious statements | employee statement day after accident within delivery scope | HS-020 | Was speaker employee/agent at time and statement on matter within scope? | requires authorization to speak; post-event automatically outside scope; former employee still agent | REP-HS-017 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-038 | HS-B2c | Vicarious statements | former employee statement after termination | HS-020 | Was speaker employee/agent at time and statement on matter within scope? | requires authorization to speak; post-event automatically outside scope; former employee still agent | REP-HS-017 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-039 | HS-B2c | Vicarious statements | assistant statement about plans during job | HS-020 | Was speaker employee/agent at time and statement on matter within scope? | requires authorization to speak; post-event automatically outside scope; former employee still agent | REP-HS-017 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-040 | HS-B2c | Vicarious statements | guard's criminal trial statement after job ended | HS-023 | Can the statement be authenticated and offered against the party? | anonymous means inadmissible; handwriting issue is hearsay issue | REP-HS-014 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-041 | HS-B2d | Co-conspirator statements | co-conspirator operational instruction | HS-023 | Can the statement be authenticated and offered against the party? | anonymous means inadmissible; handwriting issue is hearsay issue | REP-HS-014 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-042 | HS-B2d | Co-conspirator statements | post-arrest confession to girlfriend | HS-021 | Was statement during conspiracy and in furtherance, or narrative/confession? | co-conspirator applied to every conspirator statement | REP-HS-018 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-043 | HS-B2d | Co-conspirator statements | statement allocating proceeds during scheme | HS-024 | Against whom is the statement offered? | admission must be against declarant interest; wrong party offered against | REP-HS-014 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-044 | HS-B2d | Co-conspirator statements | idle narrative after conspiracy ended | HS-021 | Was statement during conspiracy and in furtherance, or narrative/confession? | co-conspirator applied to every conspirator statement | REP-HS-018 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-045 | HS-B2e | Direct party admissions | tax letter admission | HS-022 | Does public-policy rule actually apply, or is it just an opposing-party statement? | settlement/remedial/medical payment label blocks every admission | REP-HS-010 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-046 | HS-B2e | Direct party admissions | plumber apology/offer to redo | HS-024 | Against whom is the statement offered? | admission must be against declarant interest; wrong party offered against | REP-HS-014 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-047 | HS-B2e | Direct party admissions | party's taped private statement | HS-023 | Can the statement be authenticated and offered against the party? | anonymous means inadmissible; handwriting issue is hearsay issue | REP-HS-014 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-048 | HS-B2e | Direct party admissions | defendant's payment statement after rat bite | HS-017 | Is statement offered against the party who made/adopted it? | must be against interest when made; party can self-introduce own statement | REP-HS-014 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-049 | HS-B3a | Effect on listener | consumer letters to manufacturer for notice | HS-032 | Is statement circumstantial evidence linking identity, not offered for literal truth? | identity proof must be truth of content | REP-HS-022 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-050 | HS-B3a | Effect on listener | warning relayed to manager through wrong listener | HS-034 | If admitted for limited purpose, what instruction/scope follows? | limited evidence becomes all-purpose evidence | REP-HS-007 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-051 | HS-B3a | Effect on listener | radio dispatch heard by officer | HS-032 | Is statement circumstantial evidence linking identity, not offered for literal truth? | identity proof must be truth of content | REP-HS-022 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-052 | HS-B3a | Effect on listener | contract notice letter and routine mailing | HS-034 | If admitted for limited purpose, what instruction/scope follows? | limited evidence becomes all-purpose evidence | REP-HS-007 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-053 | HS-B3b | Declarant/victim state of mind as nontruth/condition proof | victim says she loves/fears defendant | HS-027 | Is current state/intent itself relevant or a backdoor past fact? | state of mind proves all embedded facts | REP-HS-019 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-054 | HS-B3b | Declarant/victim state of mind as nontruth/condition proof | declarant plans trip | HS-034 | If admitted for limited purpose, what instruction/scope follows? | limited evidence becomes all-purpose evidence | REP-HS-007 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-055 | HS-B3b | Declarant/victim state of mind as nontruth/condition proof | declarant says 'I remember he hit me' | HS-032 | Is statement circumstantial evidence linking identity, not offered for literal truth? | identity proof must be truth of content | REP-HS-022 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-056 | HS-B3b | Declarant/victim state of mind as nontruth/condition proof | missing person says she will use pen name | HS-032 | Is statement circumstantial evidence linking identity, not offered for literal truth? | identity proof must be truth of content | REP-HS-022 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-057 | HS-B3c | Legally operative facts and verbal acts | acceptance of contract offer | HS-032 | Is statement circumstantial evidence linking identity, not offered for literal truth? | identity proof must be truth of content | REP-HS-022 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-058 | HS-B3c | Legally operative facts and verbal acts | threat words offered as threat | HS-029 | Do the words themselves have legal effect regardless of truth? | verbal acts treated as hearsay; threat admitted only if true | REP-HS-020 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-059 | HS-B3c | Legally operative facts and verbal acts | defamation words as publication | HS-033 | Is statement used to show motive/bias rather than truth of promise? | hearsay excludes bias promise; plea policy controls | REP-HS-023 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-060 | HS-B3c | Legally operative facts and verbal acts | notice words as legal notice | HS-029 | Do the words themselves have legal effect regardless of truth? | verbal acts treated as hearsay; threat admitted only if true | REP-HS-020 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-061 | HS-B3d | Statements showing declarant’s knowledge | friend says TV belongs to him, offered for defendant belief | HS-030 | Is statement used to show knowledge/belief, or truth of ownership/defect? | knowledge route becomes proof of asserted fact | REP-HS-021 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-062 | HS-B3d | Statements showing declarant’s knowledge | employer says applicant unproductive, offered for reason | HS-033 | Is statement used to show motive/bias rather than truth of promise? | hearsay excludes bias promise; plea policy controls | REP-HS-023 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-063 | HS-B3d | Statements showing declarant’s knowledge | letter says defect complaints, offered for manufacturer knowledge | HS-030 | Is statement used to show knowledge/belief, or truth of ownership/defect? | knowledge route becomes proof of asserted fact | REP-HS-021 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-064 | HS-B3e | Absence of mistake / mens rea | warning creates knowledge of danger | HS-034 | If admitted for limited purpose, what instruction/scope follows? | limited evidence becomes all-purpose evidence | REP-HS-007 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-065 | HS-B3e | Absence of mistake / mens rea | advice creates reasonable belief | HS-032 | Is statement circumstantial evidence linking identity, not offered for literal truth? | identity proof must be truth of content | REP-HS-022 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-066 | HS-B3e | Absence of mistake / mens rea | statement negates mistake in possession | HS-032 | Is statement circumstantial evidence linking identity, not offered for literal truth? | identity proof must be truth of content | REP-HS-022 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-067 | HS-B3e | Absence of mistake / mens rea | statement shows mens rea/intent | HS-033 | Is statement used to show motive/bias rather than truth of promise? | hearsay excludes bias promise; plea policy controls | REP-HS-023 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-068 | HS-C1a | Former testimony | prior bankruptcy testimony | HS-035 | Did opponent/predecessor have opportunity and similar motive to develop testimony? | former testimony if sworn once; cross was weak so route fails | REP-HS-024 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-069 | HS-C1a | Former testimony | criminal trial transcript offered in civil case | HS-035 | Did opponent/predecessor have opportunity and similar motive to develop testimony? | former testimony if sworn once; cross was weak so route fails | REP-HS-024 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-070 | HS-C1a | Former testimony | preliminary hearing testimony | HS-036 | Does transcript route cover both testimony and embedded statement? | transcript admissibility cures embedded hearsay | REP-HS-004 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-071 | HS-C1a | Former testimony | deposition from related civil action | HS-036 | Does transcript route cover both testimony and embedded statement? | transcript admissibility cures embedded hearsay | REP-HS-004 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-072 | HS-C1b | Statement against interest | friend confesses arson | HS-037 | Was statement against declarant's own pecuniary/proprietary/civil/criminal interest when made? | against party interest; against someone else; partially self-serving all admitted | REP-HS-025 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-073 | HS-C1b | Statement against interest | driver says crash was his fault | HS-037 | Was statement against declarant's own pecuniary/proprietary/civil/criminal interest when made? | against party interest; against someone else; partially self-serving all admitted | REP-HS-025 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-074 | HS-C1b | Statement against interest | conspirator says defendant owes proceeds | HS-037 | Was statement against declarant's own pecuniary/proprietary/civil/criminal interest when made? | against party interest; against someone else; partially self-serving all admitted | REP-HS-025 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-075 | HS-C1b | Statement against interest | statement partly self-serving and partly disserving | HS-037 | Was statement against declarant's own pecuniary/proprietary/civil/criminal interest when made? | against party interest; against someone else; partially self-serving all admitted | REP-HS-025 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-076 | HS-C1c | Dying declaration | dying person names shooter | HS-039 | Does statement concern cause/circumstances of impending death and required case type? | dying setting automatically admits any statement | REP-HS-026 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-077 | HS-C1c | Dying declaration | dying person mentions unpaid loan | HS-039 | Does statement concern cause/circumstances of impending death and required case type? | dying setting automatically admits any statement | REP-HS-026 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-078 | HS-C1c | Dying declaration | dying declarant discusses family history | HS-039 | Does statement concern cause/circumstances of impending death and required case type? | dying setting automatically admits any statement | REP-HS-026 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-079 | HS-C1c | Dying declaration | civil action dying statement about unrelated debt | HS-039 | Does statement concern cause/circumstances of impending death and required case type? | dying setting automatically admits any statement | REP-HS-026 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-080 | HS-C1d | Statement of personal/family history | deceased relative states birth/marriage | HS-040 | Does statement concern family/personal history under 804 route? | treat all dead-person statements as family history | REP-HS-027 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-081 | HS-C1d | Statement of personal/family history | family bible record | HS-040 | Does statement concern family/personal history under 804 route? | treat all dead-person statements as family history | REP-HS-027 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-082 | HS-C1d | Statement of personal/family history | ancestry/lineage statement | HS-040 | Does statement concern family/personal history under 804 route? | treat all dead-person statements as family history | REP-HS-027 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-083 | HS-C1d | Statement of personal/family history | statement about property boundary mixed with family history | HS-040 | Does statement concern family/personal history under 804 route? | treat all dead-person statements as family history | REP-HS-027 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-084 | HS-C1e | Forfeiture by wrongdoing | defendant threatens witness not to appear | HS-041 | Did party wrongfully cause unavailability with intent to prevent testimony? | forfeiture if any wrongdoing caused absence; murder always forfeiture | REP-HS-028 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-085 | HS-C1e | Forfeiture by wrongdoing | party hides declarant | HS-041 | Did party wrongfully cause unavailability with intent to prevent testimony? | forfeiture if any wrongdoing caused absence; murder always forfeiture | REP-HS-028 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-086 | HS-C1e | Forfeiture by wrongdoing | defendant kills witness for unrelated reason | HS-041 | Did party wrongfully cause unavailability with intent to prevent testimony? | forfeiture if any wrongdoing caused absence; murder always forfeiture | REP-HS-028 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-087 | HS-C1e | Forfeiture by wrongdoing | wrongdoer causes absence without intent to stop testimony | HS-041 | Did party wrongfully cause unavailability with intent to prevent testimony? | forfeiture if any wrongdoing caused absence; murder always forfeiture | REP-HS-028 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-088 | HS-C2a | Business records | hospital chart | HS-043 | Is the record offered or is a witness proving record contents orally? | business record exception admits oral summary of contents | REP-HS-029 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-089 | HS-C2a | Business records | invoice records not produced | HS-046 | Does regular record system make absence probative of nonoccurrence? | absence not hearsay; need positive record only | REP-HS-031 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-090 | HS-C2a | Business records | daily memos prepared for litigation | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-091 | HS-C2a | Business records | personal meeting notes | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-092 | HS-C2b | Present sense impression | license number dictated as car leaves | HS-048 | Which declarant perceived, and is relay admissible? | all relay speakers treated as one declarant | REP-HS-004 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-093 | HS-C2b | Present sense impression | wife relays husband observation over phone | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-094 | HS-C2b | Present sense impression | delayed statement 20 minutes later | HS-047 | Was statement made while or immediately after perceiving event/condition? | recent equals present sense; memory loss defeats PSI | REP-HS-032 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-095 | HS-C2b | Present sense impression | recorded live observation | HS-047 | Was statement made while or immediately after perceiving event/condition? | recent equals present sense; memory loss defeats PSI | REP-HS-032 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-096 | HS-C2c | Excited utterance | victim scream immediately after assault | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-097 | HS-C2c | Excited utterance | calm hospital narrative two hours later | HS-049 | Was declarant still under stress of startling event? | startling event enough regardless of calm delay | REP-HS-033 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-098 | HS-C2c | Excited utterance | witness identifies attacker while still crying | HS-049 | Was declarant still under stress of startling event? | startling event enough regardless of calm delay | REP-HS-033 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-099 | HS-C2c | Excited utterance | statement about unrelated event after shock | HS-067 | Does the exception cover this exact subject matter? | dramatic setting triggers exception automatically | REP-HS-043 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-100 | HS-C2d | Mental, emotional, or physical condition | letter describing plan to travel | HS-051 | Is statement offered to prove current condition/plan or past fact remembered? | state-of-mind exception proves past conduct | REP-HS-019 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-101 | HS-C2d | Mental, emotional, or physical condition | statement of pain or fear | HS-067 | Does the exception cover this exact subject matter? | dramatic setting triggers exception automatically | REP-HS-043 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-102 | HS-C2d | Mental, emotional, or physical condition | statement of memory/belief | HS-051 | Is statement offered to prove current condition/plan or past fact remembered? | state-of-mind exception proves past conduct | REP-HS-019 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-103 | HS-C2d | Mental, emotional, or physical condition | victim emotion rebutting self-defense | HS-051 | Is statement offered to prove current condition/plan or past fact remembered? | state-of-mind exception proves past conduct | REP-HS-019 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-104 | HS-C2e | Medical diagnosis or treatment | patient tells nurse mechanism of injury | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-105 | HS-C2e | Medical diagnosis or treatment | husband tells doctor defendant was speeding | HS-053 | Was statement made for and reasonably pertinent to diagnosis/treatment? | medical setting admits everything; only statements to doctor count | REP-HS-034 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-106 | HS-C2e | Medical diagnosis or treatment | medical questionnaire completed by decedent | HS-054 | Does statement describe general cause/inception or assign legal fault? | cause always inadmissible; fault always admissible in medical setting | REP-HS-034 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-107 | HS-C2e | Medical diagnosis or treatment | statement to psychologist for diagnosis | HS-067 | Does the exception cover this exact subject matter? | dramatic setting triggers exception automatically | REP-HS-043 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-108 | HS-C2f | Past recollection recorded | police shift-end dictation | HS-067 | Does the exception cover this exact subject matter? | dramatic setting triggers exception automatically | REP-HS-043 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-109 | HS-C2f | Past recollection recorded | license recording after accident | HS-056 | How is the record presented to jury? | record always goes to jury; unavailable if witness can partially remember | REP-HS-035 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-110 | HS-C2f | Past recollection recorded | self-initiated notes with no memory failure | HS-056 | How is the record presented to jury? | record always goes to jury; unavailable if witness can partially remember | REP-HS-035 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-111 | HS-C2f | Past recollection recorded | record made fresh and accurate but witness cannot recall | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-112 | HS-C2g | Public records and reports | fire marshal official report | HS-057 | Was record made by public employee within duty and trustworthy? | public label admits all reports; citation proves truth automatically | REP-HS-036 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-113 | HS-C2g | Public records and reports | motor vehicle registration | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-114 | HS-C2g | Public records and reports | jail record search absence | HS-057 | Was record made by public employee within duty and trustworthy? | public label admits all reports; citation proves truth automatically | REP-HS-036 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-115 | HS-C2g | Public records and reports | police report with eyewitness quote | HS-057 | Was record made by public employee within duty and trustworthy? | public label admits all reports; citation proves truth automatically | REP-HS-036 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-116 | HS-C2h | Learned treatises | expert reads treatise passage | HS-061 | What portion/channel is permitted? | treatise itself admitted as exhibit; no substantive use | REP-HS-037 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-117 | HS-C2h | Learned treatises | jury requests treatise exhibit | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-118 | HS-C2h | Learned treatises | expert denies treatise reliability | HS-060 | Was authority established by expert, other expert, or judicial notice? | any textbook qualifies; expert must have authored text | REP-HS-037 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-119 | HS-C2h | Learned treatises | treatise called to expert's attention on cross | HS-061 | What portion/channel is permitted? | treatise itself admitted as exhibit; no substantive use | REP-HS-037 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-120 | HS-C2i | Ancient documents | authenticated 25-year-old property letter | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-121 | HS-C2i | Ancient documents | old deed recites boundary | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-122 | HS-C2i | Ancient documents | ancient social-media screenshot decoy | HS-062 | Does document fall within ancient-document exception and relevance/authentication rules? | old means automatically admitted; age irrelevant if contents offered | REP-HS-038 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-123 | HS-C2i | Ancient documents | old document with no authenticity proof | HS-062 | Does document fall within ancient-document exception and relevance/authentication rules? | old means automatically admitted; age irrelevant if contents offered | REP-HS-038 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-124 | HS-C2j | Commercial lists or compilations | market price list | HS-063 | Is compilation generally relied on in business/occupation? | internet list automatically reliable; all publications learned treatises | REP-HS-039 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-125 | HS-C2j | Commercial lists or compilations | phone directory | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-126 | HS-C2j | Commercial lists or compilations | trade publication prices | HS-063 | Is compilation generally relied on in business/occupation? | internet list automatically reliable; all publications learned treatises | REP-HS-039 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-127 | HS-C2j | Commercial lists or compilations | unreliable internet compilation | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-128 | HS-C2k | Prior judgments | felony conviction offered in civil case | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-129 | HS-C2k | Prior judgments | prior judgment on essential fact | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-130 | HS-C2k | Prior judgments | nolo plea judgment | HS-067 | Does the exception cover this exact subject matter? | dramatic setting triggers exception automatically | REP-HS-043 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-131 | HS-C2k | Prior judgments | civil judgment against third party | HS-064 | Is judgment offered to prove fact essential to judgment under route? | any prior judgment proves everything; criminal judgment never admissible | REP-HS-040 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-132 | HS-C2l | Residual exception | unique trustworthy statement with notice | HS-067 | Does the exception cover this exact subject matter? | dramatic setting triggers exception automatically | REP-HS-043 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-133 | HS-C2l | Residual exception | sympathetic child statement with no notice | HS-067 | Does the exception cover this exact subject matter? | dramatic setting triggers exception automatically | REP-HS-043 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-134 | HS-C2l | Residual exception | residual used to avoid specific exception requirements | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-135 | HS-C2l | Residual exception | more probative than any reasonably obtainable evidence | HS-065 | Does it satisfy trustworthiness, probativeness, notice, and necessity? | residual fixes every sympathetic hearsay problem | REP-HS-041 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-136 | HS-C2m | Rule of completeness | opponent offers partial confession | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-137 | HS-C2m | Rule of completeness | email excerpt creates misimpression | HS-067 | Does the exception cover this exact subject matter? | dramatic setting triggers exception automatically | REP-HS-043 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-138 | HS-C2m | Rule of completeness | recorded conversation needs context | HS-068 | Is the answer too narrow or too broad for actual admissibility scope? | identify one route and stop; all-purpose admission from limited route | REP-HS-009 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-139 | HS-C2m | Rule of completeness | completion offered over hearsay objection | HS-066 | Does fairness require contemporaneous completion, and what use is allowed? | completeness only timing rule; hearsay always bars remainder | REP-HS-042 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-140 | HS-D1 | Testimonial hearsay gate | grand jury testimony by absent witness | HS-073 | Was defendant given prior opportunity to cross with similar motive? | former testimony exception automatically satisfies Confrontation | REP-HS-044 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-141 | HS-D1 | Testimonial hearsay gate | videotaped police interview | HS-069 | Is statement testimonial and offered for truth against accused? | hearsay exception defeats confrontation; Confrontation applies in civil cases | REP-HS-044 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-142 | HS-D1 | Testimonial hearsay gate | routine bank computer record | HS-073 | Was defendant given prior opportunity to cross with similar motive? | former testimony exception automatically satisfies Confrontation | REP-HS-044 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-143 | HS-D1 | Testimonial hearsay gate | eyewitness lineup ID through officer | HS-074 | Is statement introduced for truth or nontruth? | testimonial-looking statement barred even for nontruth | REP-HS-001 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-144 | HS-D2 | Forensic/expert-basis statements | substitute analyst repeats absent lab notes | HS-071 | Does expert convey absent analyst assertions that matter only if true? | basis-only label avoids hearsay/confrontation | REP-HS-045 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-145 | HS-D2 | Forensic/expert-basis statements | expert independently retests sample | HS-071 | Does expert convey absent analyst assertions that matter only if true? | basis-only label avoids hearsay/confrontation | REP-HS-045 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-146 | HS-D2 | Forensic/expert-basis statements | basis-only forensic report | HS-071 | Does expert convey absent analyst assertions that matter only if true? | basis-only label avoids hearsay/confrontation | REP-HS-045 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-147 | HS-D2 | Forensic/expert-basis statements | testimonial lab certificate | HS-071 | Does expert convey absent analyst assertions that matter only if true? | basis-only label avoids hearsay/confrontation | REP-HS-045 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-148 | HS-D3 | Emergency vs past-facts statements | 911 call during active attack | HS-072 | Was record created for routine administration or prosecution testimony? | authenticated record means nontestimonial; official record always testimonial | REP-HS-046 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-149 | HS-D3 | Emergency vs past-facts statements | station-house interview after scene secure | HS-074 | Is statement introduced for truth or nontruth? | testimonial-looking statement barred even for nontruth | REP-HS-001 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-150 | HS-D3 | Emergency vs past-facts statements | on-scene emergency questioning | HS-069 | Is statement testimonial and offered for truth against accused? | hearsay exception defeats confrontation; Confrontation applies in civil cases | REP-HS-044 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-151 | HS-D3 | Emergency vs past-facts statements | child interview for forensic prosecution | HS-074 | Is statement introduced for truth or nontruth? | testimonial-looking statement barred even for nontruth | REP-HS-001 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-152 | HS-D4 | Records and certificates | business computer records | HS-072 | Was record created for routine administration or prosecution testimony? | authenticated record means nontestimonial; official record always testimonial | REP-HS-046 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-153 | HS-D4 | Records and certificates | certificate of analysis | HS-072 | Was record created for routine administration or prosecution testimony? | authenticated record means nontestimonial; official record always testimonial | REP-HS-046 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-154 | HS-D4 | Records and certificates | absence certification in criminal case | HS-072 | Was record created for routine administration or prosecution testimony? | authenticated record means nontestimonial; official record always testimonial | REP-HS-046 | FRE default; add California toggle if jurisdiction facts specify California. |
| HTRG-155 | HS-D4 | Records and certificates | public record created for administrative purpose | HS-072 | Was record created for routine administration or prosecution testimony? | authenticated record means nontestimonial; official record always testimonial | REP-HS-046 | FRE default; add California toggle if jurisdiction facts specify California. |

---

# SOURCE FILE: `hearsay_wrong_answer_mechanics.md`

# Hearsay Wrong Answer Mechanics — BarMatrix™

Hearsay distractors should be legally plausible. The best wrong answers state a real rule at the wrong route, layer, scope, vehicle, or constitutional posture.

| ID | Wrong Answer Move | What It Does | Source Rows | Repair Logic |
| --- | --- | --- | --- | --- |
| WAL-HS-001 | Truth-purpose collapse | Treats every out-of-court statement as hearsay or every notice/effect statement as truth proof. | Q92, Q101, Q120, Q121, Q145 | Always compare asserted proposition with offered proposition before exceptions. |
| WAL-HS-002 | Exception-before-purpose | Names a hearsay exception before deciding whether any exception is needed. | Q120, Q141 | Purpose first, route second. |
| WAL-HS-003 | Wrong listener notice | Recognizes notice/effect but applies it to a listener whose knowledge is legally irrelevant. | Q105 | Identify the listener whose state of mind matters. |
| WAL-HS-004 | One-link chain success | Stops after finding one valid route in a multi-layer statement. | Q98, Q105, Q116, Q117, Q146 | Every layer needs its own route. |
| WAL-HS-005 | Record container cures embedded hearsay | Uses business/public record label to admit outsider statements inside the record. | Q95, Q123, Q146 | Separate record maker, information supplier, and embedded statements. |
| WAL-HS-006 | Business-record overreach | Assumes records or testimony about records are admissible because the business keeps files. | Q94, Q113, Q139 | Regular-course record and proof of contents are separate. |
| WAL-HS-007 | Original-writing false positive | Invokes best evidence whenever a writing/recording exists, even when not proving contents. | Q92, Q120, Q133, Q150 | Ask whether contents are the target of proof. |
| WAL-HS-008 | Original-writing false negative | Ignores original-writing problem when testimony proves contents of invoices/records. | Q94 | If contents of writing are the point, writing rules matter. |
| WAL-HS-009 | Availability inversion | Uses 804 exception when declarant available or rejects 803 route because declarant available. | Q99, Q106, Q125 | Availability is route-specific. |
| WAL-HS-010 | Subject-to-cross fiction | Treats physical presence or refusal as subject to cross-examination. | Q125, Q149 | Subject to cross means meaningful opportunity about the prior statement. |
| WAL-HS-011 | Current-memory overrequirement | Rejects prior ID because witness cannot remember the ID or event. | Q149 | Memory loss does not defeat subject-to-cross route. |
| WAL-HS-012 | PIS substantive merger | Treats any prior inconsistent statement as substantive evidence. | Q99, Q114, Q128 | Federal substantive PIS needs oath/proceeding/deposition. |
| WAL-HS-013 | PIS total exclusion | Excludes prior inconsistent statement even for impeachment. | Q99, Q114, Q128 | Impeachment use may survive when substantive use fails. |
| WAL-HS-014 | Declarant impeachment overuse | Uses declarant impeachment evidence substantively. | Q103, Q151 | Declarant impeachment usually attacks credibility only. |
| WAL-HS-015 | Declarant impeachment underuse | Rejects impeachment because declarant is absent or cannot explain. | Q103, Q151 | FRE 806 permits impeachment as if declarant testified. |
| WAL-HS-016 | Party admission reliability myth | Requires party statement to be against interest, reliable, or personally known when made. | Q110, Q130, Q148 | Opposing-party statements are adversarial admissions, not reliability exceptions. |
| WAL-HS-017 | Authorization overrequirement | Requires employee to be authorized to speak for vicarious admission. | Q93, Q142 | Vicarious statements require scope/timing, not speaking authority. |
| WAL-HS-018 | Agency statement self-proof | Uses the alleged agent's statement alone to prove agency/authority. | Q119 | Foundation for agency/authority cannot rest solely on statement. |
| WAL-HS-019 | Former-employee overclaim | Treats former employee’s testimony as current employee admission. | Q116 | Employment/agency relationship must exist at time of statement. |
| WAL-HS-020 | Coconspirator narrative overclaim | Treats all conspirator statements as admissions. | Q98 | During and in furtherance is required. |
| WAL-HS-021 | Dying-setting overclaim | Any statement by dying declarant is called dying declaration. | Q122 | Statement must concern cause/circumstances and case type. |
| WAL-HS-022 | Excited-event overclaim | Startling event alone admits delayed/calm narrative. | Q96, Q97, Q129, Q147 | Declarant must still be under stress of excitement. |
| WAL-HS-023 | Present-sense looseness | Treats recent statement as PSI without simultaneity/immediacy/perception. | Q109, Q138 | PSI needs while or immediately after perception. |
| WAL-HS-024 | Medical-setting overclaim | Admits all statements made in hospital/ambulance/doctor setting. | Q134, Q147, Q150 | Statement must be made for and pertinent to diagnosis/treatment. |
| WAL-HS-025 | Medical-cause/fault confusion | Rejects all cause statements or admits all fault statements. | Q134, Q147 | Medical pertinence distinguishes general cause from legal blame. |
| WAL-HS-026 | State-of-mind memory smuggling | Uses state of mind to prove remembered or believed past fact. | Q100, Q112, Q118 | Then-existing condition is not a general past-fact exception. |
| WAL-HS-027 | Intent-statement self-serving bar | Rejects future-intent statements as self-serving hearsay. | Q112, Q118 | Intent/plan can prove future conduct under 803(3). |
| WAL-HS-028 | Learned treatise exhibit overclaim | Lets jury inspect/admit entire treatise as exhibit. | Q104, Q127 | Statements may be read, not received as exhibits. |
| WAL-HS-029 | Learned treatise basis-only underuse | Admits treatise only as expert basis, not substantive statement when foundation met. | Q104 | Reliable treatise statements can be substantive under 803(18). |
| WAL-HS-030 | Recorded recollection foundation skip | Admits notes/recording without memory failure/freshness/accuracy foundation. | Q115, Q135, Q138, Q139 | Recorded recollection has strict predicates. |
| WAL-HS-031 | Refresh/recollection confusion | Confuses refreshing recollection with recorded recollection exception. | Q115, Q135 | One revives memory; the other substitutes a reliable record. |
| WAL-HS-032 | Read/exhibit channel confusion | Correctly sees admissibility but wrong presentation channel. | Q104, Q127, Q115 | Admissibility scope includes read-only/exhibit limits. |
| WAL-HS-033 | Residual catchall reflex | Uses residual when specific route fails but trust facts are absent. | Source gap | Residual is narrow, trustworthiness/probativeness/notice driven. |
| WAL-HS-034 | Rule of completeness as pure timing | Treats completeness as unrelated to hearsay after 2023 amendment. | Source gap | Rule 106 can admit completing statements over hearsay objection when fairness requires. |
| WAL-HS-035 | Confrontation exception-cure | Assumes a hearsay exception cures testimonial hearsay in criminal case. | Q144 | Confrontation is separate constitutional overlay. |
| WAL-HS-036 | Confrontation authentication-cure | Assumes authenticated documents/statements are confrontation-safe. | Q144 | Authentication does not decide testimonial status. |
| WAL-HS-037 | Routine record testimonial confusion | Treats routine computerized records as testimonial police statements. | Q144 | Routine administrative records usually differ from testimonial statements. |
| WAL-HS-038 | Expert basis hearsay laundering | Treats expert reliance as permission to admit the source document for truth. | Q132 | Basis and substantive source admission are distinct. |
| WAL-HS-039 | Policy-exclusion overread | Settlement/remedial/payment labels block party admission despite missing policy elements. | Q130, Q148 | Policy rules require specific contexts/purposes. |
| WAL-HS-040 | Nonperson assertion confusion | Treats dog alert/machine action as hearsay statement from declarant. | Q102 | Hearsay declarant must be a person. |
| WAL-HS-041 | Verbal act truth confusion | Treats operative words as hearsay requiring truth. | Q119 | Some words create legal effects by being spoken. |
| WAL-HS-042 | Knowledge route truth conversion | Uses statement to prove ownership/defect rather than listener belief/knowledge. | Q141, Q145 | Knowledge route must be limited. |
| WAL-HS-043 | Dual-route underadmission | Chooses impeachment-only or exception-only where both routes apply. | Q137, Q138 | One statement can have independent routes. |
| WAL-HS-044 | Dual-route overadmission | Chooses both where only limited purpose works. | Q103, Q114, Q128, Q151 | Both requires two valid routes. |
| WAL-HS-045 | Exception scope mismatch | Correct exception name applied to wrong subject matter or declarant. | Q122, Q147 | Name is not enough; match statement content to rule. |
| WAL-HS-046 | Commercial/ancient/judgment neglect | Fails to recognize uncommon listed exceptions under official outline. | Source gap | Even low-frequency exceptions need calibrated slots. |
| WAL-HS-047 | California label import/export error | Applies FRE nonhearsay/exclusion labels to California exceptions or vice versa. | CA layer | Outcome may match while classification differs. |
| WAL-HS-048 | California PSI overimport | Imports broad FRE present-sense impression into California without §1240/§1241 fit. | CA layer | California must match statutory exceptions precisely. |

---

# SOURCE FILE: `hearsay_bootcamp_repairs.md`

# Hearsay Bootcamp Repairs — BarMatrix™ Master Packet

## REP-HS-001 — Purpose-first routing

- **Tension rows:** HS-001, HS-025, HS-026, HS-074
- **Skill repaired:** Student isolates assertion and offered proposition before naming exception.
- **Drill format:** 20 same-statement/two-purpose drills; 10 nontruth/truth flips.
- **Mastery check:** 95% on purpose classification.

## REP-HS-002 — Statement/declarant identification

- **Tension rows:** HS-002
- **Skill repaired:** Student distinguishes person assertions from nonperson conduct/machine/animal output.
- **Drill format:** Signal-sort drills with dogs, machines, gestures, silence.
- **Mastery check:** 90%; no nonperson hearsay errors.

## REP-HS-003 — Evidence unit / vehicle splitter

- **Tension rows:** HS-003
- **Skill repaired:** Student identifies testimony, writing, recording, transcript, report, and embedded words separately.
- **Drill format:** Multi-object evidence-grid drills.
- **Mastery check:** 85%; correct unit tagging.

## REP-HS-004 — Layer-by-layer hearsay chain

- **Tension rows:** HS-004, HS-005, HS-036, HS-048, HS-059
- **Skill repaired:** Student maps each link and assigns route/pass/fail.
- **Drill format:** Layer map with Layer 1/2/3 rows; one layer deliberately fails.
- **Mastery check:** 90%; explanation names failing link.

## REP-HS-005 — Wrong-listener notice repair

- **Tension rows:** HS-005
- **Skill repaired:** Student checks whose knowledge/notice legally matters.
- **Drill format:** Three-listener notice stem variants.
- **Mastery check:** 90%; relevant listener named.

## REP-HS-006 — Declarant status gate

- **Tension rows:** HS-006, HS-012, HS-042
- **Skill repaired:** Student classifies available/unavailable/subject-to-cross/refusing/memory loss by route.
- **Drill format:** Route-status matrix for 801/803/804.
- **Mastery check:** 90%; status route matched.

## REP-HS-007 — Limited-purpose scope repair

- **Tension rows:** HS-007, HS-034
- **Skill repaired:** Student marks evidence as impeachment-only, notice-only, substantive, dual-route, read-only.
- **Drill format:** Admissibility-scope flashcards.
- **Mastery check:** 90%; no scope overuse.

## REP-HS-008 — Original-writing inside hearsay

- **Tension rows:** HS-008, HS-080
- **Skill repaired:** Student decides whether contents are being proved before using original-writing doctrine.
- **Drill format:** Contents vs notice vs heard-words drills.
- **Mastery check:** 85%; target of proof stated.

## REP-HS-009 — Dual-route calibration

- **Tension rows:** HS-009, HS-068
- **Skill repaired:** Student distinguishes route underuse from route overuse.
- **Drill format:** Both/only/neither drill set.
- **Mastery check:** 85%; answers include two independent routes.

## REP-HS-010 — Policy/privilege decoy filter

- **Tension rows:** HS-010, HS-022
- **Skill repaired:** Student tests public-policy/privilege elements before letting them block hearsay route.
- **Drill format:** Payment/repair/settlement/spouse decoy drills.
- **Mastery check:** 85%; policy element correctly applied.

## REP-HS-011 — Prior inconsistent statement use

- **Tension rows:** HS-011, HS-016
- **Skill repaired:** Student separates impeachment, federal substantive PIS, and California PIS.
- **Drill format:** Under-oath/proceeding vs casual statement variants.
- **Mastery check:** 90%; use label accurate.

## REP-HS-012 — Prior consistent statement rehabilitation

- **Tension rows:** HS-013
- **Skill repaired:** Student matches PCS to proper attack and timing.
- **Drill format:** Recent fabrication/motive timing drills.
- **Mastery check:** 85%; qualifying attack identified.

## REP-HS-013 — Prior identification subject-to-cross

- **Tension rows:** HS-014, HS-015
- **Skill repaired:** Student separates refusal, memory loss, and true cross availability.
- **Drill format:** Prior ID live/refusing/amnesic variants.
- **Mastery check:** 90%; subject-to-cross gate mastered.

## REP-HS-014 — Direct party admission

- **Tension rows:** HS-017, HS-023, HS-024
- **Skill repaired:** Student uses opposing-party relationship, not reliability/disserving logic.
- **Drill format:** Party admission vs self-serving statement drills.
- **Mastery check:** 90%; offered-against-party gate correct.

## REP-HS-015 — Adoptive admission

- **Tension rows:** HS-018
- **Skill repaired:** Student identifies adoption by words, silence, or conduct only when context calls for response.
- **Drill format:** Accusation/silence/nod/handshake variants.
- **Mastery check:** 85%; context response expectation stated.

## REP-HS-016 — Authorized statement foundation

- **Tension rows:** HS-019
- **Skill repaired:** Student separates statement content from authority foundation.
- **Drill format:** Contract acceptance and agent-authority variants.
- **Mastery check:** 85%; independent foundation required.

## REP-HS-017 — Vicarious agent statement

- **Tension rows:** HS-020
- **Skill repaired:** Student checks employment/agency timing and scope of matter.
- **Drill format:** Current/former employee and scope variants.
- **Mastery check:** 90%; timing + scope both marked.

## REP-HS-018 — Co-conspirator route

- **Tension rows:** HS-021
- **Skill repaired:** Student requires conspiracy, during, and in furtherance.
- **Drill format:** Narrative confession vs operational statement drills.
- **Mastery check:** 90%; furtherance element named.

## REP-HS-019 — State of mind / memory-belief

- **Tension rows:** HS-027, HS-028, HS-051, HS-052, HS-078
- **Skill repaired:** Student separates current state/intent from remembered past facts.
- **Drill format:** Fear/plan/love/memory variants.
- **Mastery check:** 90%; memory-belief trap avoided.

## REP-HS-020 — Verbal acts and legally operative words

- **Tension rows:** HS-029
- **Skill repaired:** Student identifies words with independent legal effect.
- **Drill format:** Contract/threat/defamation/notice verbal-act drills.
- **Mastery check:** 85%; legal effect stated.

## REP-HS-021 — Knowledge/mens rea nontruth use

- **Tension rows:** HS-030, HS-031
- **Skill repaired:** Student admits statement for knowledge/belief but not truth.
- **Drill format:** Stolen property/product warning/age discrimination variants.
- **Mastery check:** 90%; limiting use stated.

## REP-HS-022 — Circumstantial identity

- **Tension rows:** HS-032
- **Skill repaired:** Student uses words as identity/location circumstantial evidence.
- **Drill format:** Pen name/nickname/code phrase/caller ID variants.
- **Mastery check:** 85%; nontruth identity route identified.

## REP-HS-023 — Bias/motive nonhearsay

- **Tension rows:** HS-033
- **Skill repaired:** Student distinguishes bias purpose from truth of promise/threat.
- **Drill format:** Cooperation deal/plea promise/payment variants.
- **Mastery check:** 90%; bias route selected.

## REP-HS-024 — Former testimony similar motive

- **Tension rows:** HS-035, HS-036, HS-073
- **Skill repaired:** Student compares party, predecessor, opportunity, and similar motive.
- **Drill format:** Prior civil/criminal/prelim/deposition variants.
- **Mastery check:** 85%; similar motive analysis written.

## REP-HS-025 — Statement against interest severability

- **Tension rows:** HS-037, HS-038
- **Skill repaired:** Student isolates declarant-disserving portions.
- **Drill format:** Mixed inculpatory/self-serving confession variants.
- **Mastery check:** 85%; disserving part separated.

## REP-HS-026 — Dying declaration scope

- **Tension rows:** HS-039
- **Skill repaired:** Student checks case type, death belief, and cause/circumstances subject matter.
- **Drill format:** Death-scene loan vs shooter ID variants.
- **Mastery check:** 90%; subject matter gate identified.

## REP-HS-027 — Family history exception

- **Tension rows:** HS-040
- **Skill repaired:** Student identifies pedigree/personal-family history facts and unavailability.
- **Drill format:** Estate/lineage/marriage/birth variants.
- **Mastery check:** 80%; proper subject selected.

## REP-HS-028 — Forfeiture by wrongdoing

- **Tension rows:** HS-041
- **Skill repaired:** Student requires wrongful causation plus intent to prevent testimony.
- **Drill format:** Threat/violence/hiding witness variants.
- **Mastery check:** 85%; intent gate stated.

## REP-HS-029 — Business records vs contents proof

- **Tension rows:** HS-043
- **Skill repaired:** Student separates record admissibility from oral testimony proving record contents.
- **Drill format:** Invoice/custodian/ledger content drills.
- **Mastery check:** 90%; writing-content target recognized.

## REP-HS-030 — Business record source-duty chain

- **Tension rows:** HS-044, HS-045, HS-079
- **Skill repaired:** Student maps source duty, recorder duty, regular course, trustworthiness.
- **Drill format:** Hospital/store/customer/litigation report variants.
- **Mastery check:** 90%; source duty identified.

## REP-HS-031 — Absence-of-record routes

- **Tension rows:** HS-046, HS-058
- **Skill repaired:** Student uses business/public absence exceptions with normal-recording foundation.
- **Drill format:** Medication, jail, license, payment absence drills.
- **Mastery check:** 85%; absence route selected.

## REP-HS-032 — Present sense impression

- **Tension rows:** HS-047, HS-048
- **Skill repaired:** Student applies perception and immediacy constraints.
- **Drill format:** Live relay/delayed statement/recording variants.
- **Mastery check:** 90%; timing/perception marked.

## REP-HS-033 — Excited utterance

- **Tension rows:** HS-049, HS-050
- **Skill repaired:** Student applies startling event, stress, and relation limits.
- **Drill format:** Immediate scream vs calm later statement variants.
- **Mastery check:** 90%; stress/timing identified.

## REP-HS-034 — Medical diagnosis/treatment

- **Tension rows:** HS-053, HS-054
- **Skill repaired:** Student applies purpose and pertinence; separates cause/fault.
- **Drill format:** Ambulance/nurse/doctor/husband narrative variants.
- **Mastery check:** 85%; pertinence stated.

## REP-HS-035 — Recorded recollection channel

- **Tension rows:** HS-055, HS-056
- **Skill repaired:** Student checks foundation and presentation channel.
- **Drill format:** Tape/dictation/personal notes variants.
- **Mastery check:** 90%; read-only/exhibit rule stated.

## REP-HS-036 — Public records/report limits

- **Tension rows:** HS-057, HS-058, HS-059
- **Skill repaired:** Student distinguishes official duty, absence, and embedded hearsay.
- **Drill format:** Fire marshal/DMV/police report variants.
- **Mastery check:** 85%; outer and inner routes marked.

## REP-HS-037 — Learned treatise route

- **Tension rows:** HS-060, HS-061
- **Skill repaired:** Student establishes reliable authority and read-only channel.
- **Drill format:** Expert relied vs confronted, exhibit vs read variants.
- **Mastery check:** 85%; read/exhibit distinction stated.

## REP-HS-038 — Ancient documents

- **Tension rows:** HS-062
- **Skill repaired:** Student applies age/authentication/content limits.
- **Drill format:** Old deed/letter/family bible variants.
- **Mastery check:** 80%; exception not overused.

## REP-HS-039 — Commercial lists

- **Tension rows:** HS-063
- **Skill repaired:** Student identifies reliance by occupation/business.
- **Drill format:** Market price/directory/trade list variants.
- **Mastery check:** 80%; reliability/reliance stated.

## REP-HS-040 — Prior judgments

- **Tension rows:** HS-064
- **Skill repaired:** Student applies judgment exception to essential facts/purpose.
- **Drill format:** Felony civil judgment/prior conviction variants.
- **Mastery check:** 80%; fact-essential limit identified.

## REP-HS-041 — Residual exception

- **Tension rows:** HS-065
- **Skill repaired:** Student uses residual only with trustworthiness/probativeness/notice.
- **Drill format:** Sympathetic hearsay where no specific route fits.
- **Mastery check:** 80%; notice and necessity stated.

## REP-HS-042 — Rule of completeness

- **Tension rows:** HS-066
- **Skill repaired:** Student applies fairness completion and hearsay-overriding effect.
- **Drill format:** Partial statement/email/tape excerpt variants.
- **Mastery check:** 85%; fairness misimpression stated.

## REP-HS-043 — Exception-scope boundary

- **Tension rows:** HS-067
- **Skill repaired:** Student matches exception label to subject matter and declarant.
- **Drill format:** Dying/medical/excited/drug sale scope variants.
- **Mastery check:** 90%; exact statement content matched.

## REP-HS-044 — Confrontation testimonial gate

- **Tension rows:** HS-069, HS-070, HS-073, HS-074
- **Skill repaired:** Student layers criminal/testimonial/truth/absence/prior-cross gates.
- **Drill format:** Vehicle menu and emergency/investigation variants.
- **Mastery check:** 85%; testimonial and truth gates stated.

## REP-HS-045 — Expert-basis confrontation

- **Tension rows:** HS-071
- **Skill repaired:** Student separates reliance from disclosure and applies Smith.
- **Drill format:** Forensic lab substitute expert variants.
- **Mastery check:** 85%; absent analyst truth support identified.

## REP-HS-046 — Record testimonial sorting

- **Tension rows:** HS-072
- **Skill repaired:** Student separates routine records from testimonial certificates/statements.
- **Drill format:** Computer record/certificate/grand jury/police interview menu.
- **Mastery check:** 85%; purpose of record creation stated.

## REP-HS-047 — California label toggle

- **Tension rows:** HS-075
- **Skill repaired:** Student tracks FRE exclusions vs California hearsay exceptions.
- **Drill format:** Party admission federal/CA same-result label toggle.
- **Mastery check:** 85%; label distinction stated.

## REP-HS-048 — California PIS route

- **Tension rows:** HS-076
- **Skill repaired:** Student compares FRE 801(d)(1)(A) with CA §1235.
- **Drill format:** Police interview prior inconsistency in CA vs federal variants.
- **Mastery check:** 90%; jurisdiction result correct.

## REP-HS-049 — California spontaneous/PSI toggle

- **Tension rows:** HS-077
- **Skill repaired:** Student maps FRE PSI to CA §1240/§1241 possibilities.
- **Drill format:** Same immediate statement under federal and California versions.
- **Mastery check:** 85%; CA statutory fit matched.



---

# SOURCE FILE: `hearsay_row_diagnostics.md`

# Hearsay Uploaded Row Diagnostics — Q92–Q151

This file maps each uploaded BarMatrix Hearsay row to a diagnostic mechanic and production tension.

| Q# | Part | Correct % | Correct | Top Wrong | Official Node | Tension ID | Mechanic | Wrong Answer Trap |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Q92 | pt1 | 61% | D | A (18%) | B3a Effect on listener | HS-PURP-EFFECT-VEHICLE | Police-radio description offered to show what officer heard/reasonable belief; three evidence vehicles all routed to nontruth use; original-writing false positive. | Truth-purpose collapse; over-excludes dispatcher/note because hearsay/content labels feel right. |
| Q93 | pt1 | 56% | A | C (38%) | B2c Vicarious statements | HS-OPP-VICARIOUS | Employee statement on matter within employment scope; no need express authority to speak. | Authorization overrequirement; co-conspirator overclaim; hearsay-exception framing instead of exclusion. |
| Q94 | pt1 | 22% | C | A (49%) | C2a Business records + contents crossover | HS-VEHICLE-CONTENTS | Custodian testimony about invoice contents excluded; proponent must produce records or account for absence when proving contents. | Business-record overreach; first-hand-contents overclaim; self-serving red herring. |
| Q95 | pt1 | 62% | A | D (26%) | C2a Business records | HS-RECORD-BUSINESS-SOURCE | Hospital chart duplicate admissible; regular record made from information transmitted by person with knowledge and duty chain. | Hearsay-within-hearsay overexclusion; recorded-recollection confusion; best-evidence false positive. |
| Q96 | pt1 | 63% | C | A (18%) | C2c Excited utterance | HS-803-EXCITED-FACT-SELECTION | Most likely admissible if victim complained immediately while stress remained. | Exception label substitution; assumes any complaint to any person works. |
| Q97 | pt1 | 84% | B | A (6%) | C2c Excited utterance | HS-803-EXCITED | Wife’s scream immediately tied to startling murder event; statement offered for truth but exception fits. | Spousal/policy decoys; present-sense/state-of-mind confusion. |
| Q98 | pt1 | 56% | B | A (24%) | A3 Multiple hearsay + B2/C1b | HS-CHAIN-ADMISSION-SAI | Nested statement: defendant admission inside friend’s statement against interest; both links must work. | Partial-chain stop; co-conspirator/furtherance overuse; unavailability route confusion. |
| Q99 | pt1 | 50% | B | A (30%) | B1a / impeachment use | HS-IMPEACH-PIS-LIMITED | Cellmate testimony admissible to impeach friend’s trial testimony, not as substantive statement against interest because declarant available/subject to recall. | Impeachment/substantive merger; availability confusion. |
| Q100 | pt1 | 72% | A | C (20%) | C2d Mental/emotional condition | HS-803-STATE-OF-MIND-EMOTION | Victim’s love statement offered to show then-existing feeling inconsistent with aggression. | Victim character/propensity decoy; memory-belief overextension. |
| Q101 | pt1 | 76% | A | D (21%) | B3 nonhearsay purpose | HS-PURP-CIRCUMSTANTIAL-IDENTITY | Pen-name statement offered as circumstantial evidence identity/location, not truth of novel-writing plan. | Truth-purpose collapse; life-insurance/state-of-mind misrouting. |
| Q102 | pt1 | 63% | A | B (18%) | A2 Conduct as hearsay | HS-IN-GEN-CONDUCT-PERSON | Dog alert is not a person’s assertion; not hearsay. | Animal/nonperson assertion confusion; treat all signals as statements. |
| Q103 | pt1 | 58% | C | A (18%) | A3 / FRE 806 declarant impeachment | HS-DECL-IMPEACH-LIMITED | Later declarant statement impeaches admitted excited utterance; limited to credibility. | Declarant impeachment becomes substantive proof; opportunity-to-explain false requirement. |
| Q104 | pt1 | 52% | A | B (38%) | C2h Learned treatise | HS-VEHICLE-LEARNED-TREATISE-READ | Reliable treatise passage can be read/substantive through expert; channel is read/use, not free exhibit. | Basis-only underuse; expert exhibit confusion. |
| Q105 | pt1 | 27% | D | B (58%) | A3 Multiple hearsay + B3a | HS-CHAIN-WRONG-LISTENER | Manager notice link might work, but resident-to-tenant layer fails and wrong listener prevents notice route. | Wrong-listener notice; partial-chain success. |
| Q106 | pt1 | 79% | A | C (10%) | C1a Former testimony | HS-804-FORMER-TESTIMONY | Deceased wife’s prior testimony admissible; prior opportunity and similar motive existed despite weak impeachment use. | Perfect-cross overrequirement; spouse privilege/policy decoy. |
| Q107 | pt1 | 75% | B | C (19%) | C2g Public records/reports | HS-RECORD-PUBLIC-SELF-AUTH | Motor vehicle registration admissible as public/self-auth record for ownership inference. | Ownership relevance decoy; authentication/knowledge confusion. |
| Q108 | pt1 | 69% | A | C (18%) | B3 nonhearsay purpose | HS-PURP-BIAS | Prosecutor promise admissible to show witness bias/motive, not truth of promise’s legal effect. | Hearsay objection to bias; plea/settlement policy decoy. |
| Q109 | pt1 | 72% | A | B (14%) | C2b Present sense impression | HS-803-PSI-REALTIME-RELAY | Phone recording of real-time license relay fits present sense impression despite vehicle complexity. | Recorded recollection/business record substitution; multi-speaker confusion. |
| Q110 | pt1 | 55% | B | C (22%) | B2 party statement | HS-OPP-PARTY-WRITING | Anonymous handwriting-authenticated tax letter offered against defendant as admission. | Settlement/compromise decoy; authorization not needed. |
| Q111 | pt1 | 67% | A | C (18%) | C1b Statement against interest | HS-804-AGAINST-INTEREST | Dead husband’s fault statement exposed civil liability and fits unavailable declarant exception. | Medical treatment/state-of-mind label substitution. |
| Q112 | pt1 | 80% | A | B (10%) | C2d Mental condition | HS-803-STATE-OF-MIND-INTENT | Letter stating future plan to be in Utah is admissible to prove intent/plan. | Self-serving exclusion; hearsay truth-purpose overread. |
| Q113 | pt1 | 57% | B | C (31%) | C2a Business records negative | HS-RECORD-LITIGATION-MEMOS | Daily confusion memos requested for lawsuit/dispute lack regular business record route; embedded outsider confusion too. | Business-record flavor overclaim; customer confusion relevance seduction. |
| Q114 | pt1 | 62% | B | A (21%) | B1a impeachment use | HS-IMPEACH-PIS-TAPE | Secret tape of witness’s prior inconsistent account impeaches witness only; not substantive because not under oath/proceeding. | Impeachment/substantive merger; privacy decoy. |
| Q115 | pt1 | 66% | A | C (18%) | C2f Past recollection recorded | HS-803-RECORDED-RECOLLECTION | Officer/witness recording of license number admissible because memory failed and record made fresh/accurate. | Refresh versus recorded recollection; exhibit/channel confusion. |
| Q116 | pt1 | 17% | D | C (42%) | A3 + C1a | HS-CHAIN-FORMER-TESTIMONY-FAIL | Guard transcript fails former-testimony route because store lacked party/opportunity; agency admission fails because employment ended. | Former-testimony overclaim; inner instruction rescuing outer transcript. |
| Q117 | pt1 | 29% | D | B (38%) | A3 + B2 party statement | HS-CHAIN-THREAT-OUTERFAIL | Defendant’s threat might be party admission, but deceased’s retelling to plaintiff has no exception. | Inner-party-admission tunnel vision; state-of-mind false route. |
| Q118 | pt1 | 82% | B | D (11%) | C2d Mental condition | HS-803-STATE-OF-MIND-INTENT | Defendant’s statement of plan to spend time in State B admissible to prove later conduct/alibi. | Self-serving exclusion; availability confusion. |
| Q119 | pt1 | 54% | B | A (20%) | B2b Authorized statements | HS-OPP-AUTHORIZED-CONDITIONAL | Agent’s acceptance statement admissible if total evidence supports actual/apparent authority. | Judge-preponderance overrequirement; statement alone proves agency overclaim. |
| Q120 | pt1 | 27% | B | A (65%) | B3a Effect/notice + routine practice | HS-PURP-NOTICE-ROUTINE | Letter copy offered to show notice and routine mailing practice, not truth/content; duplicate allowed. | Business-record label addiction; best-evidence false negative. |
| Q121 | pt1 | 68% | D | B (23%) | B3a/B3d nonhearsay purpose | HS-PURP-REASON-FOR-ACTION | Employer statement offered to show defendant’s reason/belief, not truth of productivity limit. | Truth-purpose collapse; discrimination relevance overread. |
| Q122 | pt2 | 65% | B | D (33%) | C1c Dying declaration | HS-804-DYING-SCOPE | Death-scene statement about loan does not concern cause/circumstances of impending death; no exception. | Dying-setting overclaim; dead-man statute decoy. |
| Q123 | pt2 | 80% | D | C (18%) | C2a Business records | HS-RECORD-HOSPITAL-DUTYCHAIN | Hospital chart admissible where medical duty chain supplies information/recording route. | Double-hearsay overexclusion; diagnosis/treatment conflation. |
| Q124 | pt2 | 80% | D | B (10%) | B2a Adoptive statements | HS-OPP-ADOPTIVE | Defendant manifested adoption by silence/conduct after introduction as partner. | Silence always/never rule; coconspirator overclaim. |
| Q125 | pt2 | 43% | C | B (33%) | B1c Prior identification | HS-801D1-PRIOR-ID-CROSS-FAIL | Prior ID fails because witness refuses to testify and is not subject to cross about the statement. | Physical presence equals cross-examination; prior-ID shortcut. |
| Q126 | pt2 | 71% | A | D (12%) | C2g Public records | HS-803-ABSENCE-PUBLIC-RECORD | Diligent search and absence of jail record admissible to prove nonoccurrence/absence. | Best evidence/public record certification overrequirement. |
| Q127 | pt2 | 44% | A | B (35%) | C2h Learned treatises | HS-VEHICLE-TREATISE-EXHIBIT | Treatise statements may be read but treatise itself is not received as exhibit. | Learned treatise all-or-nothing; jury can inspect exhibit overclaim. |
| Q128 | pt2 | 74% | C | D (17%) | B1a / impeachment use | HS-IMPEACH-PIS-LIMITED | Second witness may impeach first witness with inconsistent statement; no substantive exception. | PIS substantive overuse; opportunity/foundation confusion. |
| Q129 | pt2 | 61% | D | C (22%) | C2c Excited utterance | HS-803-EXCITED-ID | Victim’s immediate post-beating identification qualifies as excited utterance. | Prior ID route underuse; direct witness availability decoy. |
| Q130 | pt2 | 43% | D | B (25%) | B2 party statement | HS-OPP-PARTY-POLICY-DECOY | Plumber’s offer/reaction admitted as party admission; no disputed claim/settlement and no remedial measure actually taken. | Settlement/remedial-measure false exclusion. |
| Q131 | pt2 | 79% | D | C (18%) | C2g Public records | HS-803-ABSENCE-PUBLIC-CERT | Certification of absence of public license record admissible to prove no license. | Hearsay bar to certification; live custodian overrequirement. |
| Q132 | pt2 | 47% | A | C (38%) | C2a/Expert basis crossover | HS-EXPERT-BASIS-NOT-SUBSTANTIVE | Doctor’s letter may support expert basis but is not itself admissible for truth; not business record. | Expert basis becomes exhibit; business-record overclaim. |
| Q133 | pt2 | 82% | A | C (16%) | B2 party statement + writings crossover | HS-OPP-PARTY-PERSONAL-KNOWLEDGE | Plaintiff can testify from memory of defendant’s admission; recording existence does not trigger original-writing rule. | Best evidence false positive; tape prerequisite overclaim. |
| Q134 | pt2 | 80% | B | D (16%) | C2e Medical diagnosis/treatment | HS-803-MEDICAL-TREATMENT | Statement to nurse/medical personnel about symptoms/cause reasonably pertinent to treatment fits 803(4). | Treating physician only false limit; litigation purpose overread. |
| Q135 | pt2 | 68% | A | B (11%) | C2f Past recollection recorded | HS-803-RECORDED-RECOLLECTION | Authenticated shift-end dictation qualifies when memory insufficient and made fresh/accurate. | Police report/public record label substitution. |
| Q136 | pt2 | 82% | C | D (13%) | C2g Public records/reports | HS-803-PUBLIC-REPORT | Fire marshal report made under legal duty admissible as public record. | Business record only; citation/guilt issue distractor. |
| Q137 | pt2 | 61% | B | A (35%) | B1a/B2 party statement | HS-DUAL-ADMISSION-PIS | Defendant’s prior statement is both impeachment and substantive party admission. | Route underuse: impeachment only; substantive only. |
| Q138 | pt2 | 50% | C | B (35%) | C2b/C2f | HS-DUAL-PSI-RECORDED-RECOLLECTION | License-number dictation qualifies as present sense impression and recorded recollection. | Route underuse; memory loss defeats PSI false assumption. |
| Q139 | pt2 | 50% | A | D (41%) | C2a/C2f negative | HS-RECORD-PERSONAL-NOTES-FAIL | Self-initiated notes not business records and no recorded-recollection foundation. | Business-record flavor; immunity/trustworthiness decoy. |
| Q140 | pt2 | 69% | C | A (15%) | C1b Statement against interest | HS-804-SAI-DECLARANT-LIABILITY | Dead friend’s statement exposing own arson/liability qualifies; nurse presence does not privilege it. | Marital privilege/coconspirator decoys. |
| Q141 | pt2 | 66% | C | B (14%) | B3a Effect on listener + Rule 105 | HS-PURP-NOTICE-LIMITING | Consumer letters admitted for notice to manufacturer only with limiting instruction if requested. | Truth/content overuse; policy/product-liability decoy. |
| Q142 | pt2 | 69% | C | B (18%) | B2c Vicarious statements | HS-OPP-VICARIOUS-EMPLOYEE | Employee’s statement about accident within employment during relationship admissible against employer. | Post-event scope false bar; authorized-spokesperson overrequirement. |
| Q143 | pt2 | 91% | D | C (5%) | C2a Business records/absence | HS-803-ABSENCE-BUSINESS-RECORD | Absence of hospital medication entry admissible to prove nonadministration where records normally kept. | Need positive record only; medical privilege/policy decoy. |
| Q144 | pt2 | 51% | B | A (24%) | D Confrontation Clause | HS-CONF-VEHICLE-SORT | Routine computerized bank records are nontestimonial; witness statements/grand jury/ID vehicles testimonial. | Authentication equals confrontation compliance; business record/source confusion. |
| Q145 | pt2 | 57% | C | A (40%) | B3d Knowledge | HS-PURP-KNOWLEDGE-BELIEF | Friend’s ownership statement offered to show defendant’s belief/lack of knowledge, not friend’s actual ownership. | Truth-purpose collapse; gift/ownership verbal act confusion. |
| Q146 | pt2 | 60% | B | D (23%) | A3 multiple hearsay + C2g | HS-CHAIN-PUBLIC-REPORT-EMBEDDED | Police report may be public/business record but embedded eyewitness statement lacks separate route. | Report container cures all embedded hearsay. |
| Q147 | pt2 | 58% | B | C (28%) | C2e Medical diagnosis/treatment negative | HS-803-MEDICAL-CAUSE-SCOPE-FAIL | Husband’s liability narrative to doctor not pertinent to treatment and not excited utterance after delay. | Medical setting overclaim; excited-utterance timing overclaim. |
| Q148 | pt2 | 53% | D | B (31%) | B2 party statement | HS-OPP-PARTY-MEDPAY-DECOY | Defendant’s immediate payment statement admitted as party admission; no settlement dispute/medical payment exclusion does not bar admission of accompanying fault statement in this setup. | Payment/settlement exclusion overread. |
| Q149 | pt2 | 67% | C | B (13%) | B1c Prior identification | HS-801D1-PRIOR-ID-CROSS-OK | Victim’s prior ID admissible though memory now lacking because witness testifies and is subject to cross. | Current memory required false rule. |
| Q150 | pt2 | 65% | D | C (19%) | C2e Medical + writings crossover | HS-803-MEDICAL-DUPLICATE | Medical questionnaire statement fits treatment/diagnosis and photocopy/duplicate is admissible. | Original-writing overexclusion; medical statement limited to doctor false rule. |
| Q151 | pt2 | 71% | D | A (13%) | FRE 806 declarant impeachment | HS-DECL-IMPEACH-FRE806 | Admitted hearsay declarant can be impeached by inconsistent statement without opportunity to explain/deny. | Declarant unavailable bars impeachment; substantive innocence overuse. |

---

# SOURCE FILE: `hearsay_question_blueprint.md`

# Hearsay 1,200-Slot Question Blueprint — BarMatrix™

The workbook contains all 1,200 slots. This markdown file explains how to use the blueprint.

## Slot fields

| Field | Meaning |
| --- | --- |
| Slot ID | Unique production slot identifier. |
| Official Section / Node | California Bar Hearsay outline node. |
| Tension ID | Primary legal collision to test. |
| Fact Pattern Frame | Seed structure, not final question text. |
| Evidence Vehicle | How the statement reaches the courtroom. |
| Purpose Route | Truth, notice, impeachment-only, dual route, chain pass/fail, read-only, or confrontation scope. |
| Jurisdiction Variant | FRE baseline, California distinction, mixed comparison, or confrontation overlay. |
| Wrong Traps 1–3 | Distractor mechanics to use in answer choices. |
| Difficulty Band / Accuracy Target | Calibration, core diagnostic, trap repair, elite discriminator. |
| Repair | Bootcamp module triggered by wrong answer. |
## Production rules

1. Write from the tension row, not from a doctrine label.
2. Identify the exact statement before drafting answer choices.
3. Make each distractor fail for a different reason: purpose, layer, route, scope, vehicle, status, or confrontation.
4. Use `both / only / neither` answer structures frequently.
5. For records, require the explanation to identify the source of information and any embedded hearsay.
6. For California variants, specify whether the item is California-specific or merely a federal baseline question with a California note.
7. For Confrontation variants, always include criminal posture, declarant absence, testimonial status, truth use, and prior-cross status.

## Canonical allocation

| Node | Official Topic | Slots |
| --- | --- | --- |
| HS-A1 | Hearsay rule | 44 |
| HS-A2 | Conduct as hearsay | 20 |
| HS-A3 | Multiple hearsay | 50 |
| HS-A4 | Unavailability necessary/unnecessary | 30 |
| HS-B1a | Prior sworn inconsistent statement | 28 |
| HS-B1b | Prior consistent statement | 22 |
| HS-B1c | Prior identification | 28 |
| HS-B2a | Adoptive statements | 28 |
| HS-B2b | Authorized statements | 28 |
| HS-B2c | Vicarious statements | 38 |
| HS-B2d | Co-conspirator statements | 31 |
| HS-B2e | Direct party admissions | 38 |
| HS-B3a | Effect on listener | 44 |
| HS-B3b | Declarant/victim state of mind as nontruth/condition proof | 35 |
| HS-B3c | Legally operative facts and verbal acts | 28 |
| HS-B3d | Statements showing declarant’s knowledge | 22 |
| HS-B3e | Absence of mistake / mens rea | 22 |
| HS-C1a | Former testimony | 35 |
| HS-C1b | Statement against interest | 35 |
| HS-C1c | Dying declaration | 25 |
| HS-C1d | Statement of personal/family history | 16 |
| HS-C1e | Forfeiture by wrongdoing | 28 |
| HS-C2a | Business records | 50 |
| HS-C2b | Present sense impression | 28 |
| HS-C2c | Excited utterance | 31 |
| HS-C2d | Mental, emotional, or physical condition | 35 |
| HS-C2e | Medical diagnosis or treatment | 35 |
| HS-C2f | Past recollection recorded | 35 |
| HS-C2g | Public records and reports | 44 |
| HS-C2h | Learned treatises | 28 |
| HS-C2i | Ancient documents | 16 |
| HS-C2j | Commercial lists or compilations | 13 |
| HS-C2k | Prior judgments | 16 |
| HS-C2l | Residual exception | 22 |
| HS-C2m | Rule of completeness | 31 |
| HS-D1 | Testimonial hearsay gate | 50 |
| HS-D2 | Forensic/expert-basis statements | 35 |
| HS-D3 | Emergency vs past-facts statements | 28 |
| HS-D4 | Records and certificates | 28 |

---

# SOURCE FILE: `hearsay_california_distinctions.md`

# Hearsay California Distinctions — BarMatrix™

The California Bar MCQ outline says the Federal Rules of Evidence are assumed unless the question specifies otherwise. This file is the California overlay for California-specific BarMatrix materials.

| ID | Distinction | Operational Meaning | Trigger Family | Drafting Note |
| --- | --- | --- | --- | --- |
| CA-HS-001 | CEC §1200 vs FRE 801 | Both use truth-purpose definition, but California labels and statutory scheme differ. | Hearsay rule, nontruth purpose, statement definition | Do not assume outcome differs; sometimes only classification differs. |
| CA-HS-002 | Party admissions | FRE 801(d)(2) treats opposing-party statements as nonhearsay; California generally frames admissions as hearsay exceptions such as §1220. | Direct, adoptive, authorized, vicarious statements | Correct answer wording may need 'exception' rather than 'not hearsay' in California mode. |
| CA-HS-003 | Prior inconsistent statements | FRE substantive use requires under-oath proceeding/deposition; California §1235 is broader when §770 conditions are met. | PIS impeachment/substantive variants | High-value California distinction; build direct comparison slots. |
| CA-HS-004 | Prior consistent / prior identification | FRE 801(d)(1)(B)/(C) differs from California statutory prior statement articles. | PCS/ID witness subject-to-cross variants | QA each item before publishing California answer. |
| CA-HS-005 | Spontaneous statements | California §1240 tracks stress/excitement and perception; label as spontaneous statement, not generic excited utterance if writing California material. | Immediate startled statements | Outcome often similar to FRE 803(2), but terminology differs. |
| CA-HS-006 | Present sense impression gap | FRE has present sense impression; California does not have an identical broad PSI rule. Use §1240 or §1241 when facts fit. | Real-time observations, license number, live phone relay | Do not import broad FRE PSI into California. |
| CA-HS-007 | State of mind | California §1250 expressly excludes memory/belief to prove remembered/believed fact. | Fear/intent/memory-belief items | Useful for California explanations because statute text is explicit. |
| CA-HS-008 | Medical diagnosis/treatment | California §1253 has narrower wording and specific conditions; compare before using FRE 803(4) result. | Ambulance, nurse, doctor statements | California answer may need condition-specific route. |
| CA-HS-009 | Business records | California §1271 requires regular course, near time, custodian/qualified witness, and trustworthiness. | Hospital chart, invoices, employee memos | Source duty/trustworthiness remains critical. |
| CA-HS-010 | Official records | California §1280 requires public employee duty, near-time record, and trustworthy source/method/time. | Fire marshal, police report, DMV, license board | Confrontation still overlays criminal testimonial use. |
| CA-HS-011 | Former testimony | California §1291 has successor/party and similar motive/opportunity language. | Prior proceedings, transcripts | Build civil/criminal and successor-in-interest variants. |
| CA-HS-012 | Hearsay declarant impeachment | California §1202 allows inconsistent statement/conduct to attack hearsay declarant without opportunity to explain/deny. | Declarant impeachment after admitted hearsay | Aligns well with FRE 806 but use CA code in explanations. |
| CA-HS-013 | Secondary evidence rule | California §1521 permits otherwise admissible secondary evidence of writings subject to genuine dispute/unfairness/authentication; does not cure hearsay. | Copies of notices/questionnaires/letters | Do not equate duplicate/original-writing analysis with hearsay route. |
| CA-HS-014 | Residual exception | FRE 807 exists; California does not have a broad identical residual hearsay exception in ordinary form. | Sympathetic hearsay not fitting statutory exception | Do not create California residual shortcuts. |
| CA-HS-015 | Expert-basis hearsay / Sanchez | California expert-basis disclosure of case-specific hearsay has special limitations; Confrontation may apply if testimonial. | Expert repeats reports/lab notes | Use in advanced California hearsay/expert crossover slots. |

---

# SOURCE FILE: `hearsay_confrontation_matrix.md`

# Hearsay Confrontation Clause Matrix — BarMatrix™

Confrontation is a constitutional overlay on testimonial hearsay in criminal cases. It is not an additional hearsay exception.

| ID | Gate | Rule Logic | Fact Trigger | Question Design Note |
| --- | --- | --- | --- | --- |
| CONF-001 | Criminal case gate | Civil cases do not trigger the Sixth Amendment confrontation right. | Civil plaintiff offers police report | Use ordinary hearsay/public-record analysis only. |
| CONF-002 | Truth-use gate | If statement is not offered for truth, Confrontation problem may not arise. | Police statement offered for effect on officer | Still check Rule 403/limiting instruction. |
| CONF-003 | Testimonial status | Formal statements for prosecution are high risk; emergency statements are lower risk. | Station interview vs 911 call | Primary purpose and solemnity/formality matter. |
| CONF-004 | Declarant absence | Confrontation problem requires absent declarant or no meaningful cross. | Witness testifies and is cross-examined | If witness appears/crossed, confrontation objection weakens. |
| CONF-005 | Prior opportunity | Unavailable testimonial declarant can be admitted only with prior opportunity to cross. | Preliminary hearing vs grand jury | Grand jury no cross; preliminary hearing may or may not suffice. |
| CONF-006 | Records | Routine business/computer records are often nontestimonial; formal certificates/lab reports may be testimonial. | Bank computer records vs lab certificate | Purpose of record creation matters. |
| CONF-007 | Expert basis | Substitute expert cannot relay absent analyst assertions that support opinion only if true. | Smith-style lab notes | Basis label no longer solves the truth-use problem. |
| CONF-008 | Vehicle menu design | Give four evidence vehicles and make only one confrontation-safe. | Grand jury transcript, videotape, routine record, officer recounting ID | This is the strongest MCQ architecture. |

---

# SOURCE FILE: `hearsay_layering_engine.md`

# Hearsay Layering Engine — Statement, Route, Vehicle, Scope

## Required analysis sequence

1. **Identify every statement.**
2. **Identify every declarant.**
3. **Identify the offered proposition for each statement.**
4. **Mark truth or nontruth for each proposition.**
5. **Assign one route per hearsay layer.**
6. **Check the vehicle: testimony, record, transcript, tape, copy, certificate, report.**
7. **Set the admissibility scope: truth, impeachment-only, notice-only, read-only, exhibit, dual route, or inadmissible.**
8. **Add Confrontation or California overlay when facts require it.**

## Layer map template

```yaml
evidence_unit: ""
vehicle: "testimony | writing | recording | report | transcript | certification | duplicate"
layer_1:
  declarant: "trial witness"
  assertion: ""
  offered_for: ""
  route: "live testimony / personal knowledge"
layer_2:
  declarant: ""
  assertion: ""
  offered_for: ""
  truth_or_nontruth: ""
  route: ""
  result: "pass | fail"
layer_3:
  declarant: ""
  assertion: ""
  offered_for: ""
  truth_or_nontruth: ""
  route: ""
  result: "pass | fail"
scope:
  admissible_as: "substantive | impeachment_only | notice_only | read_only | exhibit | inadmissible"
limiting_instruction: "yes | no | on request"
confrontation: "none | testimonial risk | barred | satisfied"
california_distinction: ""
```

## High-yield layer patterns

| Pattern | Example source rows | Correct architecture |
| --- | --- | --- |
| Inner works, outer fails | Q116, Q117 | Party/agent statement may pass, but transcript or retelling fails. |
| Record works, embedded quote fails | Q146 | Public report may be admissible; eyewitness statement inside needs its own route. |
| Nontruth works at one listener only | Q105 | Notice to manager might work, but statement to tenant does not show owner notice. |
| Read-only evidence | Q104, Q127 | Learned treatise statements may be read; whole book not exhibit. |
| Dual route | Q137, Q138 | Evidence may be impeachment and substantive, or PSI and recorded recollection. |


---

# SOURCE FILE: `hearsay_source_appendix.md`

# Source Appendix — Hearsay Master Packet

| Source | URL | Use |
| --- | --- | --- |
| California Bar Evidence MCQ Content Map | https://www.calbar.ca.gov/Portals/0/documents/admissions/Examinations/CBX-MCQ-Outline-Evidence.pdf | Official outline; Hearsay 25%; topics illustrative; FRE assumed. |
| FRE 801 | https://www.law.cornell.edu/rules/fre/rule_801 | Definitions; exclusions from hearsay; prior statements; opposing-party statements. |
| FRE 802 | https://www.law.cornell.edu/rules/fre/rule_802 | Rule against hearsay. |
| FRE 803 | https://www.law.cornell.edu/rules/fre/rule_803 | Exceptions regardless of declarant availability. |
| FRE 804 | https://www.law.cornell.edu/rules/fre/rule_804 | Unavailable-declarant exceptions. |
| FRE 805 | https://www.law.cornell.edu/rules/fre/rule_805 | Hearsay within hearsay; each layer must conform. |
| FRE 806 | https://www.law.cornell.edu/rules/fre/rule_806 | Attacking and supporting hearsay declarant. |
| FRE 807 | https://www.law.cornell.edu/rules/fre/rule_807 | Residual exception. |
| FRE 105 | https://www.law.cornell.edu/rules/fre/rule_105 | Limiting evidence admitted for limited purpose or party. |
| FRE 106 | https://www.law.cornell.edu/rules/fre/rule_106 | Rule of completeness; 2023 amendment over hearsay objection when required by fairness. |
| FRE 1002 | https://www.law.cornell.edu/rules/fre/rule_1002 | Original-writing rule crossover. |
| Smith v. Arizona | https://supreme.justia.com/cases/federal/us/602/22-899/ | 2024 Confrontation Clause/expert-basis hearsay case. |
| California Evidence Code §1200 | https://leginfo.legislature.ca.gov/faces/codes_displaySection.xhtml?lawCode=EVID&sectionNum=1200. | California hearsay rule. |
| California Evidence Code §1202 | https://leginfo.legislature.ca.gov/faces/codes_displaySection.xhtml?lawCode=EVID&sectionNum=1202. | California hearsay declarant impeachment. |
| California Evidence Code §1220 | https://leginfo.legislature.ca.gov/faces/codes_displaySection.xhtml?lawCode=EVID&sectionNum=1220. | California party admissions exception. |
| California Evidence Code §1235 | https://leginfo.legislature.ca.gov/faces/codes_displaySection.xhtml?lawCode=EVID&sectionNum=1235. | California prior inconsistent statement route. |
| California Evidence Code §1240 | https://leginfo.legislature.ca.gov/faces/codes_displaySection.xhtml?lawCode=EVID&sectionNum=1240. | California spontaneous statement. |
| California Evidence Code §1250 | https://leginfo.legislature.ca.gov/faces/codes_displaySection.xhtml?lawCode=EVID&sectionNum=1250. | California state of mind/physical sensation; memory-belief limit. |
| California Evidence Code §1271 | https://leginfo.legislature.ca.gov/faces/codes_displaySection.xhtml?lawCode=EVID&sectionNum=1271. | California business records. |
| California Evidence Code §1280 | https://leginfo.legislature.ca.gov/faces/codes_displaySection.xhtml?lawCode=EVID&sectionNum=1280. | California official records. |
| California Evidence Code §1291 | https://leginfo.legislature.ca.gov/faces/codes_displaySection.xhtml?lawCode=EVID&sectionNum=1291. | California former testimony. |
| California Evidence Code §1521 | https://leginfo.legislature.ca.gov/faces/codes_displaySection.xhtml?lawCode=EVID&sectionNum=1521. | California Secondary Evidence Rule. |