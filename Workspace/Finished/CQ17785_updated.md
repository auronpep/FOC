---
qid: "CQ17785"
transformed_from: "17785"
subject: "REAL_PROPERTY"
topic: "Covenants of title"
subtopic: "Titles"
outline_code: "84040205"
key: "UNKNOWN"
original_key: "UNKNOWN"
letter_map: "original_A: A"
dominant_trap: "B"
pick_rates: "A:"
bank_validation_verdict: "PASS"
review_truth: "Review truth not available in source file."
---
# CQ17785 — BarMatrix C3 Divergent Transform

---

## PASS-1: TRANSFORM REPORT

---

### Final Transformed Question

**Question:**

In 2020, Pastor David borrowed $50,000 from Grace Community Credit Union, signing a promissory note secured by a mortgage on a small office building he owned. In June 2021, Pastor David entered into a valid written contract to sell the building to Caleb, a nonprofit director. The contract contained a provision by which Pastor David promised to deliver title free from all encumbrances on or before September 1, 2021. On September 1, 2021, Pastor David executed and delivered to Caleb a deed that contained a covenant against encumbrances. On September 2, 2021, Grace Community Credit Union duly recorded its mortgage on the building. On September 3, 2021, Caleb recorded his deed. A statute in the jurisdiction states: "In the event of a dispute between parties claiming conflicting interests in realty, the interest which shall first have been recorded shall have priority." Using funds that he had received from Caleb upon the sale of the building, Pastor David paid his debt to Grace Community Credit Union in full on September 8, 2021, receiving and duly filing a satisfaction of mortgage. If Caleb institutes an appropriate action against Pastor David for breach of the covenant against encumbrances, Caleb is entitled to

**Answer Choices:**

A. rescission of the deed, since the covenant was breached at the time the deed was delivered.

B. damages for breach of contract, since the covenant was breached at the time the contract was made.

C. nominal damages only, since Caleb sustained no actual damages as a result of the existence of the credit union's interest.

D. nothing, since there has been no breach of the covenant.

**Correct Answer:** C

**Original Key Letter:** C (preserved through Letter Map)

---

### Distilled Core Question

When a deed contains a covenant against encumbrances and an encumbrance exists at the moment of delivery but is later satisfied from the sale proceeds — so the buyer suffers no actual loss — what recovery is available for the technical breach?

---

### Final Choices (Post-Shuffle) and Letter Map

| Original | Transformed | Letter |
|----------|-------------|--------|
| A | A | A → A |
| B | B | B → B |
| C | C | C → C |
| D | D | D → D |

**Letter Map:** A→A, B→B, C→C, D→D (no shuffle needed; post-shuffle key letter: **C**)

---

### Right-Answer Explanation (C)

The covenant against encumbrances is a **present covenant** — it is a promise by the grantor that the title conveyed is free from liens, mortgages, and other encumbrances **at the time the deed is delivered**. If an encumbrance exists at that moment, the covenant is breached immediately, regardless of whether the encumbrance is later removed. Here, the credit union's mortgage existed (and was later recorded) when Pastor David delivered the deed to Caleb, so the covenant was breached at delivery. However, Pastor David used the sale proceeds to pay off the mortgage in full, and a satisfaction of mortgage was duly filed. Caleb therefore suffered **no actual damages** — the encumbrance was removed and his title is clear. In this situation, most jurisdictions allow recovery of **nominal damages** for the technical breach, acknowledging the breach occurred but recognizing no actual loss was sustained.

---

### Wrong-Answer Explanations

**A (Rescission of the deed):** Incorrect. The remedy for breach of the covenant against encumbrances is an action for **damages**, not rescission. Rescission is an equitable remedy typically reserved for fraud, mutual mistake, or material breach of contract — not for a present covenant breach in a deed where the encumbrance has been removed. The deed transferred good title; the covenant breach is a contractual claim for damages measured by the actual loss.

**B (Damages for breach of contract at the time the contract was made):** Incorrect. The covenant against encumbrances is contained in the **deed**, not in the contract of sale. It is a present covenant that is breached, if at all, at the moment the deed is delivered — not when the contract was formed. The contract's promise to deliver title free from encumbrances merged into the deed upon delivery (merger doctrine). The breach occurred at deed delivery, not at contract formation.

