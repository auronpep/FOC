---
name: cq-transform-qa
description: Load when transforming BarMatrix MBE questions into maximally divergent Christian variants with the full C3 case-study pipeline (Pass-1 transform report + Pass-2 five blocks, CQ{N}.md outputs). Enforces the output QA gate, pick-rate seeding, dominant-trap identification, legal-research authority floor, doctrinal-currency checks, and controlled-vocabulary discipline before any CQ file is finalized.
---

# CQ Transform QA

Quality gate for the BarMatrix divergent-transform pipeline. Run this checklist on EVERY
question AFTER drafting and BEFORE writing the final CQ file. Fix every miss; never ship
a file that fails a line.

## 1. Completeness gate (the contract has no optional blocks except one)

Pass-1 report — all present, in order: final question · Distilled Core Question · final
choices (post-shuffle) · correct answer with original key letter · Letter Map ·
right-answer explanation · wrong-answer explanations (one per distractor) · black-letter
verification with authority · rigor/difficulty note · C3 CUT→CLASH→CALL walkthrough ·
Divergence Audit with both one-sentence stem summaries · Review Truth · the 5 variations
table with divergence scores. (Only the replacement-choice section may be omitted, and
only when no swap was suggested.)

Pass-2 — all five blocks: Question YAML · 17-section case study · `c3_annotation` JSON ·
`program_elements` JSON · `program_intelligence` JSON.

- **Label every JSON block with its name** (`c3_annotation`, `program_elements`,
  `program_intelligence`) in a heading directly above the fence. Ingestion parsers key
  on these names, not on block order.
- Every JSON block must actually parse. Re-check for trailing commas and unescaped
  quotes; if a tool is available, round-trip each block through a JSON parser.
- `program_elements` emits `red_zone_dimensions` exactly. Do not emit the legacy
  synonym `red_zones`.
- `program_intelligence.component_routing[]` emits objects with controlled
  `destination_key` values from `controlled_vocabularies.md`; optional `route`
  and free-text `component_tags[]` may be included. Free-text tags are allowed in
  descriptive fields, but not as the routing destination key.
- `gold_keys` / `silver_keys` identical between Block 3 and Block 5.
- The post-shuffle key letter is IDENTICAL everywhere: correct-answer line, Letter Map,
  `official_key`, `credited_answer`, `residual`, final student script.
- `analyzer_notes` contains `drift_audit:`, `transformed_from: <qid>`, and the full
  `letter_map:` — original letters appear NOWHERE else outside provenance fields.

## 2. Pick rates and the dominant trap (most common miss)

- **Never emit all-null percentages.** Two modes:
  - Source supplies focus-group rates → kept-substance choices INHERIT by mechanic
    (label `inherited`, mapped through the Letter Map); rewritten/swapped choices are
    `predicted`.
  - Source supplies none → emit estimated SEED percentages for all four choices,
    summing to ~100, every one labeled `predicted`, with a note that no measured rates
    were supplied. Never imply a predicted rate was measured.
- **Always name the dominant trap.** With measured rates it is the highest-% wrong
  answer. Without them, identify it ANALYTICALLY (the distractor whose mechanic is most
  attractive), flag it in the Letter Map, and preserve its mechanic with extra care.

## 3. Outline codes — never invent

Emit a real 8-digit `outline_code` ONLY if an outline map/reference was supplied with
the job. Otherwise use `"00000000"` everywhere. A plausible-looking fabricated code is
worse than the placeholder — it poisons ingestion mapping silently.

## 4. Legal research (web search required)

Research feeds the lawyer-confirmation layer only; the student-accessible C3 path never
cites it.

- **Authority floor:** the black-letter verification must name at least one real
  governing authority — rule number (FRE/FRCP/UCC/MPC/Restatement section), leading
  case, or constitutional provision. Rule numbers are low-risk; cite cases only when
  certain they exist and stand for the proposition. No confident authority → state the
  rule plainly and flag for attorney review.
