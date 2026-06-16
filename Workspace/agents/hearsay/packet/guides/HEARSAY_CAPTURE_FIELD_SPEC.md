# Hearsay Capture Field Spec

## Identity fields

- `question_id`: stable unique ID, usually `slot_id` plus short slug.
- `slot_id`: production slot, e.g. `HS-0401`.
- `official_outline_node`: Hearsay node, e.g. `HS-B3a`.
- `outline_code`: verified 8-digit BarMatrix code.
- `primary_tension_id`: primary Hearsay collision.
- `repair_id`: REP module assigned to the main tested weakness.

## Mechanics fields

- `statement_count`: number of distinct offered statements.
- `declarant_count`: number of declarants.
- `layer_count`: number of hearsay layers.
- `evidence_vehicle`: how evidence reaches court.
- `offered_purpose`: what proponent wants jury to use statement for.
- `route_type`: legal route.
- `admissibility_scope`: jury-use scope.

## Statement-map fields

- `statement_surface_ref`: short locator in the stem.
- `statement_abstract`: paraphrase of the statement.
- `asserted_proposition`: what the declarant asserted.
- `offered_proposition`: what the proponent asks jury to infer.
- `truth_or_nontruth`: whether the jury must believe the assertion.

## Wrong-answer fields

Each wrong answer must identify:

- WAL ID;
- C3 filter;
- C3 mold;
- failure axis;
- why plausible;
- why wrong;
- true/responsive version;
- repair ID;
- pick-rate provenance.

## QA fields

Keep `needs_human_legal_review`, `needs_calibration_harness_audit`, `copy_safety_review_required`, and `christian_surface_review_required` true for provisional drafts.