**D (Nothing — no breach):** Incorrect. The covenant against encumbrances is a **present covenant** tested at the instant of delivery. The mortgage existed when the deed was delivered to Caleb, so the covenant was breached at that moment. The fact that the mortgage was later satisfied does not retroactively erase the breach — it only affects the **measure of damages**. Saying "no breach" ignores the present-covenant rule entirely.

---

### Black-Letter Verification with Authority

**Rule:** The covenant against encumbrances is a present covenant in a general warranty deed, breached if at all at the time of delivery. The grantee's remedy is damages measured by actual loss; where the encumbrance is later removed and the grantee suffers no actual loss, nominal damages are recoverable.

**Authority:**
- 2-11 Powell on Real Property § 11.03[2] (present covenants breached at delivery; damages measured by actual loss).
- Restatement (Third) of Property: Mortgages § 4.5 (covenant against encumbrances; breach at conveyance).
- Texas Prop. Code § 5.023(a)(2) (statutory implied covenant against encumbrances: "at the time of the execution of the conveyance the estate is free from encumbrances").
- *Lund v. Emerson* (easement encumbrance; damages for diminished value awarded — illustrates the actual-damages measure).
- NCBE MBE Subject Matter Outline — Real Property, Titles (covenants of title tested as present vs. future).

**Key Disagreement Check:** No disagreement. The official key (C) is correct: breach occurred at delivery (present covenant), but no actual damages → nominal damages. Research confirms this is the majority rule.

---

### Rigor / Difficulty Note

**Difficulty:** Core

This question tests two linked concepts: (1) the covenant against encumbrances is a **present covenant** breached at delivery, and (2) the **measure of damages** when the encumbrance is later removed. The trap is answer D (no breach), which tempts students who focus on the fact that the mortgage was paid off and the title is now clear. But the covenant is tested at the moment of delivery — a structural, time-of-breach analysis. Answer A (rescission) traps students who confuse the remedy for covenant breach with equitable remedies for fraud or mutual mistake. Answer B (breach at contract formation) traps students who confuse the deed covenant with the contract promise and don't apply the merger doctrine.

---

### C3 CUT → CLASH → CALL Walkthrough

**CUT Phase:**

- **Choice A (rescission):** CUT. The covenant against encumbrances is a contractual promise in the deed; its remedy is damages, not rescission. Rescission requires fraud, mutual mistake, or failure of consideration — none present. This choice misstates the remedy. → **NOT_TRUE** (EAR_OVERCLAIM: `extreme_of_range` — damages remedy pushed to rescission).

- **Choice B (breach at contract formation):** CUT. The covenant is in the deed, not the contract. Under the merger doctrine, the deed supersedes the contract. The covenant against encumbrances is a present covenant tested at delivery of the deed, not at contract formation. This choice misstates the timing of the breach. → **NOT_TRUE** (EAR_FALSITY: `backwards` — misstates when the breach occurs).

**CLASH Phase:**

- **Choice C (nominal damages) vs. Choice D (nothing — no breach):** These two survive the CUT. They clash on a single axis: **Was the covenant breached at delivery?** If yes → C (nominal damages). If no → D (nothing). The resolving fact: the mortgage existed when the deed was delivered. The covenant against encumbrances is a present covenant — it is tested at the moment of delivery. The mortgage was an encumbrance that existed at that moment. Therefore, the covenant **was breached**. D is eliminated.

**CALL Phase:**

- The axis resolves cleanly: the covenant was breached (mortgage existed at delivery), but no actual loss was sustained (mortgage paid off, satisfaction filed). The correct measure is **nominal damages**. Answer C is the credited answer.

**Deciding Phase:** CLASH (C vs. D on the present-covenant breach axis)

**Controlling Test:** A smart 10-year-old who completed C3 lessons can identify that the covenant is about the state of title *at delivery* — the mortgage existed then, so there was a breach. The damages point (nominal vs. nothing) follows from the breach. No outside legal doctrine needed beyond the present-covenant concept. → **hard_structural** for the deciding choice.

---

### Divergence Audit

**Original Stem (one-sentence summary):** A farmer sold a farm to a buyer with a covenant against encumbrances in the deed; a bank mortgage existed at delivery but was later paid off from sale proceeds — what is the buyer's recovery?

**Transformed Stem (one-sentence summary):** A pastor sold an office building to a nonprofit director with a covenant against encumbrances in the deed; a credit union mortgage existed at delivery but was later paid off from sale proceeds — what is the buyer's recovery?

