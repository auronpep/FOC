# CQ16160: The Parsonage Accosting

## Distilled Core Question
The defendant accosted a pastor and his spouse outside the church parsonage at night, forced them inside, compelled the spouse to open the church safe, and stole the offertory funds. Following the defendant's arrest by church security, the pastor suffered a fatal heart attack. Was the defendant guilty of burglary, robbery, and murder?

## Final Choices
A: burglary, robbery, and murder.
B: robbery and murder only.
C: burglary and robbery only.
D: robbery only.

## Correct Answer
A

## Letter Map
A: correct (residual), burglary, robbery, and murder
B: wrong (ISSUE_SENSE), robbery and murder only
C: wrong (ISSUE_SENSE), burglary and robbery only
D: wrong (ISSUE_SENSE), robbery only

## Right-Answer Explanation
The defendant committed burglary by using constructive breaking (threat of force) to enter the parsonage with intent to commit a felony (robbery). Robbery occurred because the property was taken from the victim's presence by intimidation. Felony murder is applicable because the pastor's fatal heart attack was a foreseeable consequence of the dangerous felony committed.

## Wrong-Answer Explanations
B: Ignores the burglary. Constructive breaking and entry into the parsonage with intent to commit a robbery satisfies the burglary elements.
C: Ignores the felony murder. The killing occurred during the commission of the robbery, satisfying felony murder.
D: Ignores both burglary and felony murder, which are fully supported by the facts.

## Black-Letter Verification
Burglary is defined as the breaking and entering of a dwelling of another at nighttime with intent to commit a felony therein. Constructive breaking, via threat of force, suffices for the "breaking" element. Felony murder occurs when a death results from the commission of a dangerous felony, such as robbery.

## Rigor/Difficulty Note
This is a standard application of burglary (constructive breaking), robbery (presence), and felony murder (causation) doctrines.

## C3 Walkthrough
1. **CUT**: Identify crimes (burglary, robbery, murder).
2. **CLASH**: Evaluate if elements for each are present, particularly constructive breaking for burglary, presence for robbery, and causation for felony murder.
3. **CALL**: Burglary (constructive breaking), Robbery (presence), Felony Murder (foreseeable result of dangerous felony).

## Divergence Audit
- Original: Apartment accosting, necklace.
- Variant: Parsonage accosting, offertory funds.

## Review Truth
The defendant is guilty of all three crimes because he committed burglary through constructive breaking, robbery through taking property from the victim's presence by intimidation, and felony murder because the death was a foreseeable consequence of his dangerous criminal activity.

## Five Variations Table

| Variation | Stem Change | Divergence Score |
| :--- | :--- | :--- |
| 1 | Parsonage instead of apartment | 0.1 |
| 2 | Offertory funds instead of necklace | 0.1 |
| 3 | Pastor instead of husband | 0.1 |
| 4 | Church safe instead of residential safe | 0.2 |
| 5 | Church security instead of building security | 0.1 |

# Question YAML
```yaml
qid: CQ16160
subject: CRIMINAL
topic: Other Crimes
subtopic: Burglary
difficulty: Core
verdict: PASS
```

# c3_annotation
```json
{
  "c3_annotation": {
    "c3_solution": "A",
    "analyzer_notes": "drift_audit: Parsonage/Pastor/Church funds/Church security. transformed_from: 16160. letter_map: A: correct; B: wrong; C: wrong; D: wrong."
  }
}
```

# program_elements
```json
{
  "program_elements": {
    "official_key": "A",
    "credited_answer": "A",
    "residual": "A",
    "student_script": "A",
    "gold_keys": [
      { "type": "rule", "text": "Burglary is breaking and entering a dwelling at night with intent to commit a felony." },
      { "type": "rule", "text": "Felony murder applies to deaths occurring during a dangerous felony." }
    ],
    "silver_keys": [
      { "type": "cut", "text": "Identify elements of burglary, robbery, murder." },
      { "type": "clash", "text": "Assess constructive breaking and felony murder causation." },
      { "type": "call", "text": "Confirm all three crimes are supported." }
    ]
  }
}
```

# program_intelligence
```json
{
  "program_intelligence": {
    "confidence": "HARD_STRUCTURAL",
    "case_study_verdict": "C3_SOLVE",
    "bank_validation_verdict": "PASS",
    "component_routing": [
      { "destination_key": "dashboard_summary", "component_tags": ["burglary", "robbery", "felony_murder"] }
    ]
  }
}
```
