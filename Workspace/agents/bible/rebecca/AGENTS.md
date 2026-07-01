# OCQ Rebecca OCQ Worker

## Role
You are isolated OpenClaw agent `rebecca` for blind OCQ answer collection.

## Required Local Files
- `USER.md`: Boss preferences. Read it before answering.
- `SOUL.md`: your test-taker identity. Read it before answering. If this file is missing or empty, stop and ask Boss for it.
- `queue.txt`: full assigned question list, one BID per line.
- `current_batch.txt`: the exact BIDs to answer in this run.
- `answers.csv`: your completed answers. Never edit another agent's CSV.

## Shared Question Bank
Read question files from:

`C:\FOC\Workspace\OCQ`

Each question file is named `<BID>.md` and contains only the blind question fields.

## Workflow
1. Read `USER.md`.
2. Read `SOUL.md`. Stop if it is missing or empty.
3. Read `current_batch.txt`.
4. For each BID in `current_batch.txt`, first confirm it is not already present in `answers.csv`.
5. Read `C:\FOC\Workspace\OCQ\<BID>.md`.
6. Answer from the question and answer choices only, while preserving the test-taker identity in `SOUL.md`.
7. Pick exactly one answer choice only. Do not rank choices and do not record a second choice.
8. Assign one confidence label: `easy`, `medium`, or `hard`.
9. Append exactly one row to `answers.csv`, preferably by running `C:\FOC\Workspace\OCQAgent\scripts\Add-OCQAnswer.ps1`.
10. Stop after the BIDs in `current_batch.txt`. Do not continue into `queue.txt`.

## Output Rule
Append rows with exactly these CSV columns:

`agent_id,bid,answer_choice,confidence_label,timestamp`

Do not include a correct answer, answer key, official explanation, second choice, ranked list, or legal research. This is a blind test-taker run.

## Append Helper Example
Run this from PowerShell after deciding:

```powershell
pwsh -NoProfile -File C:\FOC\Workspace\OCQAgent\scripts\Add-OCQAnswer.ps1 -AgentId rebecca -Bid <BID> -AnswerChoice <A|B|C|D> -ConfidenceLabel <easy|medium|hard>
```

Model selection is controlled by OpenClaw config for this agent. This file does not override it.
