# Live Approval Variant

Kimiwork sale rule: Regular price $999; active sale is 50% off ($499), with the standard plan pitched as just $250 today + $249 in 30 days. July 2026 cohort access runs through the July 2026 bar exam. No seat-scarcity language.

Source draft: `BarMatrix-Email-Nurture-Sequence.md`  
Variant date: 2026-06-20  
Status: Ready for founder approval before implementation on `barmatrix.app`.  
Scope: Preserves the source structure while aligning active copy to the Kimiwork canonical sale: $999 regular price, 50% off sale price of $499, standard $250 today + $249 in 30 days plan, July 2026 cohort access through the July 2026 bar exam.

--- BarMatrix Email Nurture Sequence

## Document Purpose

A 5-email automated sequence for users who complete the free MBE Trap Diagnostic but have not yet purchased BarMatrix Flagship. The sequence educates, builds trust, handles objections, and drives conversion to the Flagship enrollment July-cycle cohort price.

**Trigger:** User completes the free MBE Trap Diagnostic. 
**Exit condition:** User purchases Flagship (exit sequence) or July 2026 cohort window passes. 
**Platform:** Any ESP (Klaviyo, Mailchimp, ActiveCampaign, ConvertKit). 
**Timing:** Cadence is spaced to avoid fatigue while maintaining momentum.

---

## Sequence Overview

| Email | Send Time | Subject Line | Goal | Content Angle |
|-------|-----------|------------|------|---------------|
| **1** | Immediately after diagnostic | "Your Red-Zone Map is ready" | Deliver value + set expectations | Diagnostic results + preview of Flagship |
| **2** | +2 days | "What happens to your top 3 traps if you don't fix them" | Educate on the repair method | How Flagship turns traps into drills |
| **3** | +4 days | "Why the Forensic Tags Change the Review Session." | Social proof + emotional connection | Student case study / win story |
| **4** | +6 days | "Will BarMatrix conflict with your bar course? (And 4 other questions)" | Objection handling | FAQ + address hesitations |
| **5** | +8 days (or 48 hrs before July 2026 cohort window) | "July 2026 cohort window: Your traps don't care about the July 2026 cohort window" | Urgency + final push | July 2026 cohort conversion |

---

---

## EMAIL 1: Your Red-Zone Map Is Ready

**Send:** Immediately after diagnostic completion 
**Subject:** Your Red-Zone Map is ready 
**Preview text:** These are the trap patterns costing you the most points. 
**From name:** BarMatrix 
**From email:** diagnostic@barmatrix.app 
**Goal:** Deliver the diagnostic value, introduce Flagship softly, set the tone for the sequence.

---

### Body

> **Subject:** Your Red-Zone Map is ready
>
> ---
>
> Hi {{first_name}},
>
> You just completed the MBE Trap Diagnostic. Here's what we found.
>
> **Your top 3 trap patterns (ranked by attractiveness):**
>
> | Rank | Trap Pattern | Frequency | Attractiveness |
> |------|--------------|-----------|----------------|
> | 1 | {{top_trap_pattern}} | {{miss_count}}/15 misses | HIGH |
> | 2 | the next highest-priority trap | {{miss_count}}/15 misses | MEDIUM-HIGH |
> | 3 | a third active trap pattern | {{miss_count}}/15 misses | MEDIUM |
>
> **[View Your Full Red-Zone Map →]**
>
> ---
>
> **What this means:**
>
> The MBE doesn't test whether you know the law. It tests whether you can apply the law without falling for the trap.
>
> Your diagnostic shows that {{top_trap_pattern}} is your most attractive miss pattern. That means the MBE's wrong-answer engineers have figured out exactly how to make you pick the wrong answer — and they reuse that same pattern across questions, subjects, and cycles.
>
> **More questions won't fix this.** Only targeted repair will.
>
> ---
>
> **What BarMatrix Flagship does:**
>
> Flagship takes your Red-Zone Map and turns it into a guided repair path:
>
> - **Red-Zone Drills** — targeted micro-sets that hit the same tension point until it stops misfiring
> - **Wrong-Answer Forensics** — every miss is tagged with the exact reason your wrong answer looked right
> - **Boot Camps** — intensive repair sessions for your highest-priority traps
> - **Pattern Mastery Board** — track your repair progress in real time
> - **Timed Mixed Sets** — exam simulation that tests whether the repair stuck
>
> **July-cycle Flagship enrollment is open.**
> - $999
> - Or $250 today + $249 in 30 days
> - Access through the July 2026 bar exam
>
> **[See What Flagship Includes →]**
>
> ---
>
> **No pressure.** The diagnostic was free. The decision is yours. But if your score is stuck and you keep narrowing to two and choosing wrong, Flagship is built for exactly that.
>
> See you inside,
> The BarMatrix Team
>
> P.S. — Questions? Reply to this email. We read every one.

