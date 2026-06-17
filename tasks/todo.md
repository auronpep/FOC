# OpenClaw Tool/Sandbox Config - 2026-06-16

## Plan

- [x] Back up current OpenClaw state before relaxing tool and exec policy.
- [x] Set the OpenClaw tool profile to `full`.
- [x] Configure OpenClaw exec to run through the gateway with full policy instead of sandbox-only execution.
- [x] Validate config and restart the gateway so the policy takes effect.
- [x] Re-check status and document the resulting session-maintenance guidance.

## Review

- User corrected that if all 500 sessions are from the past 24 hours, age-based pruning will not help. The session-pressure fix should use entry-count caps, disk-budget caps, concurrency limits, or earlier subagent archiving rather than `pruneAfter` alone.
- Created verified backup at `C:\FOC\2026-06-16T19-49-40.874-07-00-openclaw-backup.tar.gz` before policy changes.
- Updated `tools.profile` from `coding` to `full`.
- Added explicit exec bypass settings: `tools.exec.host = gateway`, `tools.exec.mode = full`.
- Added explicit filesystem setting: `tools.fs.workspaceOnly = false`.
- Config validation passed for `C:\FOC\.openclaw\openclaw.json`.
- Restarted the `\OpenClaw Gateway` scheduled task through elevated `schtasks`; first status check timed out during startup, but logs showed `gateway ready`, and a follow-up status confirmed `ws://127.0.0.1:7421` reachable with auth token.
- Follow-up `openclaw gateway probe` connected successfully and reported `admin-capable`; its follow-up read diagnostics still timed out, so deep read-probe latency remains a minor residual issue.

# GitHub Admin Collaborator Reset - 2026-06-16

## Plan

- [x] Re-confirm `auronpep/FOC` is the private target and the active account can administer it.
- [x] Remove existing pending invitations or collaborator access for `VoteWood` and `JWoodMedia`.
- [x] Re-add `VoteWood` and `JWoodMedia` with `admin` permission.
- [x] Verify the fresh pending invitations or active admin state and document the result.

## Review

- First reset attempt stopped before any GitHub mutation because a PowerShell error string used `$user:` without braces, causing a parser error. Retrying with brace-delimited variables.
- Re-confirmed `auronpep/FOC` is `PRIVATE`, local `origin` points to `https://github.com/auronpep/FOC.git`, and active GitHub permission is `ADMIN`.
- Deleted old pending admin invitations: `VoteWood` invitation `322310158`; `JWoodMedia` invitation `322310159`.
- Neither account had active collaborator access after the old invitations were deleted.
- Re-added fresh admin invitations: `VoteWood` invitation `322581409`, created `2026-06-16T08:35:17Z`; `JWoodMedia` invitation `322581415`, created `2026-06-16T08:35:19Z`.
- Final verification: both fresh invitations are unexpired with `permissions: admin`; direct collaborator permission remains `none` until each invite is accepted.

# GitHub Admin Collaborators - 2026-06-16

## Plan

- [x] Verify the local repository remote, GitHub authentication, and current repository visibility before any remote write.
- [x] Add or update `erewhonsgroup`, `VoteWood`, and `JWoodMedia` as admin collaborators on the confirmed `FOC` repository.
- [x] Verify collaborator or pending-invitation state after the update.
- [x] Record the final result and any blockers in this file.

## Review

- Confirmed local `origin` is `https://github.com/auronpep/FOC.git`.
- Confirmed GitHub target `auronpep/FOC` is `PRIVATE` and the active `auronpep` token has `ADMIN` permission.
- Confirmed requested identities resolve as users: `erewhonsgroup`, `VoteWood`, and `JWoodMedia`.
- `erewhonsgroup` already had active `admin` permission and still verifies as `admin`.
- Sent or refreshed admin collaborator invitations for `VoteWood` and `JWoodMedia`; GitHub reports pending invitations with `permissions: admin`.
- Verification after the update: `VoteWood` and `JWoodMedia` still show `permission: none` until they accept their pending admin invitations.

# Gemini Standalone CQ Prompt - 2026-06-16

## Plan

- [x] Read the active CQ prompt, local CQ QA skill, controlled vocabularies, and outline-code reference shape.
- [x] Create a concise standalone Gemini prompt that rolls the CQ contract into one pasteable file.
- [x] Verify the file contains the needed output blocks, controlled values, QA gates, and question-input placeholder.

## Review

- Added `C:\FOC\Workspace\GEMINI_CQ_STANDALONE_PROMPT.md`.
- Verification found required CQ headings, controlled vocabulary/routing rules, the JSON parse gate, and the bottom question-input placeholder.
- Prompt file is 331 lines / 17,026 bytes and ASCII-only.

# CrimLaw CSV Completion Pass - 2026-06-14

## Plan

- [x] Inspect `Workspace/CrimLaw.csv` structure and confirm the completion rule.
- [x] Compare every `BARMATRIX Q#` row against `Workspace/Finished/CQ<question>.md`.
- [x] Update the second column to `Completed` for matching files and blank for non-matches.
- [x] Verify row counts, completed counts, and sample outputs after writing.

## Review

