# FOC Sample QA Report

Generated: 2026-06-17T09:15:50.692Z
Draft root: `C:\FOC\Workspace\DraftRebuild\cq-20260617T091450Z`
Store root: `C:\BMO\BARMATRIX\c3-rewrite-cq`

## Summary

- Status: PASS
- Samples reviewed: 23
- Sample failures: 0
- Sample warnings: 0
- Manifest draft-ready: 1252
- Manifest quarantined: 110
- Projection rows: 1252 questions, 1252 annotations, 47428 tags
- C3 cards written: 0 (Skipped until activation because /api/c3/deck reads c3_cards without a question status gate.)

## Subject Coverage

| Subject | Samples | Pass | Fail |
| --- | ---: | ---: | ---: |
| CIVIL_PROCEDURE | 3 | 3 | 0 |
| CONSTITUTIONAL_LAW | 3 | 3 | 0 |
| CONTRACTS | 3 | 3 | 0 |
| CRIMINAL | 5 | 5 | 0 |
| EVIDENCE | 3 | 3 | 0 |
| REAL_PROPERTY | 3 | 3 | 0 |
| TORTS | 3 | 3 | 0 |

## Sample Findings

### 14000_bible_escape_room_trailer

- Status: PASS
- Reason: CIVIL_PROCEDURE sample 1/94
- Subject: CIVIL_PROCEDURE
- Source QID: 14000
- Outline: 93110300
- Key: D
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CLASH / ANCHOR_ASSISTED

### 18669_mary_negligence_survival

- Status: PASS
- Reason: CIVIL_PROCEDURE sample 48/94
- Subject: CIVIL_PROCEDURE
- Source QID: 18669
- Outline: 96060100
- Key: C
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CUT / ANCHOR_ASSISTED

### 22873_food-pantry-warehouse

- Status: PASS
- Reason: CIVIL_PROCEDURE sample 94/94
- Subject: CIVIL_PROCEDURE
- Source QID: 22873
- Outline: 94010100
- Key: C
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CLASH / ANCHOR_ASSISTED

### 14223_library-bulletin

- Status: PASS
- Reason: CONSTITUTIONAL_LAW sample 1/101
- Subject: CONSTITUTIONAL_LAW
- Source QID: 14223
- Outline: 44040502
- Key: C
- Verdict: C3_SOLVE
- Phase/confidence: CLASH / HARD_STRUCTURAL

### 18507_lydia_hospitality_act

- Status: PASS
- Reason: CONSTITUTIONAL_LAW sample 51/101
- Subject: CONSTITUTIONAL_LAW
- Source QID: 18507
- Outline: 42010104
- Key: C
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CUT / ANCHOR_ASSISTED

### 22726_rare_hymnal_livestream

- Status: PASS
- Reason: CONSTITUTIONAL_LAW sample 101/101
- Subject: CONSTITUTIONAL_LAW
- Source QID: 22726
- Outline: 44040203
- Key: C
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CUT / ANCHOR_ASSISTED

### 14373_cq

- Status: PASS
- Reason: CONTRACTS sample 1/175
- Subject: CONTRACTS
- Source QID: 14373
- Outline: 52040300
- Key: C
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CUT / ANCHOR_ASSISTED

### 14520_olive_wood_keepsake_crosses

- Status: PASS
- Reason: CONTRACTS sample 88/175
- Subject: CONTRACTS
- Source QID: 14520
- Outline: 51060101
- Key: D
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CALL / ANCHOR_ASSISTED

### 22589_concert-ad-frustration

- Status: PASS
- Reason: CONTRACTS sample 175/175
- Subject: CONTRACTS
- Source QID: 22589
- Outline: 56050603
- Key: B
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CLASH / ANCHOR_ASSISTED

### 14554_johns-hilltop

- Status: PASS
- Reason: CRIMINAL sample 1/426
- Subject: CRIMINAL
- Source QID: 14554
- Outline: 75070202
- Key: C
- Verdict: C3_SOLVE
- Phase/confidence: CLASH / HARD_STRUCTURAL

### 17893_sting-recovered-bike

- Status: PASS
- Reason: CRIMINAL sample 214/426
- Subject: CRIMINAL
- Source QID: 17893
- Outline: 73030801
- Key: D
- Verdict: C3_LEAN
- Phase/confidence: CLASH / ANCHOR_ASSISTED

### 22409

- Status: PASS
- Reason: CRIMINAL sample 426/426
- Subject: CRIMINAL
- Source QID: 22409
- Outline: 74020102
- Key: A
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CLASH / ANCHOR_ASSISTED

### 14756_lydia-cat-bookshop

- Status: PASS
- Reason: EVIDENCE sample 1/195
- Subject: EVIDENCE
- Source QID: 14756
- Outline: 33040102
- Key: C
- Verdict: C3_SOLVE
- Phase/confidence: CLASH / HARD_STRUCTURAL

### 17194_wedding_album

- Status: PASS
- Reason: EVIDENCE sample 98/195
- Subject: EVIDENCE
- Source QID: 17194
- Outline: 35030302
- Key: B
- Verdict: C3_SOLVE
- Phase/confidence: CLASH / HARD_STRUCTURAL

### 22269_lakeside-boat-collision

- Status: PASS
- Reason: EVIDENCE sample 195/195
- Subject: EVIDENCE
- Source QID: 22269
- Outline: 33040101
- Key: A
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CLASH / ANCHOR_ASSISTED

### 14906_barnabas-v-lydia-land-deal

- Status: PASS
- Reason: REAL_PROPERTY sample 1/181
- Subject: REAL_PROPERTY
- Source QID: 14906
- Outline: 85030103
- Key: C
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CLASH / ANCHOR_ASSISTED

### 15076_scripture_greenhouse_lot

- Status: PASS
- Reason: REAL_PROPERTY sample 91/181
- Subject: REAL_PROPERTY
- Source QID: 15076
- Outline: 84040103
- Key: D
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CALL / ANCHOR_ASSISTED

### 22138_revival_hall_repainting

- Status: PASS
- Reason: REAL_PROPERTY sample 181/181
- Subject: REAL_PROPERTY
- Source QID: 22138
- Outline: 82010402
- Key: C
- Verdict: C3_SOLVE
- Phase/confidence: CALL / HARD_STRUCTURAL

### 15087_barnabas-storehouse

- Status: PASS
- Reason: TORTS sample 1/80
- Subject: TORTS
- Source QID: 15087
- Outline: 64010201
- Key: B
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CLASH / ANCHOR_ASSISTED

### 18914_rare_bible_provenance

- Status: PASS
- Reason: TORTS sample 41/80
- Subject: TORTS
- Source QID: 18914
- Outline: 62050200
- Key: A
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CALL / ANCHOR_ASSISTED

### 21752_olive_oil_ramp

- Status: PASS
- Reason: TORTS sample 80/80
- Subject: TORTS
- Source QID: 21752
- Outline: 62060101
- Key: C
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CUT / PURE_ANCHOR

### 14641_bible_trivia_attempt

- Status: PASS
- Reason: special sample: fork/split verdict
- Subject: CRIMINAL
- Source QID: 14641
- Outline: 71040300
- Key: D
- Verdict: FORK_OR_SPLIT
- Phase/confidence: CLASH / ANCHOR_ASSISTED

### 14700_hymn_night_hire

- Status: PASS
- Reason: special sample: fork/split verdict
- Subject: CRIMINAL
- Source QID: 14700
- Outline: 71040100
- Key: A
- Verdict: ANCHOR_SOLVE
- Phase/confidence: CALL / ANCHOR_ASSISTED