- **Never fabricate** a case name, citation, or holding.
- **Key disagreement:** research contradicts the supplied official key → do NOT bend
  the analysis or auto-repair; verdict `NEEDS_HUMAN` with one sentence why.
- **Citation hygiene:** strip tracking parameters (e.g. `?utm_source=...`) from cited
  URLs before finalizing.
- **Authority-class gate:** the cited authority must be one of {leading case, rule number
  (FRE/FRCP/UCC/MPC/Restatement section), constitutional provision}. A treatise is
  acceptable as support, but state real-estate/licensing or agency handbooks are NOT a
  primary-law floor on their own. If all you have is secondary authority, state the rule
  plainly, set `attorney_review: true` with a reason, and do NOT report a clean PASS for
  the authority line.

## 5. Doctrinal-currency hotlist

If the item touches one of these areas, verify the credited answer's framing against
the CURRENT controlling test. Superseded framing, same outcome → note it in the
verification section and flag for attorney review. Superseded framing, different
outcome → `NEEDS_HUMAN`.

- **Establishment Clause:** Kennedy v. Bremerton (2022) abandoned Lemon/endorsement;
  American Legion (2019) history-and-tradition presumption for longstanding displays.
- **Expert testimony:** FRE 702 amended Dec 1, 2023 (preponderance showing; reliable
  application of methods).
- **Rule of completeness:** FRE 106 amended Dec 2023 (completing statement admissible
  over hearsay objection; covers oral statements).
- **Confrontation / expert basis:** Smith v. Arizona (2024).
- **Second Amendment:** Bruen (2022); Rahimi (2024).
- **Substantive due process:** Dobbs (2022).
- **Personal jurisdiction:** Mallory v. Norfolk Southern (2023).
- **Takings:** Cedar Point Nursery (2021); Tyler v. Hennepin County (2023).
- **Unanimous jury:** Ramos v. Louisiana (2020). **Apprendi scope:** Erlinger (2024).
- **True threats:** Counterman v. Colorado (2023).

## 6. Transform traps (recurring failure modes)

- **No new posture:** never introduce a challenger, lawsuit, or standing facts the
  original lacks (adding "a taxpayer sues" creates a taxpayer/offended-observer
  standing issue — clutter doctrine).
- **Constitutional posture is load-bearing:** a government actor stays a government
  actor; never swap in a church or private actor on a constitutional item.
- **Call wording:** do not name the governing doctrine in the call if the original
  call did not — that issue-spots for the student and lowers difficulty.
- **Stay on the original side of every statutory/doctrinal line** (price thresholds,
  time periods, age lines, discovery delays).
- **Recognition-test honesty:** the old-stem one-sentence summary contains ONLY facts
  actually present in the original stem — never import variant facts back into it.
- **Review Truth purity:** the Review Truth is a pure student-facing rule sentence.
  Zero process commentary — no mention of source artifacts, exports, "unchanged from
  the original," or what was disregarded.

## 7. Controlled-vocabulary discipline

- Every controlled field value comes verbatim from `controlled_vocabularies.md` —
  never invent, paraphrase, or pluralize values.
- `confidence` is DERIVED from the deciding choice's `method_class` per the taxonomy
  derivation table — verify the pair matches.
- Each distractor: exactly ONE mold_code + ONE filter; mold_family fixes the filter
  (EAR_* → NOT_TRUE, ISSUE_SENSE → NOT_RESPONSIVE) — verify each pairing.
- `difficulty`: carry the source row's value (e.g. "Core") when supplied; do not
  substitute an invented scale. **Sanity check:** reject any `difficulty` value matching
  an 8-digit outline-code pattern (`^\d{8}$`) — that means the source row mislabeled an
  outline node as difficulty. Carry `UNKNOWN` (or a real scale), add a
  `difficulty_source_defect` note, and never ingest an outline code as difficulty.
- PASS verdict only when truly earned: true-and-responsive residual equal to the
  credited answer AND exactly three single-filter distractors. Anything else, PASS is
  unavailable.
