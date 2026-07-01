# Kimiwork Live Variant Plan

Date: 2026-06-20

Scope:
- Work only inside `C:\FOC\kimiwork`.
- Treat `C:\BMO` and `C:\barmatrix-app` as read-only references.
- Do not overwrite the 15 original Kimi markdown files.
- Produce approval-ready live variants for `barmatrix.app` copy/implementation use.

Reference rules:
- BarMatrix is diagnostic-first MBE repair, not a full bar course or generic question bank.
- Primary action is the free diagnostic / Red-Zone Map.
- Kimiwork canonical offer is `$999` regular price, `50% off`, `$499` sale price.
- Standard Kimiwork payment plan is `$250 today + $249 in 30 days`.
- Primary sale pitch may be `start for $250 today`.
- Keep July 2026 cohort framing and state access runs through the July 2026 bar exam.
- Do not use seat-scarcity language in Kimiwork variants.
- No pass/score guarantee, official-affiliation, or unsupported outcome claims.
- Prefer guided repair path / Lead Me over dashboard or resource-library language.

Checklist:
- [x] Inventory all `C:\FOC\kimiwork\*.md` source drafts.
- [x] Read BarMatrix product and drift-control references in `C:\BMO` and `C:\barmatrix-app`.
- [x] Generate non-overwriting live variants for all 15 source drafts.
- [x] Validate 15 variant files exist and originals are unchanged.
- [x] Run drift, placeholder, and claim scans on variants.
- [x] Record review results and approval notes here.

Review notes:
- Created variants in `C:\FOC\kimiwork\live-variants-2026-06-20`.
- Created `C:\FOC\kimiwork\live-variants-2026-06-20\VARIANT_MANIFEST.csv` with source and variant SHA256 hashes.
- Original source drafts were not overwritten; final hash check reported all 15 originals unchanged.
- Final variant count check: 15 `BarMatrix-*.md` variants and 15 manifest rows.
- Final blocked-language scan returned no matches for old discount/launch drift, unsupported guarantee claims, official-affiliation claims, or old reduced-scope language.
- Final placeholder scan returned no matches for unresolved `[DATE]`, `[X]`, `[First Name]`, `[Founder Name]`, `[Trap Pattern]`, TODO/TBD/FIXME, or example-domain placeholders.
- Final launch-clock scan returned no matches for `$250`, `$249`, `$500 + $999`, public cap/deadline/refund/ROI leftovers, `10,000+`, or invented `70%` claims.

Approval notes:
- These files are approval variants, not deployed app code.
- `C:\barmatrix-app` was reviewed read-only and appears dirty on branch `codex-review`; future implementation should inspect that worktree before applying any variant to routes.
- App implementation targets likely include homepage variants, diagnostic, pricing, how-it-works, for/who-it-is-for, red-zones, checkout, and success routes.
- The app's focused copy test currently has an unrelated known failure in `tests/diagnostic-first-sales-copy.test.ts` because `/pricing` says `Try the method first` where the test expects diagnostic-first language.

2026-06-20 correction:
- Added `C:\FOC\kimiwork\CANONICAL_RULES.md`.
- Added `C:\FOC\kimiwork\tasks\lessons.md` so future Kimiwork work follows the corrected sale rule.
- Patched the 15 `live-variants-2026-06-20\BarMatrix-*.md` files to use the Kimiwork sale: `$999` regular, `50% off`, `$499`, standard `$250 today + $249 in 30 days`, no seat-scarcity language, access through the July 2026 bar exam.
- Refreshed `VARIANT_MANIFEST.csv` after the correction.
- Validation after correction found no old `$500 today + $499`, `$500 + $499`, `$250 + $999`, limited-seat, enrollment-close, or `approval date` wording in the Kimiwork canonical rules, variants, or task files.
