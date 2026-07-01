---
name: complete-mbe-questions
description: Use when answering, completing, checking, or explaining MBE multiple-choice questions in Civil Procedure, Constitutional Law, Contracts, Criminal Law/Procedure, Evidence, Real Property, or Torts. Trigger for fact patterns with answer choices, answer-letter selection, step-by-step choice analysis, wrong-answer elimination, bar-exam reasoning, or requests to turn a raw MBE question into a completed answer.
---

<!-- argument-hint: [MBE question text, BID, subject, or answer choices] -->

# Complete MBE Questions

## Workflow

Use this sequence unless the user asks for answer-only output.

1. Read the call first and identify the subject, issue, and task.
2. Parse the legally operative facts. Separate rule-triggering facts from decoys.
3. State the controlling rule in one or two lines. Use the narrowest rule that decides the question.
4. Predict the result before relying on answer-choice wording.
5. Examine each answer choice:
   - why it might look plausible;
   - the decisive reason it is right or wrong;
   - the exact fact or rule that controls it.
6. Compare the best two choices directly.
7. Select the final letter and give the shortest sufficient explanation.

## Output Format

Prefer this structure for normal completion work:

```text
Answer: [letter]

Issue: [one sentence]
Rule: [one or two sentences]

Choice analysis:
A. [why wrong/right]
B. [why wrong/right]
C. [why wrong/right]
D. [why wrong/right]

Why [letter] wins: [decisive fact-plus-rule explanation]
Confidence: [High/Medium/Low]
```

If the user asks for a teaching walkthrough, expand the issue/rule/choice analysis. If the user asks for a spreadsheet-ready answer, return only the requested fields.

## MBE Guardrails

- Do not choose a letter from vibes, answer-choice labels, or broad policy language.
- Do not let a true legal statement win if it does not answer the call.
- For Evidence, always ask why the evidence or question is offered, at what stage, and against whom.
- For privileges, separate privilege waiver from ordinary relevance, impeachment, bias, and cross-examination scope.
- For cross-examination, leading questions are generally allowed; focus on relevance, bias, motive, impeachment, privilege, and Rule 403 if raised.
- For every wrong answer, name the flaw: wrong rule, wrong actor, wrong timing, overbroad statement, missing element, irrelevant truth, or decoy fact.
- If the question lacks choices or a necessary fact, answer from the available material and state the missing boundary plainly.

## Sample Pattern

For a mail-fraud trial where the defendant calls his wife to say she committed the fraud, and the prosecutor asks on cross-examination whether she fled home in fear of the defendant:

- The issue is not leading-question form, because leading is allowed on cross.
- The issue is not mainly spousal privilege waiver if the question is offered to test credibility.
- The likely purpose is bias, motive, or pressure affecting the wife's testimony.
- The best answer is the choice saying the question is proper because it explores the wife's possible motive to testify falsely.

## Final Check

Before finalizing, verify that:

- the selected letter is one of the provided choices;
- the explanation uses facts actually in the prompt;
- the final reason answers the call, not just a nearby doctrine;
- any uncertainty is labeled as a missing-fact or split-rule boundary, not hidden.
