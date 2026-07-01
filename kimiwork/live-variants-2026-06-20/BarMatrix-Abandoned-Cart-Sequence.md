# Live Approval Variant

Kimiwork sale rule: Regular price $999; active sale is 50% off ($499), with the standard plan pitched as just $250 today + $249 in 30 days. July 2026 cohort access runs through the July 2026 bar exam. No seat-scarcity language.

Source draft: `BarMatrix-Abandoned-Cart-Sequence.md`  
Variant date: 2026-06-20  
Status: Ready for founder approval before implementation on `barmatrix.app`.  
Scope: Preserves the source structure while aligning active copy to the Kimiwork canonical sale: $999 regular price, 50% off sale price of $499, standard $250 today + $249 in 30 days plan, July 2026 cohort access through the July 2026 bar exam.

--- BarMatrix Abandoned Cart Email Sequence

## Document Purpose

A standalone 3-email micro-sequence triggered when a user clicks any Flagship enrollment link (from the nurture sequence, from an ad, from the pricing page, or from a comparison page) but does not complete the Stripe checkout within 1 hour. The goal is to re-engage, remove friction, and convert the purchase.

**Trigger:** User clicks a Flagship CTA (from any source) and lands on the pricing page or initiates Stripe checkout, but does not complete payment within 1 hour. 
**Exit condition:** Purchase completes, or the third email sends and the user takes no action. 
**Timing:** 1 hour, 24 hours, and July 2026 cohort window after the click. 
**Platform:** Any ESP with automation triggers (Klaviyo, ActiveCampaign, Mailchimp, ConvertKit).

---

---

## Sequence Overview

| Email | Send Time | Subject Line | Tone | Goal |
|-------|-----------|-------------|------|------|
| **1** | 1 hour after click | You clicked. You didn't buy. Here's what I think happened. | Honest, curious, non-judgmental | Re-engage, remove friction, offer help |
| **2** | 24 hours after click | Still thinking about it? Read this. | Empathetic, direct, no pressure | Address the real objection, invite reply |
| **3** | July 2026 cohort window after click | Last follow-up. Then I leave you alone. | Respectful, low-pressure, final offer | One last chance, then graceful exit |

---

---

## EMAIL 1: You Clicked. You Didn't Buy. Here's What I Think Happened.

**Send:** 1 hour after the user clicks any Flagship CTA but does not complete purchase 
**Subject:** You clicked. You didn't buy. Here's what I think happened. 
**Preview text:** Three possibilities. One of them is probably yours. 
**From name:** BarMatrix Team from BarMatrix 
**From email:** [founder]@barmatrix.app 
**Goal:** Re-engage. Acknowledge the hesitation. Remove the most common frictions.

---

### Body

> **Subject:** You clicked. You didn't buy. Here's what I think happened.
>
> ---
>
> {{first_name}},
>
> You clicked through to the Flagship enrollment page. You didn't buy.
>
> I think one of three things happened:
>
> **1. You got busy.**
> The bar exam is overwhelming. Something else pulled your attention. I get it. There are 47 things demanding your time right now, and "buy a supplement" is not at the top of the list.
>
> **2. You weren't sure it was worth $999.**
> Fair. Let me reframe it: the diagnostic is free. The repair path starts at $250 today. The repeated trap pattern is expensive. One MBE point can be the difference between passing and failing. The MBE is worth 50% of your bar score. If your top traps keep repeating, the diagnostic has already shown where the repair work should start.
>
> **3. You weren't sure it would work with your course.**
> It does. Barbri, Themis, Kaplan — BarMatrix sits alongside all of them. We don't replace your daily assignment. We add the one repair task that moves your score. Most students do their course's daily assignment first, then spend 15–20 minutes on one BarMatrix repair task. That's it.
>
> Whatever the reason, here's what I want you to know: the July-cycle Flagship enrollment is open. BarMatrix Flagship is 50% off the $999 regular price: **$499**, or **$250 today + $249** in 30 days.
>
> **[Complete My Enrollment →]**
>
> No pressure. But don't let your traps win by default.
>
> BarMatrix Team 
> BarMatrix
>
> P.S. — If you want to talk through whether Flagship is right for you, reply to this email. I'll answer personally. No sales pitch. Just a real conversation.

---

### Design Notes

- **Personal sender:** The founder's name in the "From" field builds trust and signals this is not a generic automation.
- **The "three things" framework:** This is disarming. It acknowledges real life (busy, distracted) before addressing price and product fit. It makes the reader feel seen, not sold to.
- **The value explanation:** Repeat the "top trap patterns" math from the pricing page. Make it a callout box with bold text.
- **The P.S.:** The personal reply offer is critical. It reduces anxiety for students who are on the fence but need a human conversation before committing.