- Updated `Workspace/CrimLaw.csv` by checking each `BARMATRIX Q#` against `Workspace/Finished/CQ<question>.md`.
- Total data rows checked: 951.
- Rows marked `Completed`: 88.
- Rows left blank: 863.
- Verification found 0 completed rows without files and 0 existing files left blank.

# Question Status CSV Completion Pass - 2026-06-15

## Plan

- [x] Inspect `C:\Users\JesusLovesMe\Documents\Question Status.csv` headers and row count.
- [x] Compare each column A BarMatrix question number against `C:\FOC\Workspace\Finished\CQ<question>.md`.
- [x] Mark the status column `complete` when the file exists and `missing` when it does not.
- [x] Verify row counts, complete/missing counts, and mismatch checks after writing.

## Review

- Updated `C:\Users\JesusLovesMe\Documents\Question Status.csv` using `C:\FOC\Workspace\Finished\CQ<question>.md` as the completion rule.
- Total data rows checked: 6,423.
- Rows marked `complete`: 541.
- Rows marked `missing`: 5,882.
- Verification found 0 `complete` rows without files and 0 `missing` rows with files.
- There are 80 `CQ*.md` files in `Finished` whose IDs are not present in this CSV; those files were ignored for row status.

# Question Status Screenshot Lookup - 2026-06-15

## Plan

- [x] Check screenshot IDs `22285`, `16158`, `22343`, `14634`, `16025`, `14642`, and `14711` against `C:\FOC\Workspace\Finished\CQ<question>.md`.
- [x] Confirm whether each ID is present in `C:\Users\JesusLovesMe\Documents\Question Status.csv`.
- [x] Skip CSV update per user follow-up and report statuses in chat.
- [x] Verify final row/status values and document results.

## Review

- Lookup results only per user follow-up; no CSV changes were required after the original file was locked by another process.
- `22285`: complete (`CQ22285.md` exists).
- `16158`: complete (`CQ16158.md` exists).
- `22343`: missing (no `CQ22343.md` found).
- `14634`: complete (`CQ14634.md` exists).
- `16025`: complete (`CQ16025.md` exists).
- `14642`: complete (`CQ14642.md` exists).
- `14711`: complete (`CQ14711.md` exists).

# Civil Procedure Outline Code Mapping - 2026-06-15

## Plan

- [x] Extract the official Civil Procedure outline codes from `C:\FOC\Workspace\OUTLINE_CODES_COMPLETE.md`.
- [x] Inspect `C:\Users\JesusLovesMe\Documents\CivPro_tag.xlsx` headers, row count, and target `Outline_code` column.
- [x] Review each Civil Procedure row's answer explanation and assign the deepest matching official code, using `unsure` when a confident match is not supported.
- [x] Write the completed codes back to `C:\Users\JesusLovesMe\Documents\CivPro_tag.xlsx`.
- [x] Verify workbook read-back: row count, nonblank outline-code coverage, valid-code membership, and `unsure` count.

## Review

- Updated `C:\Users\JesusLovesMe\Documents\CivPro_tag.xlsx` in the existing `Outline_code` column.
- Workbook rows checked: 291.
- Rows with nonblank `Outline_code`: 291.
- Rows with official Civil Procedure codes from `OUTLINE_CODES_COMPLETE.md`: 289.
- Rows marked `unsure`: 2.
- `unsure` rows: row 90 / Q14083 (`Law Applied by Federal Courts`, federal-question remittitur/new-trial standard did not fit the listed Erie/federal-common-law children cleanly); row 187 / Q14177 (`Pretrial Procedures`, prejudgment attachment/provisional remedy did not fit the listed pretrial children cleanly).
- Verification found 0 blank outline-code cells and 0 invalid official-code values.

# BMQ Finished Sync Command - 2026-06-15

## Plan

- [x] Create a PowerShell script that compares `C:\FOC\Workspace\Finished` and `N:\FOC\Workspace\Finished`, skips files present on both sides, and copies missing files in both directions.
- [x] Generate `C:\FOC\Workspace\Finished\complete.csv` with columns `barmatrix_question_number,status`, marking any local `CQ<id>.md` or `CQ<id>plus*.md` as `complete`.
- [x] Add a Codex slash command `/syncbmq` that runs the script.
- [x] Add a global user PowerShell function `syncbmq` for both Windows PowerShell and PowerShell 7.
- [x] Verify script syntax, command/profile installation, sync behavior, and CSV output.

## Review

- Added `C:\FOC\Workspace\Sync-BMQFinished.ps1`.
- Added Codex slash command `C:\Users\JesusLovesMe\.codex\commands\syncbmq.md`.
- Added shared PowerShell function file `C:\Users\JesusLovesMe\Documents\PowerShell\BMQ.Commands.ps1`.
- Updated user all-host profiles for PowerShell 7 and Windows PowerShell to dot-source the shared function file.
- Live run copied 93 files from local to `N:`, copied 5 files from `N:` back to local, and wrote `C:\FOC\Workspace\Finished\complete.csv`.
- Verification: PowerShell 7 parse passed; Windows PowerShell parse passed; `syncbmq` function resolved and executed in both profile families; post-sync comparison found 718 non-CSV files on each side and 0 filename differences.
- Final CSV verification found 717 local `CQ*.md` completion artifacts, 717 CSV rows, and 0 statuses other than `complete`.

