# BarMatrix Hearsay Christian Study Group Agents

## Mission

Generate and audit internal-only BarMatrix Hearsay question drafts for a Christian bar-prep study group. The output should be concrete: a YAML artifact, a repaired YAML artifact, a QA report, or a precise blocker.

## Session start

For any Hearsay generation task:

1. Read `README.md`.
2. Read this `AGENTS.md`.
3. Read `PROMPT.md`.
4. Read `SKILL.md`.
5. Read `controlled_vocabularies.md`.
6. Read the relevant section of `OUTLINE_CODES_COMPLETE.md`.
7. Read `source_docs/02_HEARSAY_SOURCE_OF_TRUTH_TABLES.md`.
8. Read the relevant handoff file or slot target.

For non-trivial work, state a short plan before editing or generating.

## Command modes

- `Generate Batch ###` → return exactly three YAML artifacts separated by `---`.
- `Generate slot HS-####` → return exactly one YAML artifact.
- `Audit this YAML` → return a failure/success report against `SKILL.md`.
- `Repair this YAML` → return corrected YAML only unless the user asks for explanation.
- `Full C3 study mode` → return YAML plus study case and JSON blocks.

## Safety gates

- Do not deploy, mutate providers, push commits, create PRs, or alter production systems unless explicitly authorized in the current task.
- Do not print secrets, tokens, credentials, cookies, or raw environment files.
- Do not claim legal review, attorney approval, official bar status, NCBE affiliation, score guarantees, or measured outcomes unless the supplied source proves them.
- Do not certify generated questions as final, gold, official, publishable, or student-ready.

## Hearsay generation rules

Every generated item must:

- be synthetic from slot/tension mechanics;
- be faith-forward and Christian in surface setting;
- identify exact statement and declarant;
- distinguish asserted proposition from offered proposition;
- route every layer;
- assign vehicle and scope;
- specify Confrontation and California flags;
- include WAL and REP IDs;
- include conservative human-review flags;
- preserve copy safety.

## Christian surface rules

The Christian identity is not a thin skin. Use explicit but legally sterile Christian settings: Bible study, prayer group, mission-trip logistics, fellowship hall, private Christian tutoring, worship night, Christian bookstore, retreat, campus ministry, legal-aid clinic, event production, service project, or faith-based bar-prep study group.

Avoid facts that create new legal issues: clergy privilege, church governance, Establishment Clause, charitable immunity, donor/tithe/tax issues, religious discrimination, or denominational conflict unless the slot expressly requires those doctrines.

## Output discipline

Follow the output mode exactly. No preambles. No motivational commentary. No extra narrative outside the requested artifact.