### A/B Test Ideas

| Test | Variant A | Variant B | Hypothesis |
|------|-----------|-----------|------------|
| **Subject line** | "You clicked. You didn't buy. Here's what I think happened." | "Did something stop you? (Three guesses)" | Curiosity-driven subject line outperforms direct statement |
| **Opening** | "You clicked through to the Flagship enrollment page." | "I saw you checked out Flagship." | Softer opening reduces pressure |
| **The three reasons** | Busy, price, course conflict | Price, course conflict, skepticism about method | "Skepticism" addresses the doubters directly |
| **CTA text** | "Complete My Enrollment" | "Reserve My Spot — $999" | "Reserve" creates scarcity; "Complete" reduces friction |
| **P.S. line** | "Reply to this email" | "P.S. — The July 2026 cohort is capped at July 2026 cohort access. July 2026 cohort access left." | Scarcity in P.S. outperforms personal reply offer |

---

---

## EMAIL 2: Still Thinking About It? Read This.

**Send:** 24 hours after Email 1 (if no purchase) 
**Subject:** Still thinking about it? Read this. 
**Preview text:** One honest question. No sales pitch. 
**From name:** BarMatrix Team from BarMatrix 
**From email:** [founder]@barmatrix.app 
**Goal:** Address the real objection. Shift from selling to helping.

---

### Body

> **Subject:** Still thinking about it? Read this.
>
> ---
>
> {{first_name}},
>
> 24 hours ago, you clicked the Flagship enrollment link. You still haven't bought.
>
> I'm not going to send you a fake "your cart is expiring" email. That stuff is manipulative and I won't do it.
>
> Instead, here's an honest question:
>
> **What's the one thing holding you back?**
>
> Is it the price? The time? Uncertainty about whether it works with your course? Something else?
>
> Reply to this email and tell me. I'll answer personally. No sales pitch. Just a real answer from a real person.
>
> If you want my best guess, here are the three objections I hear most often:
>
> **" $999 is too much for a supplement."**
> I get it. But here's the math: the MBE is 50% of your bar score. Each question is ~a measurable part of the MBE. If your top traps keep repeating, the diagnostic has already shown where the repair work should start.
>
> **"I don't have time."**
> Each repair task is 15–20 minutes. One task per day. If you have time for your course's daily assignment, you have time for BarMatrix. It's not a second course. It's a 15-minute repair layer.
>
> **"I'm not sure it will work with my course."**
> It works with Barbri, Themis, Kaplan, and every other course. We don't replace your daily assignment. We add the one repair task that moves your score. That's it.
>
> But when appropriate your objection is different. If your objection is different, reply and tell me. If so, reply and let me know. I'll address it directly.
>
> BarMatrix Team 
> BarMatrix
>
> P.S. - If you decide to enroll, the cohort path is here: **[Complete My Enrollment →]**. But after this email, I won't mention it again.

---

### Design Notes

- **The anti-manipulation opening:** "I'm not going to send you a fake 'your cart is expiring' email" is a trust-building moment. It signals that BarMatrix operates differently from other supplement companies. This is powerful for a skeptical audience.
- **The honest question:** "What's the one thing holding you back?" invites a reply. Even if the user doesn't reply, the question itself builds trust.
- **The three objections:** These are the most common objections from the pricing page FAQ. Repetition reinforces the message.
- **The P.S.:** Soft CTA. Not pushy. The "I won't mention it again" line sets up the final email's graceful exit.

### A/B Test Ideas

| Test | Variant A | Variant B | Hypothesis |
|------|-----------|-----------|------------|
| **Subject line** | "Still thinking about it? Read this." | "One honest question (no sales pitch)" | Honesty in subject line increases opens |
| **Opening** | Anti-manipulation statement | Direct question: "What's stopping you?" | Direct question outperforms defensive opening |
| **Objection format** | Text bullets | Numbered list with icons | Visual formatting increases engagement |
| **CTA placement** | Only in P.S. | In body + P.S. | Body CTA drives more clicks; P.S. CTA feels less pushy |
| **Reply incentive** | "I'll answer personally" | "I'll send you a personalized response based on your specific situation" | Specificity increases reply rate |

---

---

## EMAIL 3: Last Follow-Up. Then I Leave You Alone.

**Send:** July 2026 cohort window after Email 2 (if no purchase) 
**Subject:** Last follow-up. Then I leave you alone. 
**Preview text:** No more emails about Flagship. Just this one. 
**From name:** BarMatrix Team from BarMatrix 
**From email:** [founder]@barmatrix.app 
**Goal:** Final chance. Respectful exit. Preserve relationship for future.

