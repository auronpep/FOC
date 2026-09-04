# OpenClaw BarMatrix Launch Workspace

This workspace is for helping get BarMatrix live and keep it live: public site,
paid-user flow, launch copy, DNS/email/provider checks, and C3 content work when
explicitly requested.

## Session Start
1. Read `PROMPT.md`, `MYSKILL.MD`, `controlled_vocabularies.md`, and `OUTLINE_CODES_COMPLETE.md
2. The question bank you will be working with is in MBE.xlsx anytime a chat references a question and gives a number or question ID or barmatrix ID or barmatrix question ID they are referring to the MBE.xlsx file in the project folder and column 1 represents the BARMATRIX Question ID. Whenever you work in that folder, review the column headings, not all questions have info for all column headings.

Column Headings
BARMATRIX Question ID: Question ID
subject_display: One of 7 MBE Subjects
topic: Needs to be updated to represent the outline text from the outline code
subtopic: NEeds to be updated  to reflect one of the 36 subtopics from the outline_codes_complete.md
outline_code: Outline code from outlines_codes_complete.md
Percent of Students who got it right
Percent of students who selected answer choice A
Percent of students  who selected answer choice B
Percent of students  who selected answer choice C
Percent of students  who selected answer choice D
Question: MBE Question
Answer A: Answer Choice A (sometimes it will begin with A:)
Answer B Answer Choice B (sometimes it will begin with B:)
Answer C Answer Choice C (sometimes it will begin with C:)
Answer D Answer Choice D (sometimes it will begin with D:)
Correct Answer: The letter of the correct answer
Correct Answer Explanation: Answer Explanation
Wrong Answer Explanations: More extended answer explanation
additional_info: Additional Black LEtter Law answer explanation
lb_rule_reference: Rules or statutes referenced
lb_student_diagnostic: An internal diagnostic for students who struggle with this. 


## Mission

Help BarMatrix move from "almost live" to "live and verified" with concrete
proof. The useful output is not generic advice; it is an exact checklist, a
small patch, a verified deployment state, or a clear blocker with evidence.

## PowerShell Command Rules

- Do not pass a parent-session PowerShell array variable through a new
  `pwsh -File` process, such as
  `pwsh -File script.ps1 -Questions $qs`. The child process receives separate
  native argv tokens and can bind extra values into later parameters.
- For long lists through `pwsh -File`, pass one quoted scalar and let the script
  parse it, for example:
  `pwsh -NoProfile -File Workspace\RUN_Cod.ps1 -Questions '14707,14708,14709' -Mode CodexEphemeral`.
- If you already have a PowerShell array variable, invoke the script in the
  same PowerShell session instead:
  `& Workspace\RUN_Cod.ps1 -Questions $qs -Mode CodexEphemeral`.
- Scripts that accept long numeric lists should use
  `[CmdletBinding(PositionalBinding = $false)]`, accept a string/list input,
  and parse comma or whitespace-delimited values explicitly.

BarMatrix positioning:

- BarMatrix is a diagnostic-first MBE repair system.
- It is not a full bar course and not a generic question bank.
- Public copy should push visitors toward the free diagnostic / Red-Zone Map.
- Use language such as red zones, wrong-answer forensics, two-answer traps,
  guided repair, MBE precision, and one next task.
- Prefer "guided repair path" over "dashboard" or "resource library."

## C3 / CQ Transform Mode

This workspace also contains a portable C3 question-transform packet. Use this
mode only when the user says:

- `Do Q{N}` for one question
- `Do Q{A}-{B}` for an explicit range
- `Do next {K}` for the K lowest-numbered unfinished files in `QBank\`

Per question:

1. Skip if `Finished\CQ{N}.md` already exists.
2. Read `PROMPT.md` in full.
3. Read `skills\cq-transform-qa\MYSKILL.md` before drafting.
4. Read `controlled_vocabularies.md`.
5. Read only the relevant subject section of `OUTLINE_CODES_COMPLETE.md`.
6. Get the full question from MBE.xlsx by looking up the question ID in column A.
7. Produce the full output at `Finished\CQ{N}.md`.

Never edit files in `QBank\`. Never invent controlled vocabulary values,
outline codes, legal authority, case names, citations, or source facts.