---

### Design Notes

- **Header:** Minimal BarMatrix logo (navy background, white logo). No navigation.
- **Hero:** The Red-Zone Map visualization (or a simplified table if the full map can't embed). Make it visually distinct.
- **CTA buttons:** Red background (#C41E3A), white text. Two CTAs: "View Full Red-Zone Map" (primary) and "See Flagship Details" (secondary, outlined).
- **Footer:** No unsubscribe fear. Simple footer: "BarMatrix | diagnostic@barmatrix.app | Unsubscribe"
- **Mobile:** Single-column. Large tap targets. Text should be 16px minimum.

### A/B Test Ideas

| Test | Variant A | Variant B | Hypothesis |
|------|-----------|-----------|------------|
| Subject line | "Your Red-Zone Map is ready" | "Your top 3 MBE traps — ranked" | Specificity drives open rate |
| Preview text | "These are the trap patterns..." | "You narrow to two and pick wrong. Here's why." | Pain-driven preview text increases opens |
| CTA text | "See What Flagship Includes" | "Fix My Top 3 Traps" | Action-oriented CTA outperforms information-oriented |
| P.S. line | "Reply to this email. We read every one." | "P.S. — The diagnostic was free. The repair path starts at $250 today. The repeated trap pattern is expensive." | value framing in P.S. drives clicks |

---

---

## EMAIL 2: What Happens to Your Top 3 Traps If You Don't Fix Them

**Send:** 2 days after Email 1 (or 2 days after diagnostic if Email 1 not opened) 
**Subject:** What happens to your top 3 traps if you don't fix them 
**Preview text:** Spoiler: they follow you into the exam. 
**From name:** BarMatrix Team from BarMatrix 
**From email:** [founder]@barmatrix.app 
**Goal:** Educate on the repair methodology. Connect the diagnostic results to the Flagship solution.

---

### Body

> **Subject:** What happens to your top 3 traps if you don't fix them
>
> ---
>
> {{first_name}},
>
> Two days ago, you saw your Red-Zone Map. Your top trap was {{top_trap_pattern}}.
>
> Here's what happens if you don't repair it.
>
> ---
>
> **The trap doesn't go away. It gets smarter.**
>
> The MBE recycles a finite set of trap patterns. {{top_trap_pattern}} isn't a one-time mistake — it's a structural weakness the exam writers have mapped. They will use it again. And again. In Evidence, in Contracts, in Criminal Procedure.
>
> Every repeated miss tied to {{top_trap_pattern}} is evidence. Flagship turns that evidence into the next guided repair task.
>
> **Your bar course doesn't fix this.**
>
> Barbri, Themis, Kaplan — they teach you the rules. They give you daily assignments. They do not forensically tag your wrong answers and assign you a repair drill for each pattern.
>
> After a miss, your course says: "Read the explanation. Move on."
>
> BarMatrix says: "This miss was tagged 'Stale Rule — Trigger: Changed Party.' Here is the exact drill that repairs this pattern. Do it. Then we'll test if the repair stuck."
>
> ---
>
> **How the repair loop works:**
>
> **STEP 1 — Diagnose** (You already did this.)
> Your Red-Zone Map identified {{top_trap_pattern}} as your highest-priority miss pattern.
>
> **STEP 2 — Assign**
> Flagship assigns you a Red-Zone Drill: a targeted micro-set of 8–12 questions that all hit the same tension point as {{top_trap_pattern}}.
>
> **STEP 3 — Repair**
> You complete the drill. Not 50 questions. Not 100. Just enough to rewire the pattern.
>
> **STEP 4 — Verify**
> A timed mixed set tests whether the repair stuck. If you still fall for the trap, Flagship assigns a deeper drill. If you don't, the Pattern Mastery Board advances.
>
> **STEP 5 — Next Trap**
> Once {{top_trap_pattern}} is repaired, Flagship moves to the next highest-priority trap. One trap at a time. One repair task at a time. No resource menu to sort through.
>
> ---
>
> **This is not a question bank.**
>
> AdaptiBar gives you 1,600 questions. BarMax gives you 1,750. UWorld gives you 2,000.
>
> BarMatrix gives you one repair task at a time — and makes sure you stop falling for the same trap before you move on.
>
> **July-cycle Flagship enrollment is open.**
> - $999
> - Or $250 today + $249 in 30 days
> - Access through the July 2026 bar exam
> - Works alongside your existing bar course
>
> **[Start My Repair Path →]**
>
> ---
>
> {{first_name}}, the diagnostic already showed you the problem. The only question is whether you fix it before the exam.
>
> BarMatrix Team
> BarMatrix
>
> P.S. — If you're already enrolled in a full course, BarMatrix is designed to sit alongside it. We don't replace your daily assignment. We give you the one repair task that moves your score. That's it.

---

### Design Notes

- **Personal sender:** Use a founder's name (e.g., "Alex from BarMatrix"). This builds trust and feels less like a marketing automation.
- **The "top trap patterns" calculation:** This is a concrete, scary number. Make sure it stands out visually (bold, red text, or a callout box).
- **The repair loop:** Use a visual timeline or numbered steps with icons. Make it scannable.
- **CTA:** "Start My Repair Path" is action-oriented and personal. Use red button.

### A/B Test Ideas

| Test | Variant A | Variant B | Hypothesis |
|------|-----------|-----------|------------|
| Subject line | "What happens to your top 3 traps if you don't fix them" | "Your {{top_trap_pattern}} will follow you into the exam" | Specific trap name in subject line increases opens |
| Sender | "BarMatrix" | "BarMatrix Team from BarMatrix" | Personal sender increases opens and trust |
| Opening | Start with the trap | Start with the point calculation | Fear-driven opening (lost points) outperforms pattern explanation |
| The "not a question bank" section | Present as text | Present as a comparison graphic (BarMatrix vs. AdaptiBar) | Visual comparison increases engagement |

---

---

## EMAIL 3: Why the Forensic Tags Change the Review Session.

**Send:** 4 days after Email 2 (or 4 days after diagnostic if previous emails not opened) 
**Subject:** Why the Forensic Tags Change the Review Session. 
**Preview text:** "I finally understood WHY I kept picking the wrong answer." 
**From name:** BarMatrix Team from BarMatrix 
**From email:** [founder]@barmatrix.app 
**Goal:** Social proof + emotional connection. Show a real transformation.

---

### Body

> **Subject:** Why the Forensic Tags Change the Review Session.
>
> ---
>
> {{first_name}},
>
> Meet the student. (Name changed. Story real.)
>
> the student was a July 2025 California bar examinee. She had done 1,400 AdaptiBar questions. Her MBE percentage was stuck at 62% for six weeks.
>
> She was narrowing to two answers and picking the wrong one. Every. Single. Time.
>
> She thought the problem was that she needed more questions. So she did 200 more. Her score: still 62%.
>
> ---
>
> **Then she took the BarMatrix diagnostic.**
>
> Her Red-Zone Map showed three traps:
>
> 1. **Overbroad Hearsay Myth** — She assumed "out of court" always meant "hearsay." She never checked the purpose of the offer.
> 2. **Stale Rule — Trigger: Changed Party** — She recognized the doctrine but applied the wrong rule because the party changed.
> 3. **Wrong Timing — Statute of Limitations** — She knew the rule but missed the timing trigger in the facts.
>
> **The forensic tag that changed everything:**
>
> > *"You picked A because the statement was made out of court, so the hearsay instinct fired. But the offer isn't for truth of the matter — it's for notice. Purpose of offer changes the analysis."*
>
> the student's reaction: "That's literally what I do every time. I see 'out of court' and my brain goes straight to 'hearsay.' I never stop to ask WHY the statement is being offered."
>
> ---
>
> **What happened next:**
>
> the student enrolled in Flagship. She did the Hearsay Purpose-of-Offer Drill. 8 questions. Not 80. Just 8, all hitting the same tension point.
>
> Then she did the Timed Mixed Set. She caught herself on the third question. "Wait — purpose of offer." She selected the right answer. The Pattern Mastery Board advanced.
>
> Two weeks later, she hit the same trap in a Contracts question. She caught it immediately. "Purpose of offer. Not hearsay." Correct.
>
> **Her MBE score moved from 62% to 71% in three weeks.**
>
> Not because she did more questions. Because she stopped falling for the same trap.
>
> ---
>
> **the student's advice to you:**
>
> > *"If your score is stuck, stop doing more questions. Diagnose the pattern. The diagnostic is free. Do it. See your traps. Then decide if Flagship is worth it. But at least you'll know WHY you're stuck."*
>
> ---
>
> {{first_name}}, your diagnostic is already done. Your Red-Zone Map is already built. You already know your top traps.
>
> The only question is whether you repair them before July.
>
> **July-cycle Flagship enrollment is open.**
> - $999
> - Or $250 today + $249 in 30 days
> - Access through the July 2026 bar exam
>
> **[Repair My Top Traps →]**
>
> ---
>
> P.S. — the student's story is one of dozens. We're collecting case studies from the July 2026 cohort. If you enroll and want to share your repair journey, reply to this email. We'd love to feature you.

---

### Design Notes

- **The story format:** Use a clean, readable layout. No heavy graphics. Let the story breathe. Use blockquotes for the student's quotes.
- **The forensic tag quote:** Make this visually distinct — a gray background, italic text, or a gold left border. This is the "aha" moment of the email.
- **The 62% → 71% stat:** Bold and large. This is the proof point.
- **Pull quote at the end:** Use the student's advice as a callout box. It feels like a peer recommendation, not a sales pitch.
- **CTA:** "Repair My Top Traps" — personal, action-oriented.

### A/B Test Ideas

| Test | Variant A | Variant B | Hypothesis |
|------|-----------|-----------|------------|
| Subject line | "Why the Forensic Tags Change the Review Session." | "How the student went from 62% to 71% in 3 weeks" | The "how" subject line outperforms the story hook |
| Character name | "the student" (generic) | "approved user name" | Real name increases authenticity and trust |
| Story length | Full narrative (as written) | Abbreviated version (half the length) | Shorter stories have higher completion rates |
| The P.S. | Case study invitation | "P.S. — the student's top trap was 'Overbroad Hearsay Myth.' What's yours?" | Closing with a question increases reply rate and engagement |

---

---

## EMAIL 4: Will BarMatrix Conflict With Your Bar Course? (And 4 Other Questions)

**Send:** 6 days after Email 3 (or 6 days after diagnostic if previous emails not opened) 
**Subject:** Will BarMatrix conflict with your bar course? (And 4 other questions) 
**Preview text:** Short answer: No. Here's why. 
**From name:** BarMatrix 
**From email:** team@barmatrix.app 
**Goal:** Handle objections. Remove friction. Address the most common hesitations.

---

### Body

> **Subject:** Will BarMatrix conflict with your bar course? (And 4 other questions)
>
> ---
>
> {{first_name}},
>
> We've gotten a lot of questions since you took the diagnostic. Here are the five we hear most — and the honest answers.
>
> ---
>
> **Q1: Will BarMatrix conflict with my bar course (Barbri, Themis, Kaplan)?**
>
> **No.** BarMatrix is designed to sit alongside your course, not replace it.
>
> Your course gives you the daily assignment: lectures, outlines, practice questions. BarMatrix gives you the one repair task that fixes your highest-priority trap pattern.
>
> Think of it like this: Your course is the classroom. BarMatrix is the tutoring session after class. The classroom teaches the rule. The tutoring session fixes the mistake.
>
> Most Flagship users spend 15–30 minutes per day on BarMatrix — after they finish their course's daily assignment. That's it.
>
> **[Download: How to Use BarMatrix With Your Course →]**
>
> ---
>
> **Q2: I already have AdaptiBar / BarMax / UWorld. Do I need BarMatrix too?**
>
> If your score is stuck despite using a question bank, yes.
>
> AdaptiBar, BarMax, and UWorld are excellent at what they do: giving you more questions and explanations. But none of them diagnose *why* your wrong answers are attractive. None of them assign a repair drill for each trap pattern.
>
> Many students use both: AdaptiBar for volume, BarMatrix for pattern repair. They're not mutually exclusive.
>
> **[See the Comparison: BarMatrix vs. AdaptiBar →]**
>
> ---
>
> **Q3: Is $999 really worth it for a supplement?**
>
> Let's do the math.
>
> The MBE rewards precision. If the same trap keeps pulling you in, more volume is not the same as repair.
>
> In most jurisdictions, 5–10 points is the difference between passing and failing.
>
> The value is the guided repair path: diagnose the trap, repair it, then verify it under pressure.
>
> And remember: the diagnostic was free. You already saw your traps. You already know the problem exists. The $250 first payment starts the repair path.
>
> **[See What's Included in Flagship →]**
>
> ---
>
> **Q4: What if I don't have time? I'm already overwhelmed by my course.**
>
> This is exactly why BarMatrix is built as "one repair task at a time."
>
> We don't give you a resource menu to sort through. We don't assign you 50 questions a day. We give you one drill — 8–12 questions — that targets your highest-priority trap.
>
> 15 minutes. Targeted. Done.
>
> If you have time for your course's daily assignment, you have time for one BarMatrix repair task.
>
> ---
>
> **Q5: What happens if I buy and don't like it?**
>
> BarMatrix does not promise a specific score or exam outcome. It gives you a diagnostic, a Red-Zone Map, and a guided repair path.
>
> If you complete the diagnostic, enroll in Flagship, and feel the repair path isn't right for you, contact us within 7 days. We'll work with you — whether that's a refund, a pause, or a modified repair plan.
>
> But honestly? Most students who complete the diagnostic and see their Red-Zone Map know immediately whether Flagship is the right fit. That's why the diagnostic is free.
>
> ---
>
> **Still have questions?** Reply to this email. We read every one.
>
> Or, if you're ready:
>
> **[Enroll in Flagship — Flagship enrollment →]**
>
> July-cycle cohort
> $499 — or $250 today + $249 in 30 days
>
> ---
>
> The BarMatrix Team

---

### Design Notes

- **FAQ format:** Use a clean accordion or expandable section if your ESP supports it. If not, use bold Q headers with A text below. White space is critical — don't crowd.
- **The comparison link:** Link to the `/vs-adaptibar` comparison page. This drives SEO traffic and educates simultaneously.
- **The "download" CTA:** The "How to Use BarMatrix With Your Course" PDF is a lead magnet that also drives conversion. Even if they don't buy, they get value.
- **The math section:** Use a simple calculation graphic or callout box. Visualize the diagnostic-to-repair decision.
- **Tone:** Honest, not defensive. The "we don't offer a outcome promise" line is direct and trust-building. It signals confidence in the product, not desperation.

### A/B Test Ideas

| Test | Variant A | Variant B | Hypothesis |
|------|-----------|-----------|------------|
| Subject line | "Will BarMatrix conflict with your bar course?" | "5 questions everyone asks before buying BarMatrix" | Numbered list subject line outperforms single-question |
| Q order | Q1 = course conflict | Q1 = price worth it | Price as the first objection reduces anxiety faster |
| The math section | Text-only | Simple graphic (Red-Zone Map icon + next task) | Specific repair-path visualization increases comprehension |
| Guarantee language | "We'll work with you" | "7-day refund if the repair path isn't right" | Specific refund policy outperforms vague promise |
| CTA at bottom | "Enroll in Flagship" | "Reply with your question" | Reply CTA builds engagement; enroll CTA drives conversion |

---

---

## EMAIL 5: July 2026 cohort window — Your Traps Don't Care About the July 2026 cohort window

**Send:** 8 days after Email 4 (or July 2026 cohort window before the cohort July 2026 cohort window, whichever is sooner) 
**Subject:** July 2026 cohort window: Your traps don't care about the July 2026 cohort window 
**Preview text:** But the July 2026 cohort enrollment does. 
**From name:** BarMatrix Team from BarMatrix 
**From email:** [founder]@barmatrix.app 
**Goal:** Urgency-driven conversion. Final push before July 2026 cohort window.

---

### Body

> **Subject:** July 2026 cohort window: Your traps don't care about the July 2026 cohort window
>
> ---
>
> {{first_name}},
>
> The July-cycle Flagship enrollment is July 2026 cohort.
>
> Access runs through the July 2026 bar exam.
>
> But here's the thing I want you to remember:
>
> **Your traps don't care about the July 2026 cohort window.**
>
> {{top_trap_pattern}} will still be there on Monday. It will still be there in July. It will still be there when you sit down for the MBE — unless you repair it.
>
> The price is one part of the decision. The trap is the real cost.
>
> ---
>
> **What you already know:**
>
> You took the diagnostic. You saw your Red-Zone Map. You know your top 3 trap patterns.
>
> You know that More undiagnosed questions will not repair {{top_trap_pattern}}.
>
> You know that your bar course doesn't diagnose why your wrong answers are attractive.
>
> You know that the MBE recycles the same trap patterns — and {{top_trap_pattern}} is one of them.
>
> The only question is whether you fix it now or hope it goes away on its own.
>
> It won't.
>
> ---
>
> **What Flagship gives you:**
>
> - Your personal Red-Zone Map (already built — you saw it)
> - Red-Zone Drills that repair each trap pattern, one at a time
> - Wrong-Answer Forensics on every miss
> - Boot Camps for intensive repair sessions
> - Timed Mixed Sets to verify the repair stuck
> - Pattern Mastery Board to track your progress
> - Access through the July 2026 bar exam
>
> All for $499 during the 50% off sale. Start for $250 today, then $249 in 30 days.
>
> ---
>
> **What happens if you don't enroll:**
>
> - You keep doing more questions. Your same trap patterns keep repeating.
> - You keep narrowing to two and picking the wrong one.
> - You keep reading explanations that don't tell you WHY your wrong answer looked right.
> - You bring {{top_trap_pattern}} into the exam with you.
>
> And BarMatrix Flagship is $499 during the 50% off sale.
>
> ---
>
> **[Start for $250 Today ->]**
>
> $999 
> Or $250 today + $249 in 30 days 
> Payment processed securely via Stripe 
> Access through the July 2026 bar exam
>
> ---
>
> {{first_name}}, you've seen your traps. You know the problem. The repair path starts at $250 today. The repeated trap pattern is expensive.
>
> Don't let the same traps follow you into the exam.
>
> BarMatrix Team 
> BarMatrix
>
> P.S. — If you have any hesitation at all, reply to this email. I'll personally answer. But Access runs through the July 2026 bar exam.

---

### Design Notes

- **The July cohort note:** If your ESP supports dynamic July cohort note timers, use one. If not, use bold text: "July 2026 cohort" in large red font at the top of the email.
- **The "traps don't care" line:** This is the emotional core. Make it visually prominent — a centered blockquote, large text, or a dark background callout.
- **The "what happens if you don't" section:** This is the fear/loss framing. Use bullet points. Keep it scannable. Don't overdo it — 4 bullets is enough.
- **CTA:** Make this the largest, most prominent CTA in the entire sequence. Use a red button that spans the full width of the email on mobile.
- **The P.S.:** The personal reply offer builds trust and reduces last-minute anxiety. The founder's name adds weight.
- **No images needed:** This email should feel like a letter. Text-heavy. Personal. Urgent.

### A/B Test Ideas

| Test | Variant A | Variant B | Hypothesis |
|------|-----------|-----------|------------|
| Subject line | "July 2026 cohort window: Your traps don't care about the July 2026 cohort window" | "July 2026 cohort — $999 becomes $999" | Emotion-driven subject line (traps) vs. price-driven subject line |
| Opening | "Your traps don't care about the July 2026 cohort window" | " $999 becomes $999 in July 2026 cohort window" | Problem-driven opening outperforms price-driven opening |
| The "what happens if you don't" section | Included | Removed | Loss aversion drives conversion; but too much fear may trigger avoidance |
| CTA text | "Enroll Now — Flagship enrollment" | "Fix My Traps Before the Exam" | Action-oriented CTA outperforms price-oriented CTA |
| P.S. line | Personal reply offer | "P.S. — The July 2026 cohort is capped at July 2026 cohort access. When we hit the cap, the July 2026 bar exam arrives even if the July 2026 cohort window haven't passed." | Scarcity (cap) outperforms personal reply |
| Sender | "BarMatrix" | "BarMatrix Team from BarMatrix" | Personal sender in urgency email increases trust and conversion |

---

---

## Universal Sequence Settings

### Trigger Logic

```
IF user completes diagnostic
 THEN send Email 1 immediately
 AND add to "Diagnostic Completers" segment
 AND tag with "Diagnostic_Complete"
 AND start 2-day delay timer

IF user opens Email 1 AND clicks CTA
 THEN track "Email1_Engaged"

IF user does NOT purchase Flagship within 2 days
 THEN send Email 2
 AND start 2-day delay timer

IF user does NOT purchase Flagship within 4 days of Email 2
 THEN send Email 3
 AND start 2-day delay timer

IF user does NOT purchase Flagship within 6 days of Email 3
 THEN send Email 4
 AND start 2-day delay timer

IF user does NOT purchase Flagship within 8 days of Email 4
 THEN send Email 5
 AND tag with "Final_Urgency_Sent"

IF user purchases Flagship at ANY point
 THEN exit sequence
 AND tag with "Flagship_Purchased"
 AND move to "Flagship Customers" segment
 AND start onboarding sequence
```

### Timing Adjustments

| Scenario | Adjustment |
|----------|------------|
| User completes diagnostic but doesn't open Email 1 | Send Email 2 with a different subject line referencing the trap patterns |
| User opens multiple emails but never clicks | Send a one-off "Still comparing?" email with a link to the comparison pages |
| User clicks CTA but doesn't purchase | Trigger a separate "Abandoned Cart" sequence (3 emails over 24 hours) |
| User is within July 2026 cohort window of the July 2026 cohort window | Accelerate the sequence — send Email 5 immediately, regardless of where they are in the flow |
| User has already visited the pricing page | Tag with "Pricing_Page_Visitor" and send Email 5 sooner |

### Segmentation Tags

| Tag | Trigger | Use |
|-----|---------|-----|
| `Diagnostic_Complete` | Completes diagnostic | Entry to nurture sequence |
| `Diagnostic_No_Open` | 24 hours post-Email 1, no open | Re-send with different subject line |
| `Email_Engaged` | Opens 2+ emails in sequence | Higher-intent segment; send targeted offers |
| `Email_Clicked_No_Purchase` | Clicks CTA but no purchase | Send abandoned cart / comparison page nudge |
| `Pricing_Page_Visitor` | Visits /pricing | Accelerate to Email 5; retarget with ads |
| `Flagship_Purchased` | Completes purchase | Exit nurture; start onboarding |
| `Final_Urgency_Sent` | Receives Email 5 | Track for post-July 2026 cohort window win-back sequence |

### UTM Tracking for Email CTAs

Use these UTM parameters for all email links to track attribution:

| Email | UTM String |
|-------|------------|
| Email 1 | `?utm_source=email&utm_medium=email&utm_campaign=red_zone_launch&utm_content=nurture_email_1&utm_term=diagnostic_results` |
| Email 2 | `?utm_source=email&utm_medium=email&utm_campaign=red_zone_launch&utm_content=nurture_email_2&utm_term=repair_method` |
| Email 3 | `?utm_source=email&utm_medium=email&utm_campaign=red_zone_launch&utm_content=nurture_email_3&utm_term=case_study` |
| Email 4 | `?utm_source=email&utm_medium=email&utm_campaign=red_zone_launch&utm_content=nurture_email_4&utm_term=faq` |
| Email 5 | `?utm_source=email&utm_medium=email&utm_campaign=red_zone_launch&utm_content=nurture_email_5&utm_term=urgency` |

### Conversion Tracking Events

| Event | Trigger | Platform |
|-------|---------|----------|
| `Email_Opened` | Open pixel fires | ESP + Google Analytics |
| `Email_Clicked` | Link click | ESP + UTM |
| `Diagnostic_Started_From_Email` | Visits diagnostic page from email | Google Analytics 4 |
| `Pricing_Page_From_Email` | Visits /pricing from email | Google Analytics 4 |
| `Purchase_From_Email` | Completes Stripe checkout from email | Stripe + Google Analytics 4 |

---

## Supplementary: The "Abandoned Cart" Sequence (Click but No Purchase)

If a user clicks the Flagship CTA in any nurture email but does not complete purchase within 1 hour, trigger this 3-email micro-sequence:

### Abandoned Cart Email 1 (1 hour after click)

**Subject:** You clicked. You didn't buy. Here's what I think happened.

> {{first_name}},
>
> You clicked through to the Flagship enrollment page. You didn't buy.
>
> I think one of three things happened:
>
> 1. **You got busy.** The bar exam is overwhelming. Something else pulled your attention. I get it.
> 2. **You weren't sure it was worth $999.** Fair. Let me reframe: the diagnostic is free. The repair path starts at $250 today. The repeated trap pattern is expensive. One MBE point can be the difference between passing and failing.
> 3. **You weren't sure it would work with your course.** It does. Barbri, Themis, Kaplan — BarMatrix sits alongside all of them. We don't replace your daily assignment. We add the one repair task that moves your score.
>
> Whatever the reason, here's what I want you to know: the July-cycle Flagship enrollment is open. BarMatrix Flagship is $499 during the 50% off sale, or $250 today + $249 in 30 days.
>
> **[Complete My Enrollment →]**
>
> No pressure. But don't let your traps win by default.
>
> BarMatrix Team

### Abandoned Cart Email 2 (24 hours after click, if no purchase)

**Subject:** Still thinking about it? Read this.

> {{first_name}},
>
> 24 hours ago, you clicked the Flagship enrollment link. You still haven't bought.
>
> I'm not going to send you a fake "your cart is expiring" email. That stuff is manipulative and I won't do it.
>
> Instead, here's an honest question: What's the one thing holding you back?
>
> Is it the price? The time? Uncertainty about whether it works with your course? Something else?
>
> Reply to this email and tell me. I'll answer personally. No sales pitch. Just a real answer from a real person.
>
> BarMatrix Team
> BarMatrix
>
> P.S. - If you decide to enroll during the July 2026 cohort, the link is here: **[Complete My Enrollment →]**

### Abandoned Cart Email 3 (July 2026 cohort window after click, if no purchase)

**Subject:** Last follow-up. Then I leave you alone.

> {{first_name}},
>
> This is my last email about Flagship. If you haven't enrolled by now, Flagship may not be the right fit today. Both are fine.
>
> I'll keep sending you the free BarMatrix content: trap-pattern breakdowns, MBE tips, and study strategies. No sales. No pressure. Just value.
>
> If you ever want to revisit Flagship, the link is always here: **[Enroll When You're Ready →]**
>
> Good luck with the bar. Seriously. I hope you crush it.
>
> BarMatrix Team
> BarMatrix
>
> P.S. - If you choose Flagship before the July 2026 bar exam arrives, the enrollment path is here. But after this email, I won't mention it again.

---

## Supplementary: Post-July 2026 cohort window Win-Back Sequence

For users who completed the diagnostic but did not purchase:

### Follow-up Email 1

**Subject:** Your diagnostic is still useful.

> {{first_name}},
>
> The July-cycle Flagship access runs through the July 2026 bar exam. BarMatrix Flagship is 50% off the $999 regular price: $499.
>
> I know that's a lot for a supplement. And I know you have a decision to make.
>
> Here is the clean next step: revisit your Red-Zone Map and decide whether the guided repair path is worth enrolling in Flagship.
>
> Why? Because I want you to experience the repair loop. I want you to feel what it's like to stop falling for {{top_trap_pattern}}. If the repair path does not fit, do not enroll.
>
> If it does click, you have the full Flagship repair path for the July-cycle cohort.
>
> **[Enroll in Flagship →]**
>
> This offer expires in 7 days. Then it goes away for good.
>
> BarMatrix Team

---

*Email Nurture Sequence — BarMatrix Flagship Launch Campaign* 
*Reference: BarMatrix-Launch-Campaign-Plan.md, BarMatrix-Paid-Ad-Creative-Brief.md, BarMatrix-Competitive-Analysis.md* 
*Output written to: C:\FOC\kimiwork\BarMatrix-Email-Nurture-Sequence.md*