# BMQ Complete XLSX Follow-up - 2026-06-15

## Plan

- [x] Update `C:\FOC\Workspace\Sync-BMQFinished.ps1` so the same completion rows write both `complete.csv` and `complete.xlsx`.
- [x] Keep generated ledger files out of the two-way Finished-folder sync comparison.
- [x] Update `/syncbmq` command instructions to report the XLSX output.
- [x] Run the script and verify CSV/XLSX row parity and values.

## Review

- Added `complete.xlsx` generation to `C:\FOC\Workspace\Sync-BMQFinished.ps1` using the same in-memory rows as `complete.csv`.
- Excluded both `complete.csv` and `complete.xlsx` from the two-way file-sync comparison so generated ledgers do not become source artifacts.
- Updated `C:\Users\JesusLovesMe\.codex\commands\syncbmq.md` to report the XLSX output.
- Verification: PowerShell 7 parse passed; Windows PowerShell parse passed; PowerShell 7 live run wrote both files and copied 1 newly found local file to `N:`; Windows PowerShell live run completed with 0 additional copies.
- Final readback verified `complete.csv` and `complete.xlsx` have identical content: 724 rows including the header, 723 completion rows, header `barmatrix_question_number,status`, and last row `22873,complete`.

# BMQ XLSX Numeric ID Correction - 2026-06-15

## Plan

- [x] Patch the XLSX writer so column A data rows are numeric cells, not inline strings.
- [x] Regenerate `C:\FOC\Workspace\Finished\complete.xlsx`.
- [x] Verify the workbook XML stores column A data rows as numeric cells while preserving the same values as `complete.csv`.
- [x] Record the correction pattern in `tasks/lessons.md`.

## Review

- Patched `C:\FOC\Workspace\Sync-BMQFinished.ps1` so `barmatrix_question_number` data rows are written as numeric XLSX cells, while the header and `status` column remain text.
- Regenerated `C:\FOC\Workspace\Finished\complete.xlsx` through the normal sync script.
- Verification: PowerShell 7 parse passed; Windows PowerShell parse passed; PowerShell 7 live run wrote 724 completion rows and copied 1 newly found local file to `N:`; Windows PowerShell live run completed with 0 additional copies.
- Workbook XML readback found 725 rows including the header, values matching `complete.csv`, 724 numeric column-A data cells, 0 column-A data cells with text type, and 724 text `status` cells.
- Post-sync comparison found 725 non-ledger files on local and remote, with 0 filename differences.

# FOC Git Ignore Audit - 2026-06-15

## Plan

- [x] Confirm what the repository currently tracks and which top-level folders are ignored.
- [x] Inventory ignored OpenClaw and Workspace contents without exposing secret values.
- [x] Identify a narrow ignore policy that tracks useful OpenClaw/workspace files while keeping credentials, tokens, logs, caches, and generated bulk output out of git.
- [x] Apply the minimal `.gitignore` fix if the safe policy is clear.
- [x] Verify with `git status`, `git check-ignore`, and staged-candidate inspection before declaring the audit complete.

## Review

- Original root `.gitignore` ignored all of `.openclaw/` and all of `Workspace/`, leaving only `.gitignore`, `README.md`, `bin/openclaw.*`, `package.json`, and `package-lock.json` tracked.
- Confirmed `origin` is `https://github.com/auronpep/FOC.git` and GitHub reports it as `PRIVATE`.
- Found `.openclaw/openclaw.json` contains auth/token/API-key fields, so it must stay ignored along with `.openclaw/credentials/`, `.openclaw/identity/`, `.openclaw/devices/`, logs, caches, npm installs, agent state, plugin databases, and backups.
- Replaced broad `.openclaw/` and `Workspace/` ignores with path-specific ignores. `Workspace` content is now visible to root git while `Workspace/.openclaw/`, `Workspace/.clawhub/`, `Workspace/.codex_spreadsheet_work/`, logs, cache files, and `Workspace/Finished/complete.csv` stay ignored.
- `Workspace` had its own empty nested git repo with zero commits and no remote; root `git add -n Workspace` failed with `Workspace/ does not have a commit checked out`.
- Preserved the empty nested metadata by moving `C:\FOC\Workspace\.git` to `C:\FOC\_preserved-openclaw-workspaces\Workspace.git.empty-20260615-163820`, allowing root git to see workspace files normally.
- Verification: `git add -n` now reports candidates for `.openclaw/gateway.cmd`, `Workspace/PROMPT.md`, `Workspace/QBank/14000.md`, and `Workspace/Finished/CQ14000.md`; `git check-ignore -v` still ignores `.openclaw/openclaw.json`, OpenClaw credential/device files, `Workspace/.openclaw/`, `Workspace/.codex_spreadsheet_work/`, and `Workspace/Finished/complete.csv`.
- Current visible untracked workspace candidates: 8,140 files. Current visible OpenClaw state candidate: `.openclaw/gateway.cmd`.