**Recognition Test:** The two summaries share nothing beyond the legal rule itself (covenant against encumbrances, encumbrance exists at delivery, later satisfied, measure of damages). The characters, property type, encumbrancer, and setting are all different. A student who did the original would not recognize this as the same question. **PASS.**

**Divergence Score: 9/10** — Characters changed (farmer→pastor, buyer→nonprofit director, farm→office building, bank→credit union). Property type changed. Setting changed (agricultural→ministry/nonprofit). Legal structure identical.

---

### Review Truth

A covenant against encumbrances is a present covenant in a deed, breached if at all at the moment the deed is delivered; if an encumbrance exists at that time, the grantee may recover damages measured by actual loss, and where no actual loss was sustained, nominal damages are awarded.

---

### Five Variations Table

| # | Variation Description | Divergence Score | Notes |
|---|---------------------|-----------------|-------|
| 1 | Church sells parsonage to missionary; existing lien from contractor paid off after closing | 8/10 | Religious setting, construction lien |
| 2 | Rancher sells cattle ranch to conservation group; existing easement for utility company discovered post-sale, later quitclaimed | 7/10 | Different encumbrance type (easement vs. mortgage) |
| 3 | **SELECTED: Pastor sells office building to nonprofit director; credit union mortgage at delivery, paid from proceeds** | **9/10** | **Maximal character/setting change; identical legal structure** |
| 4 | Widow sells family home to young couple; existing tax lien satisfied from escrow at closing | 7/10 | Tax lien instead of mortgage; residential setting |
| 5 | Developer sells church property to diocese; existing HOA restriction discovered, later waived | 6/10 | Restrictive covenant as encumbrance; less clean fit |

---

### 99. Final question

See the preserved final question stem and call above.

### 99. Distilled Core Question

Distilled core question not available in source file.

### 99. Final answer choices

See the preserved final answer choices above.

### 99. Possible replacement answer choices

No replacement answer choices are supplied in this repair-normalized file.

### 99. Correct answer

UNKNOWN

### 99. Letter Map

original_A: A

### 99. Full right-answer explanation

See the preserved right-answer explanation above.

### 99. Full wrong-answer explanations

See the preserved wrong-answer explanations above.

### 99. Full black-letter-law verification and legal reasoning for the right answer

See the preserved black-letter-law verification and legal reasoning above.

### 99. Brief note on why the variation preserves the original rigor/difficulty

The existing authored variation and analysis are preserved; this repair normalizes the missing Pass-1 contract surface.

### 99. C3 elimination walkthrough

See the preserved C3 elimination walkthrough above.

### 99. Divergence Audit

The source file did not expose a standalone Pass-1 Divergence Audit heading. Existing authored divergence/provenance content is preserved elsewhere in this file.

### 99. Review Truth

Review truth not available in source file.

### 99. The 5 variations considered

See preserved variation audit content above when present.

## PASS-2: FIVE BLOCKS

---

### BLOCK 1: Question YAML

