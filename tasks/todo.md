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