---

### Body

> **Subject:** Last follow-up. Then I leave you alone.
>
> ---
>
> {{first_name}},
>
> This is my last email about Flagship. If you haven't enrolled by now, Flagship may not be the right fit today. Both are fine.
>
> I won't send you any more sales emails. I won't nag you. I won't drop the price or extend the July 2026 cohort window. I respect your decision either way.
>
> What I will do: keep sending you the free BarMatrix content. Trap-pattern breakdowns. MBE tips. Study strategies. No sales. No pressure. Just value. If you ever want to revisit Flagship, the link is always here:
>
> **[Enroll When You're Ready →]**
>
> Good luck with the bar. Seriously. I hope you crush it.
>
> BarMatrix Team 
> BarMatrix
>
> P.S. - If you choose Flagship before the July 2026 bar exam arrives, the enrollment path is here. But after this email, I won't mention it again. I hope you find what you need, whether it's BarMatrix or something else.

---

### Design Notes

- **The respectful exit:** This is the most important email in the sequence for long-term brand health. Even if the user doesn't buy, they should feel respected, not harassed. This email turns a non-buyer into a potential future customer or advocate.
- **The promise:** "I won't send you any more sales emails" is a binding commitment. Honor it. If the user receives another Flagship sales email after this, trust is destroyed.
- **The free content offer:** This transitions the user from the sales sequence to the content nurture sequence (blog posts, tips, trap-pattern breakdowns). They stay in the ecosystem without being sold to.
- **The P.S.:** One last soft CTA. Not pushy. The "I hope you find what you need" line signals genuine care, not desperation.

### A/B Test Ideas

| Test | Variant A | Variant B | Hypothesis |
|------|-----------|-----------|------------|
| **Subject line** | "Last follow-up. Then I leave you alone." | "This is the last one. Promise." | Casual, personal tone outperforms formal tone |
| **Opening** | "This is my last email about Flagship." | "I'm going to stop emailing you about Flagship now." | Passive voice feels less aggressive |
| **The exit promise** | "I won't send you any more sales emails." | "You'll only hear from me if I publish something genuinely useful." | Positive framing (useful content) outperforms negative framing (no sales) |
| **Final CTA** | "Enroll When You're Ready" | "Here's the link, just in case" | Soft CTA reduces pressure and increases goodwill |
| **The close** | "Good luck with the bar." | "No matter what you choose, I believe you'll pass." | Encouragement outperforms generic well-wishing |

---

---

## Trigger Logic & Automation Setup

### ESP Automation Flow

```
IF user clicks Flagship CTA (any source)
 AND lands on pricing page or initiates Stripe checkout
 AND does NOT complete purchase within 1 hour
 THEN add to "Abandoned Cart" segment
 AND tag with "Pricing_Page_Clicked_No_Purchase"
 AND send Email 1
 AND start 23-hour delay timer

IF user does NOT purchase within 24 hours of Email 1
 THEN send Email 2
 AND start 24-hour delay timer

IF user does NOT purchase within July 2026 cohort window of Email 2
 THEN send Email 3
 AND tag with "Abandoned_Cart_Sequence_Complete"
 AND move to "Content Nurture" segment (no sales emails)

IF user purchases at ANY point
 THEN exit abandoned cart sequence
 AND tag with "Flagship_Purchased"
 AND move to "Flagship Customers" segment
 AND start onboarding sequence
```

### Source-Specific Triggers

The abandoned cart sequence should fire regardless of which CTA the user clicked:

| Source | UTM Content | Trigger Event |
|--------|-------------|---------------|
| Email nurture sequence | `nurture_email_1` through `nurture_email_5` | Clicks email CTA → pricing page |
| Paid Meta ad | `retargeting_urgency` or `two_answer_trap` | Clicks ad CTA → pricing page |
| Google Search ad | `high_intent` or `competitor` | Clicks ad CTA → pricing page |
| TikTok ad | `two_answer_trap` or `retargeting` | Clicks ad CTA → pricing page |
| Reddit organic | `ama_comment` or `organic_comment` | Clicks link → pricing page |
| Comparison page | `vs_adaptibar` or `vs_barmax` or `vs_uworld` | Clicks CTA → pricing page |
| Diagnostic results page | `diagnostic_results` | Clicks "See Flagship" → pricing page |

### Timing Adjustments

| Scenario | Adjustment |
|----------|------------|
| User is within July 2026 cohort window of the July 2026 cohort window | Accelerate the sequence. Send Email 1 immediately, Email 2 in 6 hours, Email 3 in 12 hours. |
| User has already received Email 5 (urgency) from nurture sequence | Skip Email 1 and 2. Send Email 3 only as a final "last chance" note. |
| User clicked CTA multiple times but never purchased | Send Email 1 only once. Do not re-trigger the sequence on repeated clicks. |
| User opened Email 1 but did not click | Send Email 2 with a different subject line. |
| User replied to Email 1 or 2 | Pause the sequence. Handle the reply personally. Resume only if the user asks. |

---

---

## UTM Tracking for Abandoned Cart Emails

| Email | UTM String |
|-------|------------|
| Email 1 | `barmatrix.app/pricing?utm_source=email&utm_medium=email&utm_campaign=red_zone_launch&utm_content=abandoned_cart_1&utm_term=pricing_page` |
| Email 2 | `barmatrix.app/pricing?utm_source=email&utm_medium=email&utm_campaign=red_zone_launch&utm_content=abandoned_cart_2&utm_term=pricing_page` |
| Email 3 | `barmatrix.app/pricing?utm_source=email&utm_medium=email&utm_campaign=red_zone_launch&utm_content=abandoned_cart_3&utm_term=pricing_page` |

---

---

## Conversion Tracking Events

| Event | Trigger | Platform |
|-------|---------|----------|
| `abandoned_cart_email_1_sent` | Email 1 sends | ESP + GA4 |
| `abandoned_cart_email_1_opened` | Email 1 opened | ESP + GA4 |
| `abandoned_cart_email_1_clicked` | Email 1 CTA clicked | ESP + GA4 |
| `abandoned_cart_email_2_sent` | Email 2 sends | ESP + GA4 |
| `abandoned_cart_email_2_opened` | Email 2 opened | ESP + GA4 |
| `abandoned_cart_email_2_clicked` | Email 2 CTA clicked | ESP + GA4 |
| `abandoned_cart_email_3_sent` | Email 3 sends | ESP + GA4 |
| `abandoned_cart_email_3_opened` | Email 3 opened | ESP + GA4 |
| `abandoned_cart_email_3_clicked` | Email 3 CTA clicked | ESP + GA4 |
| `abandoned_cart_recovered` | Purchase within 72 hours of first click | Stripe + GA4 + ESP |
| `abandoned_cart_lost` | No purchase within 72 hours of first click | ESP (tag) |

---

---

## Performance Targets

| Metric | Target | Benchmark |
|--------|--------|-----------|
| **Email 1 open rate** | 45%+ | Abandoned cart average: 40–50% |
| **Email 1 click rate** | 10%+ | Abandoned cart average: 8–12% |
| **Email 2 open rate** | 35%+ | Follow-up average: 30–40% |
| **Email 2 click rate** | 8%+ | Follow-up average: 5–8% |
| **Email 3 open rate** | 30%+ | Final email average: 25–35% |
| **Email 3 click rate** | 5%+ | Final email average: 3–5% |
| **Sequence recovery rate** | 8–15% | Abandoned cart average: 5–15% |
| **Revenue recovered** | $5,000–$15,000 | Depends on traffic volume |

---

---

## Relationship to the Main Nurture Sequence

The abandoned cart sequence is a **parallel track**, not a replacement for the main nurture sequence. Here's how they interact:

| Scenario | Nurture Sequence | Abandoned Cart Sequence |
|----------|------------------|------------------------|
| User completes diagnostic but does not click Flagship CTA | Main nurture (5 emails) | Not triggered |
| User completes diagnostic and clicks Flagship CTA but does not buy | Main nurture PAUSED | Abandoned cart triggered (3 emails) |
| User purchases during nurture sequence | Nurture exits, onboarding starts | Not triggered |
| User purchases during abandoned cart sequence | Nurture exits, onboarding starts | Abandoned cart exits |
| User does not purchase after abandoned cart sequence | Main nurture RESUMES at next email | Sequence completes, user moved to content nurture |
| User is in both sequences simultaneously | Nurture continues unless paused | Abandoned cart takes priority; nurture pauses |

**Important:** The abandoned cart sequence should pause the main nurture sequence while it runs. Receiving both sequences simultaneously is overwhelming and spammy. Resume the nurture sequence only if the user does not purchase after Email 3.

---

*Abandoned Cart Email Sequence — BarMatrix Flagship Launch Campaign* 
*Reference: BarMatrix-Launch-Campaign-Plan.md, BarMatrix-Email-Nurture-Sequence.md, BarMatrix-Pricing-Page.md* 
*Output written to: C:\FOC\kimiwork\BarMatrix-Abandoned-Cart-Sequence.md*