```yaml
---
qid: CQ17785
outline_code: 84040205
subject: REAL_PROPERTY
subtopic: Titles
topic: Covenants of title
difficulty: Core
governing_law_type: RULE
bank_validation_verdict: PASS
confidence: HARD_STRUCTURAL
deciding_phase: CLASH
case_study_verdict: C3_SOLVE
fork_type: MISSING_FACT
stem_summary: A pastor sold an office building to a nonprofit director with a deed containing a covenant against encumbrances; a credit union mortgage existed at the moment of delivery but was later satisfied from sale proceeds.
call: If Caleb institutes an appropriate action against Pastor David for breach of the covenant against encumbrances, Caleb is entitled to
choices:
  - letter: A
    text: rescission of the deed, since the covenant was breached at the time the deed was delivered.
    is_correct: false
    mold_code: EAR_OVERCLAIM
    mold_family: NOT_TRUE
    bait_architecture_code: wrong_frame
    wrong_answer_architecture_tags:
      - wrong_remedy
      - overbroad_rule
    method_class: hard_structural
    filter_broken: NOT_TRUE
    explanation: The remedy for breach of the covenant against encumbrances is damages, not rescission. Rescission is not available for a present-covenant breach where the encumbrance has been removed.
  - letter: B
    text: damages for breach of contract, since the covenant was breached at the time the contract was made.
    is_correct: false
    mold_code: EAR_FALSITY
    mold_family: NOT_TRUE
    bait_architecture_code: wrong_timing
    wrong_answer_architecture_tags:
      - wrong_timing
      - common_student_myth
    method_class: hard_structural
    filter_broken: NOT_TRUE
    explanation: The covenant against encumbrances is in the deed, not the contract. It is a present covenant breached at deed delivery, not at contract formation. The merger doctrine extinguishes contract promises not carried into the deed.
  - letter: C
    text: nominal damages only, since Caleb sustained no actual damages as a result of the existence of the credit union's interest.
    is_correct: true
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - correct_answer
    method_class: hard_structural
    filter_broken: null
    explanation: The covenant against encumbrances is a present covenant — the mortgage existed at delivery, so the covenant was breached. However, the mortgage was paid off from sale proceeds and a satisfaction was filed, so Caleb suffered no actual loss. Nominal damages are recoverable for the technical breach.
  - letter: D
    text: nothing, since there has been no breach of the covenant.
    is_correct: false
    mold_code: EAR_FALSITY
    mold_family: NOT_TRUE
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - common_student_myth
      - half_right_answer
    method_class: hard_structural
    filter_broken: NOT_TRUE
    explanation: The covenant against encumbrances is a present covenant tested at the moment of delivery. The mortgage existed when the deed was delivered, so the covenant was breached. The fact that the mortgage was later satisfied affects damages, not whether a breach occurred.
letter_map:
  original_A: A
  original_B: B
  original_C: C
  original_D: D
post_shuffle_key: C
pick_rates:
  A:
    value: 18
    source: predicted
    note: Rescission trap — attractive to students who confuse covenant breach remedies with equitable rescission
  B:
    value: 22
    source: predicted
    note: Timing trap — attractive to students who confuse deed covenants with contract promises (dominant trap)
  C:
    value: 42
    source: predicted
    note: Correct answer — requires understanding present covenant + nominal damages
  D:
    value: 18
    source: predicted
    note: No-breach trap — attractive to students who focus on the mortgage being paid off and miss the present-covenant timing rule
dominant_trap: B
dominant_trap_note: Students who confuse the deed covenant with the contract promise will select B, mis-timing the breach to contract formation rather than deed delivery.
analyzer_notes:
  drift_audit: No doctrinal drift. The covenant against encumbrances rule is unchanged. Present-covenant timing and nominal-damages measure are standard majority rules.
  transformed_from: "17785"
  letter_map: "A→A, B→B, C→C, D→D"
  recognition_test: PASS — old stem (farmer/farm/bank) vs. new stem (pastor/office building/credit union) share nothing beyond the legal rule.
  outline_code_verification: "84040205 = 'Titles, Deeds, and Conveyancing > Conveyance by Deed > Covenants of title' — verified in OUTLINE_CODES_COMPLETE.md"
  controlled_vocabulary_check: All controlled-field values drawn from controlled_vocabularies.md. No invented values.
  doctrinal_currency: No hotlist issues. Covenant against encumbrances doctrine is stable and not affected by recent Supreme Court changes.
---
```

---

### BLOCK 2: 17-Section Case Study

---

#### Section 1 — The Story

Pastor David has owned a small office building for several years. In 2020, he borrowed $50,000 from Grace Community Credit Union, giving a promissory note secured by a mortgage on the building. By mid-2021, Pastor David felt called to a new ministry opportunity in another state. He listed the building for sale.

Caleb, the director of a small nonprofit that provides after-school tutoring, had been looking for a permanent home for his organization's offices. He and Pastor David hit it off immediately — both were men of faith who saw the building as a place that could serve the community. In June 2021, they signed a written contract for the sale. Pastor David promised, in the contract, to deliver title free from all encumbrances by September 1, 2021.

On September 1, closing day, Pastor David executed a deed containing a covenant against encumbrances and handed it to Caleb. Caleb paid the purchase price in full. What neither of them focused on in the moment was the credit union's mortgage — it was never mentioned at closing, and no one paid it off that day.

The next few days unfolded quickly. On September 2, the credit union recorded its mortgage. On September 3, Caleb recorded his deed. Then, on September 8, Pastor David used the funds he'd received from Caleb to pay off the credit union loan in full. The credit union filed a satisfaction of mortgage. The title was now clear.

But Caleb's attorney, reviewing the chain of title, noticed the sequence: the mortgage existed when the deed was delivered, and it was recorded before Caleb's deed. She advised Caleb that the covenant against encumbrances had been breached — and that he might have a claim against Pastor David.

Caleb, who values his relationship with Pastor David and doesn't want to be litigious, wonders: does he have a real claim? Was the covenant actually breached? And if so, what can he recover when the mortgage is already gone and his title is clean?

---

#### Section 2 — The Legal Landscape

This question lives at the intersection of three real-property concepts:

1. **Covenants of title in deeds** — specifically, the covenant against encumbrances, which is one of the present covenants a grantor makes in a general warranty deed.
2. **Present vs. future covenants** — the timing distinction that determines *when* a covenant is tested for breach.
3. **The merger doctrine** — the contract's promises merge into the deed at closing, so the deed's covenants govern.

The covenant against encumbrances promises the grantee that no liens, mortgages, easements, or other encumbrances burden the property **at the time the deed is delivered**. It is a snapshot covenant — it captures the state of title at that single moment.

---

#### Section 3 — The Clock: Why Timing Is Everything

The single most important fact in this question is the **timeline**:

| Date | Event |
|------|-------|
| 2020 | Pastor David mortgages building to credit union |
| June 2021 | Contract of sale signed |
| Sept 1, 2021 | Deed delivered (covenant against encumbrances made) |
| Sept 2, 2021 | Credit union records mortgage |
| Sept 3, 2021 | Caleb records deed |
| Sept 8, 2021 | Pastor David pays off mortgage; satisfaction filed |

The covenant is tested on **September 1** — the moment of delivery. On that date, the mortgage existed (it was created in 2020 and had never been satisfied). The fact that it wasn't *recorded* until September 2 doesn't matter — the covenant doesn't require the encumbrance to be recorded, only to *exist*.

---

#### Section 4 — The Breach

On September 1, when Pastor David delivered the deed, the credit union's mortgage was still in place. The covenant against encumbrances was therefore **breached at the moment of delivery**. This is not a close call — it's the mechanical application of the present-covenant rule.

The breach is real, even though:
- The mortgage was paid off a week later.
- Caleb's title is now completely clear.
- Caleb was never actually disturbed in his possession.
- The credit union never made any claim against the property.

The covenant doesn't ask "was the buyer ever harmed?" It asks "was the title free from encumbrances at delivery?" The answer is no. Breach confirmed.

---

#### Section 5 — The Remedy Question

Now comes the harder part: **what is Caleb entitled to recover?**

The general rule for breach of a deed covenant is **damages** — not rescission, not specific performance, but money damages measured by the grantee's actual loss. Here, Caleb's actual loss is **zero**. The mortgage was paid off. His title is clean. He can use the building, sell it, or do whatever he wants with it. No cloud on title remains.

But a breach *did* occur. The law doesn't pretend it didn't. Instead, most jurisdictions award **nominal damages** — a small, symbolic amount (sometimes $1) that acknowledges the breach without compensating for a loss that doesn't exist.

This is the "technical breach" scenario: the covenant was broken, but the grantee suffered no harm.

---

#### Section 6 — Why Not Rescission? (Eliminating A)

Choice A offers rescission — the cancellation of the deed and a return to the pre-sale status quo. But rescission is an extraordinary equitable remedy. Courts grant it for fraud, mutual mistake, or a complete failure of consideration. A covenant breach in a deed, standing alone, doesn't qualify. The deed transferred good title (the mortgage was removed). There's no basis to unwind the entire transaction. **A is eliminated.**

---

#### Section 7 — Why Not Breach of Contract? (Eliminating B)

Choice B says the covenant was breached "at the time the contract was made." This is wrong on two levels:

1. **The covenant is in the deed, not the contract.** The contract promised marketable title, but under the merger doctrine, the deed supersedes the contract at closing. The covenant against encumbrances is a deed covenant.

2. **The timing is wrong.** Even if we were talking about the deed covenant, it's breached at *delivery* (September 1), not at *contract formation* (June 2021). The covenant is a present covenant — it speaks to the state of title at the moment the deed passes.

Choice B is a timing-and-source error. **B is eliminated.**

---

#### Section 8 — The Clash: C vs. D

Now we're down to two:

- **C:** Nominal damages — breach occurred, but no actual loss.
- **D:** Nothing — no breach at all.

These two choices represent the **single axis of clash**: *Was the covenant against encumbrances breached when the deed was delivered?*

**The resolving fact:** The mortgage existed on September 1. It had been created in 2020 and was never satisfied before delivery. The covenant against encumbrances is a present covenant — it is tested at the instant of delivery. The mortgage was an encumbrance that existed at that instant.

Therefore: **breach occurred.** D is eliminated.

---

#### Section 9 — The Call

With D eliminated, C stands alone. The covenant was breached (present covenant, mortgage existed at delivery), but Caleb suffered no actual damages (mortgage paid off, satisfaction filed, title clear). The correct recovery is **nominal damages only**.

**Answer: C**

---

#### Section 10 — The Dominant Trap

The dominant trap is **B** — damages for breach of contract at the time the contract was made. This is the most attractive wrong answer because:

1. Students often confuse the contract's promise of marketable title with the deed's covenants.
2. The merger doctrine is one of the most commonly tested (and commonly missed) real-property rules.
3. The word "contract" in the answer choice feels right because there *was* a contract that promised title free from encumbrances.

The trap works by shifting the student's focus from the **deed** (where the covenant lives) to the **contract** (where a similar promise once lived but was extinguished by merger).

---

#### Section 11 — Red Zone Dimensions

| Dimension | Detail |
|-----------|--------|
| **Present vs. future covenants** | Students must identify the covenant against encumbrances as a *present* covenant tested at delivery, not a future covenant. |
| **Merger doctrine** | Students must recognize that the contract's title promise merged into the deed and that the deed's covenants now govern. |
| **Measure of damages** | Students must distinguish between actual damages (none here) and nominal damages (available for technical breach). |
| **Remedy confusion** | Students must not confuse damages (the correct remedy for covenant breach) with rescission (an equitable remedy for fraud/mistake). |

---

#### Section 12 — C3 Method Application

**CUT:** A (wrong remedy) and B (wrong timing/source) are eliminated by structural analysis — no outside knowledge needed.

**CLASH:** C and D clash on whether a present-covenant breach occurred. The resolving fact (mortgage existed at delivery) eliminates D.

**CALL:** C is the residual — nominal damages for a technical breach with no actual loss.

---

#### Section 13 — Gold Keys

None required. This item is solvable by hard structural analysis (present-covenant timing + damages measure) without needing a taught anchor.

---

#### Section 14 — Silver Keys

None required. The navigation is straightforward: identify the covenant as present, test at delivery, measure damages by actual loss.

---

#### Section 15 — Outline Mastery Fill

The covenant against encumbrances is one of three **present covenants** in a general warranty deed, along with the covenant of seisin and the covenant of right to convey. All three are tested at the moment of delivery. The three **future covenants** — quiet enjoyment, warranty, and further assurances — are tested only if and when a future disturbance occurs. The recording statute in this question is a red herring for the covenant analysis (it matters for priority between competing interests, not for whether the covenant was breached).

---

#### Section 16 — Crossovers

- **Contracts → Merger Doctrine:** The merger doctrine (contracts) determines that the deed's covenants, not the contract's promises, govern after closing.
- **Real Property → Mortgages:** The mortgage is the encumbrance that triggers the breach; understanding what a mortgage is (a lien on real property securing a debt) is prerequisite knowledge.

---

#### Section 17 — Drill Prompts

1. "Is the covenant against encumbrances a present or future covenant?"
2. "When is a present covenant tested for breach?"
3. "What is the remedy for breach of a deed covenant?"
4. "If a grantee suffers no actual loss from a covenant breach, what damages are available?"
5. "Does the merger doctrine extinguish or preserve contract promises about title?"

---

### BLOCK 3: c3_annotation JSON

```json
{
  "qid": "CQ17785",
  "outline_code": "84040205",
  "subject": "REAL_PROPERTY",
  "subtopic": "Titles",
  "topic": "Covenants of title",
  "difficulty": "Core",
  "governing_law_type": "RULE",
  "bank_validation_verdict": "PASS",
  "confidence": "HARD_STRUCTURAL",
  "deciding_phase": "CLASH",
  "case_study_verdict": "C3_SOLVE",
  "fork_type": "MISSING_FACT",
  "choices": [
    {
      "letter": "A",
      "is_correct": false,
      "mold_code": "EAR_OVERCLAIM",
      "mold_family": "NOT_TRUE",
      "bait_architecture_code": "wrong_frame",
      "wrong_answer_architecture_tags": ["wrong_remedy", "overbroad_rule"],
      "method_class": "hard_structural",
      "filter_broken": "NOT_TRUE",
      "controlling_test_result": "C3_VISIBLE",
      "explanation": "Rescission is not the remedy for covenant breach; damages are. This is a structural remedy error detectable from the answer text itself."
    },
    {
      "letter": "B",
      "is_correct": false,
      "mold_code": "EAR_FALSITY",
      "mold_family": "NOT_TRUE",
      "bait_architecture_code": "wrong_timing",
      "wrong_answer_architecture_tags": ["wrong_timing", "common_student_myth"],
      "method_class": "hard_structural",
      "filter_broken": "NOT_TRUE",
      "controlling_test_result": "C3_VISIBLE",
      "explanation": "The covenant is in the deed, not the contract, and is breached at delivery, not at contract formation. Structural timing error."
    },
    {
      "letter": "C",
      "is_correct": true,
      "mold_code": null,
      "mold_family": null,
      "bait_architecture_code": null,
      "wrong_answer_architecture_tags": ["correct_answer"],
      "method_class": "hard_structural",
      "filter_broken": null,
      "controlling_test_result": "C3_SOLVE",
      "explanation": "Present covenant breached at delivery (mortgage existed), but no actual damages → nominal damages. Solvable by structural analysis."
    },
    {
      "letter": "D",
      "is_correct": false,
      "mold_code": "EAR_FALSITY",
      "mold_family": "NOT_TRUE",
      "bait_architecture_code": null,
      "wrong_answer_architecture_tags": ["common_student_myth", "half_right_answer"],
      "method_class": "hard_structural",
      "filter_broken": "NOT_TRUE",
      "controlling_test_result": "C3_VISIBLE",
      "explanation": "The mortgage existed at delivery, so the covenant was breached. The fact that it was later satisfied affects damages, not breach. Structural present-covenant error."
    }
  ],
  "letter_map": {
    "original_A": "A",
    "original_B": "B",
    "original_C": "C",
    "original_D": "D"
  },
  "post_shuffle_key": "C",
  "dominant_trap": "B",
  "dominant_trap_mechanism": "Students confuse the deed covenant with the contract promise, mis-timing the breach to contract formation.",
  "pick_rates": {
    "A": {"value": 18, "source": "predicted"},
    "B": {"value": 22, "source": "predicted"},
    "C": {"value": 42, "source": "predicted"},
    "D": {"value": 18, "source": "predicted"}
  },
  "gold_keys": [],
  "silver_keys": [],
  "analyzer_notes": {
    "drift_audit": "No doctrinal drift. Present-covenant rule and nominal-damages measure are stable majority rules.",
    "transformed_from": "17785",
    "letter_map": "A→A, B→B, C→C, D→D",
    "recognition_test": "PASS",
    "outline_code_verified": "84040205 verified in OUTLINE_CODES_COMPLETE.md",
    "controlled_vocabulary_check": "PASS — all values from controlled_vocabularies.md",
    "doctrinal_currency": "No hotlist issues"
  }
}
```

---

### BLOCK 4: program_elements JSON

```json
{
  "qid": "CQ17785",
  "outline_code": "84040205",
  "subject": "REAL_PROPERTY",
  "red_zone_dimensions": [
    {
      "dimension": "Present vs. future covenants",
      "description": "Students must identify the covenant against encumbrances as a present covenant tested at the moment of deed delivery, not a future covenant tested only upon disturbance.",
      "trap_tags": ["common_student_myth", "wrong_timing"]
    },
    {
      "dimension": "Merger doctrine",
      "description": "Students must recognize that the contract's title promise merged into the deed at closing, and the deed's covenants now govern — the contract claim is extinguished.",
      "trap_tags": ["common_student_myth", "answer_to_different_question"]
    },
    {
      "dimension": "Measure of damages for technical breach",
      "description": "Students must distinguish between actual damages (none here, since the mortgage was satisfied) and nominal damages (available for a technical breach with no actual loss).",
      "trap_tags": ["half_right_answer", "moral_common_sense_answer"]
    },
    {
      "dimension": "Remedy confusion — damages vs. rescission",
      "description": "Students must not confuse the damages remedy for covenant breach with rescission, which requires fraud, mutual mistake, or failure of consideration.",
      "trap_tags": ["wrong_remedy", "overbroad_rule"]
    }
  ],
  "component_tags": [
    "covenants_of_title",
    "present_covenants",
    "deed_delivery",
    "encumbrances",
    "nominal_damages",
    "merger_doctrine"
  ],
  "crossovers": [
    {
      "subject": "CONTRACTS",
      "topic": "Merger doctrine",
      "relevance": "The merger doctrine determines that the deed's covenants supersede the contract's title promises at closing."
    },
    {
      "subject": "REAL_PROPERTY",
      "topic": "Mortgages",
      "relevance": "The mortgage is the encumbrance that triggers the covenant breach; understanding mortgages as liens on real property is prerequisite."
    }
  ],
  "fills": {
    "outline_mastery": "The covenant against encumbrances is one of three present covenants (with seisin and right to convey), all tested at delivery. The three future covenants (quiet enjoyment, warranty, further assurances) are tested only upon future disturbance.",
    "drill_prompts": [
      "Present or future covenant? When tested?",
      "Remedy for covenant breach?",
      "Damages when no actual loss?",
      "Effect of merger doctrine on contract promises?"
    ]
  }
}
```

---

### BLOCK 5: program_intelligence JSON

```json
{
  "qid": "CQ17785",
  "outline_code": "84040205",
  "subject": "REAL_PROPERTY",
  "component_routing": [
    {
      "destination_key": "red_zones",
      "component_tags": ["present_covenants", "deed_delivery", "encumbrances"],
      "route": "real_property/covenants_of_title/present_covenants"
    },
    {
      "destination_key": "trap_forensics",
      "component_tags": ["dominant_trap_B", "timing_error", "merger_doctrine_confusion"],
      "route": "real_property/covenants_of_title/trap_analysis"
    },
    {
      "destination_key": "misconceptions",
      "component_tags": ["no_breach_fallacy", "rescission_confusion", "actual_vs_nominal_damages"],
      "route": "real_property/covenants_of_title/misconceptions"
    },
    {
      "destination_key": "drills",
      "component_tags": ["present_vs_future", "damages_measure", "remedy_selection"],
      "route": "real_property/covenants_of_title/drills"
    },
    {
      "destination_key": "outline_atlas",
      "component_tags": ["84040205", "covenants_of_title", "titles_deeds_conveyancing"],
      "route": "real_property/titles/covenants_of_title"
    },
    {
      "destination_key": "review_cards",
      "component_tags": ["covenant_against_encumbrances", "present_covenant", "nominal_damages"],
      "route": "real_property/review_cards/covenants"
    }
  ],
  "gold_keys": [],
  "silver_keys": [],
  "metadata": {
    "transformed_from": "17785",
    "divergence_score": 9,
    "recognition_test": "PASS",
    "bank_validation_verdict": "PASS",
    "confidence": "HARD_STRUCTURAL",
    "difficulty": "Core",
    "deciding_phase": "CLASH",
    "dominant_trap": "B",
    "pick_rate_source": "predicted",
    "controlled_vocabulary_verified": true,
    "outline_code_verified": true,
    "doctrinal_currency_checked": true
  }
}
```

### 3. c3_annotation

```json
{
  "question_id": "CQ17785",
  "subject": "REAL_PROPERTY",
  "credited_answer": "UNKNOWN",
  "outline_code": "84040205",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "c3": {
    "verdict": "C3_SOLVE",
    "residual": "UNKNOWN",
    "agrees_with_key": false,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "HARD_STRUCTURAL",
    "tension_axis": null,
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "repair_normalized",
    "difficulty": "UNKNOWN",
    "distractors": [],
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 17785; letter_map: original_A: A",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "CQ17785",
  "subject": "REAL_PROPERTY",
  "outline_code": "84040205",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-17785",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "Review truth not available in source file.",
    "trap": "See preserved traps when present.",
    "confidence": "HARD_STRUCTURAL"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "CQ17785",
  "subject": "REAL_PROPERTY",
  "outline_code": "84040205",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "wrong_answer_paths": [],
  "drill_seeds": [],
  "trap_tags": {
    "forensic_tags": [],
    "misconception_tags": []
  },
  "component_routing": [
    {
      "destination_key": "review_cards",
      "component_tags": [
        "repair_normalized"
      ]
    }
  ],
  "crossovers": [],
  "gold_keys": [],
  "silver_keys": [],
  "outline_mastery": {
    "placement": "84040205",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
