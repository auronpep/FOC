-- Correction pass: clean provenance text from generated stems after initial update.
START TRANSACTION;

-- CQ14616.md -> 14616_good_shepherd_cyber_watch (31b7525b-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CRIMINAL_LAW',
       topic = 'Criminal Law',
       subtopic = 'Constitutional Protection of Accused Persons',
       tension_point = 'private first search vs government-induced second search',
       fact_pattern = 'Lydia is a computer expert and a member of a private Christian law-school cyber-safety group called Good Shepherd Cyber Watch. She decided to expose people who traded illegal images involving minors. Lydia posted several adult-themed decoy images on her own website. The file for each image contained an embedded access program that would allow Lydia to enter the computer of anyone who downloaded the image.

Timothy downloaded one of the images onto his personal laptop. Using the embedded program, Lydia entered Timothy’s laptop and found one illegal image involving a minor. She copied the file and turned it over to a federal law enforcement agency.

A federal agent told Lydia that a successful prosecution would require more than one image and offered her a monetary reward for additional images leading to Timothy’s conviction. Lydia entered Timothy’s laptop again. This time, she found hundreds of illegal images involving minors, which she turned over to the federal agency.

Timothy was charged with multiple counts of violating federal child-exploitation statutes. He moved to suppress the images that Lydia discovered on his laptop. The motion is based on both the Fourth Amendment and a federal statute forbidding interception of electronic communications without permission. The parties stipulated that Lydia’s conduct in downloading files from Timothy’s laptop violated the interception statute.

How should the court rule on Timothy’s motion to suppress?',
       question_stem = 'Lydia is a computer expert and a member of a private Christian law-school cyber-safety group called Good Shepherd Cyber Watch. She decided to expose people who traded illegal images involving minors. Lydia posted several adult-themed decoy images on her own website. The file for each image contained an embedded access program that would allow Lydia to enter the computer of anyone who downloaded the image.

Timothy downloaded one of the images onto his personal laptop. Using the embedded program, Lydia entered Timothy’s laptop and found one illegal image involving a minor. She copied the file and turned it over to a federal law enforcement agency.

A federal agent told Lydia that a successful prosecution would require more than one image and offered her a monetary reward for additional images leading to Timothy’s conviction. Lydia entered Timothy’s laptop again. This time, she found hundreds of illegal images involving minors, which she turned over to the federal agency.

Timothy was charged with multiple counts of violating federal child-exploitation statutes. He moved to suppress the images that Lydia discovered on his laptop. The motion is based on both the Fourth Amendment and a federal statute forbidding interception of electronic communications without permission. The parties stipulated that Lydia’s conduct in downloading files from Timothy’s laptop violated the interception statute.

How should the court rule on Timothy’s motion to suppress?

Call: How should the court rule on the motion to suppress?

Prediction: Do not answer “all” or “none” too fast. The stem has two searches and a federal-agent event in the middle. Expect the answer to split the evidence.',
       call_of_question = 'Call: How should the court rule on the motion to suppress?

Prediction: Do not answer “all” or “none” too fast. The stem has two searches and a federal-agent event in the middle. Expect the answer to split the evidence.',
       difficulty = 2,
       metadata = '{"source_file":"CQ14616.md","source_question_id":"14616","variant_slug":"good_shepherd_cyber_watch","batch":"cq-updated-copy-2026-06-20","outline_code":"75070200","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"Private hacker finds one file, then after agent encouragement and a reward finds many more. Statute violation stipulated. Suppress none, all, or only second set?","review_truth":"Split the searches at government inducement: private first search stays in; government-induced warrantless second search gets suppressed; statute violation alone does not suppress all.","dominant_trap":null,"anchor_card":{"card_id":"REM-CRIM-14616","title":"Split before you suppress","signal":"Two evidence batches with a government-contact event in the middle.","student_move":"Mark first search / agent event / second search. Reject all-or-none answers unless the same legal layer governs both.","tiny_rule":"Private first; government-induced second.","trap":"Treating stipulated illegality as automatic suppression.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CRIM-PRIVATE-GOVT-AGENT-01","statement":"The Fourth Amendment does not apply to a purely private search. It applies when the private person acts as an instrument or agent of the government.","type":"constitutional_principle","trigger":"Private person searches once, then law enforcement encourages or rewards a later search.","authority":"United States v. Jacobsen; Skinner v. Railway Labor Executives'' Association","last_minute_review":true},{"id":"GK-CRIM-STATUTE-REMEDY-02","statement":"Do not collapse violation into remedy. A statutory privacy violation does not automatically mean all evidence is suppressed.","type":"distinction","trigger":"Motion to suppress plus a stipulated statutory violation.","authority":"18 U.S.C. §§ 2511, 2515; official explanation","last_minute_review":true}],"silver_keys":[{"id":"SK-CRIM-TWO-SEARCH-SPLIT-01","statement":"When the choices say all / none / only second set, and the stem has a government-contact event between two searches, split the timeline at that event.","type":"answer_array","trigger":"Two searches separated by agent encouragement or reward.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"answer_array","target_skill":"timeline split","prompt":"A private person searches once, then an agent encourages a second search. Choices are all / none / second only. What is the first move?","answer":"Split the timeline at the agent event."},{"drill_type":"bait_architecture","target_skill":"violation_vs_remedy","prompt":"A choice says suppress all because a statute was violated. What question must you ask?","answer":"Does the statute violation create this suppression remedy?"},{"drill_type":"gold_key","target_skill":"private_search_government_agent","prompt":"When does a private search start implicating the Fourth Amendment?","answer":"When the private actor acts as a government instrument or agent."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '31b7525b-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '14616_good_shepherd_cyber_watch'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = 'de9625f1faf253250e5dde17009b760c77d7fb2d1db8d9f8cb19dd386436bf9b'
   AND SHA2(COALESCE(question_stem, ''), 256) = '3fdadb6110d9f8140f410778ef6daeba89116d67f109fedd59e5b82da8ec9f2e'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '33c00ca1122d1ceb77082c28a8b5836e4c9e8ce39ae6a1c806978a8c4caf6c21';
UPDATE answer_choices
   SET choice_text = 'Deny the motion as to all images.',
       is_correct = 0,
       forensic_tags = '["wrong_element","violation_vs_remedy"]',
       misconception_tags = '["all_illegal_evidence_suppressed","probable_cause_applies_to_private_actor","statutory_violation_equals_exclusion","private_actor_forever_private"]',
       why_attractive = 'It treats Lydia as a private actor throughout.',
       why_wrong_or_correct = 'A flattens two searches into one result and ignores the government-contact pivot before the second search.',
       future_cue = 'Circle the agent reward event and ask whether it changes the second search.',
       remediation_id = 'REM-CRIM-14616'
 WHERE question_id = '31b7525b-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '15fe04f08bc77192e56f6a4d76e72873e31a98c0951b5a2ad313f092f0848a22'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Grant the motion as to all images, because Lydia acted without probable cause.',
       is_correct = 0,
       forensic_tags = '["flat_misstatement","wrong_frame"]',
       misconception_tags = '["all_illegal_evidence_suppressed","probable_cause_applies_to_private_actor","statutory_violation_equals_exclusion","private_actor_forever_private"]',
       why_attractive = 'Probable cause sounds like the standard for every search problem.',
       why_wrong_or_correct = 'B uses probable cause as a universal private-search standard, which is not the rule.',
       future_cue = 'Ask who did the search and whether the government induced it before applying search standards.',
       remediation_id = 'REM-CRIM-14616'
 WHERE question_id = '31b7525b-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '9d0ee62ee2bebf04031c67f399f452e553bca66f50278565e317133115a3d782'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Grant the motion as to all images, because Lydia violated the federal interception statute.',
       is_correct = 0,
       forensic_tags = '["bait_doctrine","violation_vs_remedy"]',
       misconception_tags = '["all_illegal_evidence_suppressed","probable_cause_applies_to_private_actor","statutory_violation_equals_exclusion","private_actor_forever_private"]',
       why_attractive = 'The statute was stipulated to be violated, so students convert violation into suppression.',
       why_wrong_or_correct = 'C proves a stipulated statutory violation but does not answer the suppression remedy for all images.',
       future_cue = 'Ask whether the rule proves illegality only or also proves suppression.',
       remediation_id = 'REM-CRIM-14616'
 WHERE question_id = '31b7525b-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = '92d4cb11312e797d565d8904afce667662e0d4b43c334d886d2584dc8b81e269'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Grant the motion only as to the second set of images.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'D is correct. The first search was Lydia’s private action. The second search came after a federal agent encouraged Lydia and offered a reward for additional evidence. That timing changes the layer.

Gold Key: A private search does not trigger the Fourth Amendment. But when law enforcement encourages or participates enough that the private person acts as a government instrument, the Fourth Amendment applies. Here, the second search is the government-induced search.

Silver Key: Split the timeline. Do not choose “all” or “none” when the stem gives two searches with a government-contact event between them.

The court should suppress only the second set.',
       future_cue = NULL,
       remediation_id = 'REM-CRIM-14616'
 WHERE question_id = '31b7525b-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'd1e4f08cdc3fb15d83bcd70d34b951e31041a7d488d0abbdd7b602b411868a72'
   AND is_correct = 1;

-- CQ14625.md -> 14625_private_retreat_felony_murder (31b81726-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CRIMINAL_LAW',
       topic = 'Criminal Law',
       subtopic = 'Constitutional Protection of Accused Persons',
       tension_point = 'acquitted predicate vs later-death homicide exception',
       fact_pattern = 'At a private Christian law-student retreat, Timothy was arrested in Lydia’s apartment after neighboring guests reported sounds of a struggle. Police arrived and found Timothy bent over Lydia’s prostrate body. Lydia was rushed to the hospital, where she lapsed into a coma. Timothy explained that he had been trying to revive Lydia after she suddenly collapsed.

Timothy was charged with attempted rape and assault after Mary, a neighboring guest, told police that she had heard Lydia sobbing, “No, please no, leave me alone.” At trial, the forensic evidence was inconclusive. The jury acquitted Timothy of attempted rape but convicted him of assault.

While Timothy was serving his sentence for assault, Lydia, who had never recovered from the coma, died. Timothy was then indicted and tried on a charge of felony murder. In this common-law jurisdiction, no statute prevents a prosecutor from proceeding in this manner, but Timothy argues that the felony-murder prosecution violates the Double Jeopardy Clause. His claim is:',
       question_stem = 'At a private Christian law-student retreat, Timothy was arrested in Lydia’s apartment after neighboring guests reported sounds of a struggle. Police arrived and found Timothy bent over Lydia’s prostrate body. Lydia was rushed to the hospital, where she lapsed into a coma. Timothy explained that he had been trying to revive Lydia after she suddenly collapsed.

Timothy was charged with attempted rape and assault after Mary, a neighboring guest, told police that she had heard Lydia sobbing, “No, please no, leave me alone.” At trial, the forensic evidence was inconclusive. The jury acquitted Timothy of attempted rape but convicted him of assault.

While Timothy was serving his sentence for assault, Lydia, who had never recovered from the coma, died. Timothy was then indicted and tried on a charge of felony murder. In this common-law jurisdiction, no statute prevents a prosecutor from proceeding in this manner, but Timothy argues that the felony-murder prosecution violates the Double Jeopardy Clause. His claim is:

Call: His double-jeopardy claim is correct or incorrect.

Prediction: The later death matters, but felony murder needs a predicate. The attempted rape was already acquitted. The assault conviction is a side path. The likely answer is the one tied to the attempted rape acquittal.',
       call_of_question = 'Call: His double-jeopardy claim is correct or incorrect.

Prediction: The later death matters, but felony murder needs a predicate. The attempted rape was already acquitted. The assault conviction is a side path. The likely answer is the one tied to the attempted rape acquittal.',
       difficulty = 2,
       metadata = '{"source_file":"CQ14625.md","source_question_id":"14625","variant_slug":"private_retreat_felony_murder","batch":"cq-updated-copy-2026-06-20","outline_code":"71040300","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"A defendant was acquitted of the felony predicate but convicted of assault. The victim later died. Can the state try him for felony murder using the acquitted felony as the predicate?","review_truth":"Later death can permit a murder prosecution, but felony murder cannot be built on a felony predicate the defendant was already acquitted of committing.","dominant_trap":null,"anchor_card":{"card_id":"REM-CRIM-DJ-PREDICATE-01","title":"Later Death vs Acquitted Predicate","signal":"Victim dies after first trial; later felony-murder charge follows.","student_move":"Ask what felony the murder theory must prove.","tiny_rule":"Later death is not a free pass to relitigate an acquitted predicate.","trap":"Choosing the later-death/no-murder-jeopardy answer without checking the predicate.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CRIMINAL-ACQUITTED-PREDICATE-01","statement":"A later death may make a homicide prosecution possible, but felony murder cannot be built on a predicate felony of which the defendant was already acquitted.","type":"distinction","trigger":"later death + felony murder + prior acquittal of alleged predicate felony","authority":"Ashe v. Swenson; Diaz v. United States","last_minute_review":true}],"silver_keys":[{"id":"SK-CRIMINAL-LATER-DEATH-PREDICATE-01","statement":"When later death appears, do not stop at the death timing. Split the answer array by the predicate the new murder theory must prove.","type":"answer_array","trigger":"one answer points to acquitted attempted rape; one answer points to later death","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"answer_array","target_skill":"predicate split","prompt":"One answer points to an acquitted felony; another points to later death. Which fact do you check first for felony murder?","answer":"The felony predicate."},{"drill_type":"gold_key_recall","target_skill":"later death vs predicate acquittal","prompt":"Victim dies after first trial. What does that allow, and what does it not allow?","answer":"It may allow homicide prosecution, but not felony murder based on an acquitted predicate."},{"drill_type":"wrong_element_cut","target_skill":"wrong count detection","prompt":"The prior trial produced an attempted-rape acquittal and assault conviction. Which count matters for felony murder?","answer":"The felony predicate: attempted rape."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '31b81726-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '14625_private_retreat_felony_murder'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '5789d1d77959884197af253c100ccc57f9b93f485b725cb8ba4258d38029476d'
   AND SHA2(COALESCE(question_stem, ''), 256) = '2f946ee2bcc2e56bdb05a753f8338298892c92baedcc3914ef14efa004434aee'
   AND SHA2(COALESCE(call_of_question, ''), 256) = 'cc140cec9a80942715be74734f174913c091a161471f9291e10841638aa86fd7';
UPDATE answer_choices
   SET choice_text = 'correct, because he was acquitted of the attempted rape charge.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'A is correct. The prosecution may not build the felony-murder charge on the attempted rape because Timothy was already acquitted of that attempted rape.

Gold Key: A later death can make a homicide charge possible, but it does not erase an acquittal on the felony predicate. If felony murder depends on a predicate felony the jury already rejected, Double Jeopardy / issue preclusion blocks relitigating that predicate.

Silver Key: Do not stop at “the victim died later.” Split the answer array by the predicate: attempted rape acquittal, assault conviction, or later-death timing. The answer tied to the acquitted felony predicate wins.',
       future_cue = NULL,
       remediation_id = 'REM-CRIM-DJ-PREDICATE-01'
 WHERE question_id = '31b81726-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'cf258b7d01b8e157f68e13d33bcb9a5b184bdfa0a2d77b2722f5f1491bd1d371'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'correct, because he was convicted of the assault charge.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["later_death_always_allows_murder_trial","assault_conviction_controls_double_jeopardy","felony_murder_predicate_ignored"]',
       why_attractive = 'Student sees prior conviction and thinks prior punishment triggers double jeopardy.',
       why_wrong_or_correct = 'Assault conviction is not the dispositive predicate-acquittal fact.',
       future_cue = 'Ask which prior count the felony-murder theory must prove.',
       remediation_id = 'REM-CRIM-DJ-PREDICATE-01'
 WHERE question_id = '31b81726-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '0fc6281e9537b66de16650914422471db41b8e01a625a5a24e7e4619c9ac2ed2'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'incorrect, because Lydia had not died at the time of the first trial and he was not placed in jeopardy for murder.',
       is_correct = 0,
       forensic_tags = '["bait_doctrine","wrong_frame"]',
       misconception_tags = '["later_death_always_allows_murder_trial","assault_conviction_controls_double_jeopardy","felony_murder_predicate_ignored"]',
       why_attractive = 'Student knows the victim had not died at the first trial and stops at the later-death homicide rule.',
       why_wrong_or_correct = 'Later-death homicide rule is the adjacent trap; it does not allow relitigation of the acquitted predicate.',
       future_cue = 'Apply the Gold Key: later death does not allow relitigating an acquitted predicate.',
       remediation_id = 'REM-CRIM-DJ-PREDICATE-01'
 WHERE question_id = '31b81726-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'cf37b5bb64c4866f7efd4c3eada5a36975db70600382b0c2d83dfa72c8b4b484'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'incorrect, because he was convicted of the assault charge.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["later_death_always_allows_murder_trial","assault_conviction_controls_double_jeopardy","felony_murder_predicate_ignored"]',
       why_attractive = 'Student treats the assault conviction as permission to proceed and ignores the acquitted predicate.',
       why_wrong_or_correct = 'Assault conviction is the wrong count and does not answer the attempted-rape predicate problem.',
       future_cue = 'Separate assault conviction from attempted rape acquittal.',
       remediation_id = 'REM-CRIM-DJ-PREDICATE-01'
 WHERE question_id = '31b81726-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'cfa1776c2ca7450c34f2af261e7a3070987bdcb49ddf061a6386b64b24e4acf1'
   AND is_correct = 0;

-- CQ14630.md -> 14630_fellowship_hall_white_powder (31b85c52-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CRIMINAL_LAW',
       topic = 'Criminal Law',
       subtopic = 'General Principles',
       tension_point = 'Peter''s knowledge of fake powder vs Lydia''s belief that it was cocaine',
       fact_pattern = 'At a weekend Christian law-school retreat, Lydia wanted to make some money, so she decided to sell cocaine. She asked Peter, who was reputed to have access to illegal drugs, to supply her with cocaine so she could resell it. Peter agreed and sold Lydia a bag of white powder. Lydia then repackaged the white powder into smaller containers and sold one to Barnabas, an undercover police officer, who promptly arrested Lydia. Lydia immediately confessed and said that Peter was her supplier. Upon examination, the white powder was found not to be cocaine or any type of illegal substance.

If Peter knew the white powder was not cocaine but Lydia believed it was, which of the following is correct?',
       question_stem = 'At a weekend Christian law-school retreat, Lydia wanted to make some money, so she decided to sell cocaine. She asked Peter, who was reputed to have access to illegal drugs, to supply her with cocaine so she could resell it. Peter agreed and sold Lydia a bag of white powder. Lydia then repackaged the white powder into smaller containers and sold one to Barnabas, an undercover police officer, who promptly arrested Lydia. Lydia immediately confessed and said that Peter was her supplier. Upon examination, the white powder was found not to be cocaine or any type of illegal substance.

If Peter knew the white powder was not cocaine but Lydia believed it was, which of the following is correct?

Call: Which actor is guilty of attempting to sell cocaine?

Prediction: Peter is not guilty because he knew the powder was fake. Lydia is guilty if the attempt rule follows her belief instead of the actual chemical fact.',
       call_of_question = 'Call: Which actor is guilty of attempting to sell cocaine?

Prediction: Peter is not guilty because he knew the powder was fake. Lydia is guilty if the attempt rule follows her belief instead of the actual chemical fact.',
       difficulty = 2,
       metadata = '{"source_file":"CQ14630.md","source_question_id":"14630","variant_slug":"fellowship_hall_white_powder","batch":"cq-updated-copy-2026-06-20","outline_code":"71040300","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"Peter knows the powder is fake. Lydia believes it is cocaine and sells it as cocaine. The powder is not illegal. Who is guilty of attempted sale of cocaine?","review_truth":"Attempt follows criminal purpose plus substantial step; factual impossibility does not save the actor who believed the crime facts were real.","dominant_trap":null,"anchor_card":{"card_id":"CRIM-REM-ATTEMPT-FAKE-OBJECT-01","title":"Fake object, real criminal purpose","signal":"The object is fake, but the actor believed it was contraband.","student_move":"Split actors, then apply the attempt-impossibility Gold Key.","tiny_rule":"Belief plus substantial step can create attempt even when completion was factually impossible.","trap":"No real contraband means no attempt.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CRIM-ATTEMPT-IMPOSSIBILITY-01","statement":"For attempt, test the actor''s purpose and the facts as the actor believed them. Factual impossibility is no defense when the actor intended the target crime and took a substantial step.","type":"rule","trigger":"The object is fake, but one actor believed it was the illegal object.","authority":"Model Penal Code § 5.01(1)(c); United States v. Medina-Garcia, 918 F.2d 4 (1st Cir. 1990).","last_minute_review":true}],"silver_keys":[{"id":"SK-CRIM-ACTOR-MATRIX-01","statement":"In a both/neither/A-only/B-only answer set, split the actors before applying doctrine. Map each actor''s belief to the matrix cell.","type":"answer_array","trigger":"Choices distribute guilt across two named actors.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"matrix_mapping","target_skill":"actor-specific liability","prompt":"Actor 1 knows the powder is fake. Actor 2 believes it is cocaine and sells it. Which actor can be guilty of attempt?","answer":"Actor 2 only."},{"drill_type":"gold_key_recall","target_skill":"factual impossibility","prompt":"The object is fake, but the defendant believed it was contraband and took a substantial step. Defense?","answer":"No. Factual impossibility is no defense to attempt."},{"drill_type":"trap_recovery","target_skill":"actual-fact trap","prompt":"Why is ''neither guilty because the powder was fake'' a trap?","answer":"It ignores that attempt follows the actor''s belief and purpose."},{"drill_type":"compare_actors","target_skill":"mens rea split","prompt":"Supplier knows fake; buyer believes real. Which actor lacks target-crime intent?","answer":"Supplier."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '31b85c52-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '14630_fellowship_hall_white_powder'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = 'a9cfdb4c1c9ad64951f0a04828f5fadce211ce3957b9259146ce5ceb4630aba3'
   AND SHA2(COALESCE(question_stem, ''), 256) = 'f187b58db43eae77165c15d998d1a549537b621258c303c48de9686998da5e00'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '44c9893c29d13925cf45b39473ce92665581b2c55d24078c1ecf629c087ebcb6';
UPDATE answer_choices
   SET choice_text = 'Both Peter and Lydia are guilty of attempting to sell cocaine.',
       is_correct = 0,
       forensic_tags = '["half_truth"]',
       misconception_tags = '["no_actual_contraband_no_crime","supplier_automatically_guilty","actual_facts_over_actor_belief"]',
       why_attractive = 'Students see Lydia''s guilt and overextend it to Peter.',
       why_wrong_or_correct = 'Overincludes Peter; Lydia-guilty side is right, Peter-guilty side is wrong.',
       future_cue = 'Test Peter and Lydia separately.',
       remediation_id = 'CRIM-REM-ATTEMPT-FAKE-OBJECT-01'
 WHERE question_id = '31b85c52-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '3b8c69cae2911c9d4dc2b7ab0c663b1cdac41de4905c93528bde316c0649416b'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Neither Peter nor Lydia is guilty of attempting to sell cocaine.',
       is_correct = 0,
       forensic_tags = '["half_truth","wrong_frame"]',
       misconception_tags = '["no_actual_contraband_no_crime","supplier_automatically_guilty","actual_facts_over_actor_belief"]',
       why_attractive = 'Students stop at the actual fact that the powder was not cocaine.',
       why_wrong_or_correct = 'Treats fake powder as ending the attempt question for Lydia.',
       future_cue = 'Ask whether Lydia''s conduct would be criminal if the facts were as she believed.',
       remediation_id = 'CRIM-REM-ATTEMPT-FAKE-OBJECT-01'
 WHERE question_id = '31b85c52-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '3f00392df64eb95d9bd60a7a402317d0956390af87788489bce7102b69726665'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Peter is guilty of attempting to sell cocaine, but Lydia is not.',
       is_correct = 0,
       forensic_tags = '["backwards","wrong_frame"]',
       misconception_tags = '["no_actual_contraband_no_crime","supplier_automatically_guilty","actual_facts_over_actor_belief"]',
       why_attractive = 'Students focus on Peter as supplier and miss that Lydia is the actor who believed the powder was cocaine.',
       why_wrong_or_correct = 'Reverses the actor-belief facts.',
       future_cue = 'Write: Peter knew fake; Lydia believed cocaine.',
       remediation_id = 'CRIM-REM-ATTEMPT-FAKE-OBJECT-01'
 WHERE question_id = '31b85c52-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'ec25449562946f46138a843c8bb7bc26d8ce0afd9dc42da78f78ddf8f63b6c6c'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Peter is not guilty of attempting to sell cocaine, but Lydia is.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'D is correct.

Peter is not guilty because he knew the powder was not cocaine. He did not intend to sell cocaine. Lydia is guilty because she believed the powder was cocaine, repackaged it, and sold it as cocaine to Barnabas.

Gold Key: Attempt follows the actor’s criminal purpose and the facts as the actor believes them to be. Factual impossibility is no defense. Lydia’s mistake about the powder does not save her.

Silver Key: This is a 2×2 actor-liability matrix. Do not ask “was the powder real?” first. Split the actors: Peter knew fake; Lydia believed real.',
       future_cue = NULL,
       remediation_id = 'CRIM-REM-ATTEMPT-FAKE-OBJECT-01'
 WHERE question_id = '31b85c52-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = '66db3304588413d29ef08a4bc4c4c96e4a2a934db67a9a63a4188e553f82e2a5'
   AND is_correct = 1;

-- CQ14635.md -> 14635_barnabas_aspirin_capsule (31b9130c-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CRIMINAL_LAW',
       topic = 'Criminal Law',
       subtopic = 'General Principles',
       tension_point = 'drug effect vs involuntary ingestion',
       fact_pattern = 'Paul, a law student playing in a private Christian intramural basketball league, was charged with battery, defined as at common law. At trial, a toxicology expert testified for the defense that Paul was under the influence of a performance-enhancing stimulant at the time he struck Stephen during the game and that he would not have done so had he not been so influenced. Paul asked for an instruction to the effect that if the jury believed that he was influenced by the stimulant at the time of the crime and would not have committed it otherwise, it had to acquit him.

Which of the following circumstances would most aid Paul’s argument in favor of such an instruction?',
       question_stem = 'Paul, a law student playing in a private Christian intramural basketball league, was charged with battery, defined as at common law. At trial, a toxicology expert testified for the defense that Paul was under the influence of a performance-enhancing stimulant at the time he struck Stephen during the game and that he would not have done so had he not been so influenced. Paul asked for an instruction to the effect that if the jury believed that he was influenced by the stimulant at the time of the crime and would not have committed it otherwise, it had to acquit him.

Which of the following circumstances would most aid Paul’s argument in favor of such an instruction?

Call: Which circumstance most aids the defendant’s argument for the requested instruction?

Prediction: The best fact must do more than prove the drug caused the strike. The stem already gives that. The best fact must make the intoxication legally useful.',
       call_of_question = 'Call: Which circumstance most aids the defendant’s argument for the requested instruction?

Prediction: The best fact must do more than prove the drug caused the strike. The stem already gives that. The best fact must make the intoxication legally useful.',
       difficulty = 2,
       metadata = '{"source_file":"CQ14635.md","source_question_id":"14635","variant_slug":"barnabas_aspirin_capsule","batch":"cq-updated-copy-2026-06-20","outline_code":"73020300","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"Common-law battery defendant was drug-influenced and wants an intoxication acquittal instruction. Which fact helps most: addiction, tricked aspirin, taunting, or rage effect?","review_truth":"For general-intent battery, intoxication helps only if the fact changes voluntary intoxication into involuntary intoxication.","dominant_trap":null,"anchor_card":{"card_id":"CRIM-REM-INTOXICATION-SOURCE-NOT-EFFECT","title":"Source beats effect on intoxication instructions","signal":"The stem already says the drug influenced the defendant.","student_move":"Do not ask which fact proves stronger drug effect. Ask which fact makes the intoxication involuntary.","tiny_rule":"General intent plus intoxication: voluntary loses; involuntary can matter.","trap":"D feels best because it says uncontrollable rages.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CRIMINAL-INTOXICATION-GENERAL-INTENT-01","statement":"For a general-intent crime like common-law battery, voluntary intoxication does not excuse. The useful intoxication fact is involuntary ingestion, such as being tricked into taking an intoxicant.","type":"distinction","trigger":"General-intent crime plus requested intoxication instruction.","authority":"Lawyer-confirmation only: common-law rule; MPC 2.08; Montana v. Egelhoff historical baseline.","last_minute_review":true}],"silver_keys":[{"id":"SK-CRIMINAL-INTOXICATION-AXIS-01","statement":"On intoxication-instruction questions, separate drug effect from drug entry. If the stem already gives effect, hunt for the fact that makes the ingestion involuntary.","type":"clash","trigger":"Choices split between rage/effect evidence and tricked-ingestion evidence.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"axis_sort","target_skill":"source_vs_effect","prompt":"Sort these facts: tricked aspirin, addiction, uncontrollable rage, taunting. Which fact changes drug entry rather than drug effect?","answer":"Tricked aspirin."},{"drill_type":"gold_key_recall","target_skill":"general_intent_intoxication","prompt":"For common-law battery, what intoxication fact matters most for an acquittal instruction?","answer":"Involuntary ingestion, not voluntary drug effect."},{"drill_type":"dominant_trap_recovery","target_skill":"wrong_element_cut","prompt":"Why is ''reasonable person may experience uncontrollable rages'' not enough?","answer":"It proves effect; the instruction needs involuntary intoxication."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '31b9130c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '14635_barnabas_aspirin_capsule'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '68b51b2e99bfa7f7b0aba772cf3d373f8481344fca1bca710ab8bd6727755d89'
   AND SHA2(COALESCE(question_stem, ''), 256) = '20ddf1e827021471862a328153dcc0cea2408a3019dd4428b64b1103f7e320c4'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '182a77d6714b17dbca02f196a9dabc0d4bf6b4fe1d9fd5992f643a7e825d6867';
UPDATE answer_choices
   SET choice_text = 'Evidence that Paul is addicted to this stimulant and has an overwhelming urge to consume it.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["voluntary_intoxication_excuses_general_intent","addiction_equals_involuntary","rage_effect_equals_instruction","taunting_is_a_defense"]',
       why_attractive = 'Addiction and overwhelming urge sound involuntary in ordinary language.',
       why_wrong_or_correct = 'Addiction and urge do not answer the involuntary-ingestion axis.',
       future_cue = 'Ask whether Paul knowingly consumed the stimulant.',
       remediation_id = 'CRIM-REM-INTOXICATION-SOURCE-NOT-EFFECT'
 WHERE question_id = '31b9130c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '497a0f183071d031a4b43665e37a0810d5948d834adeec61e7321c7053a3a825'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Evidence that Barnabas, Paul’s coach, gave him the capsule and told him it was only an aspirin.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'B is correct. The key move is not “the drug caused the act.” The stem already gives that. The key move is whether the intoxication was voluntary or involuntary.

Gold Key: For a general-intent crime like common-law battery, voluntary intoxication does not excuse. The helpful fact is the one showing involuntary intoxication: Paul was tricked into taking an intoxicant when Barnabas told him it was only aspirin.

Silver Key: Separate drug effect from drug entry. D proves a stronger effect. B changes the character of the ingestion.',
       future_cue = NULL,
       remediation_id = 'CRIM-REM-INTOXICATION-SOURCE-NOT-EFFECT'
 WHERE question_id = '31b9130c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'ff3075ad5eb890d6db323c7c56929bcc662508f423aa417bd039b06754f41a46'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'Evidence that Stephen taunted Paul about his use of the stimulant immediately before Paul struck him.',
       is_correct = 0,
       forensic_tags = '["misfit","wrong_frame"]',
       misconception_tags = '["voluntary_intoxication_excuses_general_intent","addiction_equals_involuntary","rage_effect_equals_instruction","taunting_is_a_defense"]',
       why_attractive = 'Taunting makes the strike feel morally explained.',
       why_wrong_or_correct = 'Taunting answers a provocation story, not the requested intoxication instruction.',
       future_cue = 'Restate the call: what helps the intoxication instruction?',
       remediation_id = 'CRIM-REM-INTOXICATION-SOURCE-NOT-EFFECT'
 WHERE question_id = '31b9130c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'b87606376ebf61570139fc94c7ace25fa43f53f7e8a0312fe6849987693523df'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Expert testimony that a reasonable person, on consuming this stimulant, may experience uncontrollable rages.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["voluntary_intoxication_excuses_general_intent","addiction_equals_involuntary","rage_effect_equals_instruction","taunting_is_a_defense"]',
       why_attractive = 'Uncontrollable rage directly matches the requested acquittal instruction and was the dominant wrong answer.',
       why_wrong_or_correct = 'Uncontrollable rage proves drug effect, not involuntary ingestion.',
       future_cue = 'Mark the stem fact that drug effect is already conceded; hunt for involuntary ingestion.',
       remediation_id = 'CRIM-REM-INTOXICATION-SOURCE-NOT-EFFECT'
 WHERE question_id = '31b9130c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = '5d107a7dfa0da50200aceccb912f650ff31b48ac992b8c098d26a0c9e9c973c9'
   AND is_correct = 0;

-- CQ14636.md -> 14636_bible_cafe_basement (31b95993-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CRIMINAL_LAW',
       topic = 'Criminal Law',
       subtopic = 'General Principles',
       tension_point = 'does the higher label survive defense and mens rea checks?',
       fact_pattern = 'Ruth, who had no place to sleep, pried open the locked side door to the basement storage room of Martha’s privately owned Bible-study café and fell asleep. She was awakened by Paul, a private security guard, who demanded that she leave. As Ruth was leaving, she cursed Paul. Angered, Paul began beating Ruth on the head with his flashlight. After the second blow, Ruth grabbed a fire extinguisher from the wall and sprayed Paul in the face, causing him to lose the sight in one eye.

The jurisdiction defines aggravated assault as assault with intent to cause serious bodily injury.

What is the most serious offense for which Ruth could properly be convicted?',
       question_stem = 'Ruth, who had no place to sleep, pried open the locked side door to the basement storage room of Martha’s privately owned Bible-study café and fell asleep. She was awakened by Paul, a private security guard, who demanded that she leave. As Ruth was leaving, she cursed Paul. Angered, Paul began beating Ruth on the head with his flashlight. After the second blow, Ruth grabbed a fire extinguisher from the wall and sprayed Paul in the face, causing him to lose the sight in one eye.

The jurisdiction defines aggravated assault as assault with intent to cause serious bodily injury.

What is the most serious offense for which Ruth could properly be convicted?

Call: What is the most serious offense Ruth could properly be convicted of?

Prediction: Start with the highest offense labels, but do not let the injury fact decide alone. Check whether the assault labels survive self-defense. Check whether the entry label survives burglary intent. If both higher branches fall, trespass remains.',
       call_of_question = 'Call: What is the most serious offense Ruth could properly be convicted of?

Prediction: Start with the highest offense labels, but do not let the injury fact decide alone. Check whether the assault labels survive self-defense. Check whether the entry label survives burglary intent. If both higher branches fall, trespass remains.',
       difficulty = 2,
       metadata = '{"source_file":"CQ14636.md","source_question_id":"14636","variant_slug":"bible_cafe_basement","batch":"cq-updated-copy-2026-06-20","outline_code":"72060201","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"Ruth unlawfully entered a private café basement to sleep. While leaving, she was beaten by a guard and sprayed him to stop the attack, seriously injuring him. Most serious offense?","review_truth":"A trespasser may still defend herself against an unlawful beating; if self-defense removes assault and entry lacked burglary intent, trespass is the most serious surviving offense.","dominant_trap":null,"anchor_card":{"card_id":"REM-CRIM-DEFENSE-BEFORE-SEVERITY-01","title":"Defense before severity","signal":"A serious injury appears, but the stem also shows the defendant was under attack.","student_move":"Before selecting the biggest crime label, ask whether a defense or missing intent knocks it out.","tiny_rule":"Most serious means most serious surviving offense, not worst harm.","trap":"serious injury overpowers self-defense and intent checks","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CRIM-SELF-DEFENSE-01","statement":"A non-aggressor who reasonably uses necessary force against an imminent unlawful attack is justified; that defensive force cannot be the basis for assault or aggravated assault.","type":"exception","trigger":"Defendant responds while being beaten with a flashlight.","authority":"lawyer_confirmation_only","last_minute_review":true},{"id":"GK-CRIM-BURGLARY-INTENT-01","statement":"Burglary requires the required crime-intent at entry; forced entry merely to sleep supports trespass, not burglary.","type":"distinction","trigger":"Entry fact plus sleep fact; no felony/theft-purpose fact.","authority":"lawyer_confirmation_only","last_minute_review":true}],"silver_keys":[{"id":"SK-CRIM-MOST-SERIOUS-RESIDUAL-01","statement":"For a most-serious-offense call, cut every higher label defeated by a defense or missing element, then choose the highest offense left.","type":"call_focus","trigger":"Answer choices are bare offense labels from serious to lesser.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"gold_key_recall","target_skill":"self-defense before assault label","prompt":"A trespasser is being unlawfully beaten and uses reasonable force to stop the attack. Can the force support assault?","answer":"No, if justified self-defense applies."},{"drill_type":"gold_key_recall","target_skill":"burglary intent at entry","prompt":"A person breaks into a private basement only to sleep. Burglary or trespass?","answer":"Trespass, absent the required intent to commit a felony/theft or other qualifying crime inside."},{"drill_type":"answer_array","target_skill":"most serious surviving offense","prompt":"Choices are aggravated assault, burglary, assault, trespass. Assault labels are defeated by self-defense; burglary lacks intent. Pick the most serious surviving offense.","answer":"Trespass."},{"drill_type":"trap_spotting","target_skill":"serious-injury bait","prompt":"The victim loses sight in one eye, but the defendant used force while being beaten. What is the trap?","answer":"Picking aggravated assault before checking self-defense."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '31b95993-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '14636_bible_cafe_basement'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = 'b55f172d86d53461a39109e444f9dca12434dc1b81da24ba85be8565ab76b716'
   AND SHA2(COALESCE(question_stem, ''), 256) = 'b8997a5c7ed8dc389fc86066002a49ac3b63049b5aa6bf34f788e26adc826f98'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '329e3987e913d169ee561c407c21b5a00ced6578917b1b45db49b188e00b54f7';
UPDATE answer_choices
   SET choice_text = 'Aggravated assault.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["trespasser_has_no_self_defense","injury_equals_aggravated_assault","breaking_in_equals_burglary","curse_justifies_beating"]',
       why_attractive = 'The eye injury looks like serious bodily injury and the stem defines aggravated assault.',
       why_wrong_or_correct = 'Serious-injury label skips the self-defense trigger.',
       future_cue = 'Apply GK-CRIM-SELF-DEFENSE-01, then use SK-CRIM-MOST-SERIOUS-RESIDUAL-01.',
       remediation_id = 'REM-CRIM-DEFENSE-BEFORE-SEVERITY-01'
 WHERE question_id = '31b95993-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'c10c31eede0fe8a6250c58025a0379ab0b090807aee9bf516651714d511f3500'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Burglary.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["trespasser_has_no_self_defense","injury_equals_aggravated_assault","breaking_in_equals_burglary","curse_justifies_beating"]',
       why_attractive = 'Ruth pried open a locked side door and entered a basement.',
       why_wrong_or_correct = 'Forced-entry label skips the missing entry-intent fact.',
       future_cue = 'Apply GK-CRIM-BURGLARY-INTENT-01.',
       remediation_id = 'REM-CRIM-DEFENSE-BEFORE-SEVERITY-01'
 WHERE question_id = '31b95993-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '6c70a0a37da303af83bffe559e3e3482696219ba1831464634cde85eb82daf9d'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Assault.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["trespasser_has_no_self_defense","injury_equals_aggravated_assault","breaking_in_equals_burglary","curse_justifies_beating"]',
       why_attractive = 'Ruth intentionally sprayed Paul with the extinguisher.',
       why_wrong_or_correct = 'Spray-force label skips the self-defense trigger.',
       future_cue = 'Apply GK-CRIM-SELF-DEFENSE-01.',
       remediation_id = 'REM-CRIM-DEFENSE-BEFORE-SEVERITY-01'
 WHERE question_id = '31b95993-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'd81ddd30735e06c16cd345ec4435aecf1c7650edf82c80738e80a4c982b5772f'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Trespass.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'D is correct. Ruth can properly be convicted of trespass because she intentionally entered Martha’s private basement storage room without permission. The assault-family charges drop out because Ruth used force only after Paul was beating her on the head with a flashlight.

Gold Key: Self-defense wipes out assault labels when the force is reasonably used against an imminent unlawful attack.
Gold Key: Burglary needs the entry-intent crime layer; breaking in merely to sleep leaves trespass, not burglary.
Silver Key: In a “most serious offense” call, do not chase the biggest injury first. Cut the higher crimes defeated by a defense or missing element, then take the highest surviving offense.',
       future_cue = NULL,
       remediation_id = 'REM-CRIM-DEFENSE-BEFORE-SEVERITY-01'
 WHERE question_id = '31b95993-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'f9e218454f9b37b84a49fc6e563fd5bd00ecdd8796238212e9dfe696603f521b'
   AND is_correct = 1;

-- CQ14638.md -> 14638_galilee_garments (31b9dd8c-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CRIMINAL_LAW',
       topic = 'Criminal Law',
       subtopic = 'General Principles',
       tension_point = 'personal culpability / personal act vs responsible corporate officer control position',
       fact_pattern = 'Peter was the general manager and chief executive officer of Galilee Garments, Inc., a private company that made Bible-pageant robes and school uniforms. Peter delegated all operational decision making to Paul, the supervising manager of the company’s sewing shop.

The child labor laws in the jurisdiction provide: “It is a violation of the law for one to employ a person under the age of 17 years for full-time labor.”

Without Peter’s knowledge, Paul hired several 15- and 16-year-olds to work in the sewing shop full time. Paul did not ask their ages, and the teenagers did not disclose them. Paul could have discovered their ages easily by asking for identification, but he did not do so because he was not aware of the law and believed that company policy was to hire young people.

If the statute is interpreted to create strict liability and Peter is convicted of violating it, his contention that his conviction would violate the federal Constitution is:',
       question_stem = 'Peter was the general manager and chief executive officer of Galilee Garments, Inc., a private company that made Bible-pageant robes and school uniforms. Peter delegated all operational decision making to Paul, the supervising manager of the company’s sewing shop.

The child labor laws in the jurisdiction provide: “It is a violation of the law for one to employ a person under the age of 17 years for full-time labor.”

Without Peter’s knowledge, Paul hired several 15- and 16-year-olds to work in the sewing shop full time. Paul did not ask their ages, and the teenagers did not disclose them. Paul could have discovered their ages easily by asking for identification, but he did not do so because he was not aware of the law and believed that company policy was to hire young people.

If the statute is interpreted to create strict liability and Peter is convicted of violating it, his contention that his conviction would violate the federal Constitution is:

Call: Is Peter’s constitutional contention correct or incorrect?

Prediction: The contention is incorrect if Peter’s control/delegation position is enough to connect him to the strict-liability regulatory violation.

Adjacent-call trap: Do not answer whether Paul is guilty. Do not answer whether the company is the formal employer. The call is Peter’s constitutional argument.',
       call_of_question = 'Call: Is Peter’s constitutional contention correct or incorrect?

Prediction: The contention is incorrect if Peter’s control/delegation position is enough to connect him to the strict-liability regulatory violation.

Adjacent-call trap: Do not answer whether Paul is guilty. Do not answer whether the company is the formal employer. The call is Peter’s constitutional argument.',
       difficulty = 2,
       metadata = '{"source_file":"CQ14638.md","source_question_id":"14638","variant_slug":"galilee_garments","batch":"cq-updated-copy-2026-06-20","outline_code":"72010302","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"A CEO delegated hiring control to a shop supervisor. The supervisor unknowingly hired underage full-time workers in violation of a strict-liability child-labor statute. Does convicting the CEO violate the Constitution?","review_truth":"For strict-liability public-welfare offenses, the control-position fact matters: a responsible corporate officer cannot escape liability merely by delegating the prohibited operation.","dominant_trap":null,"anchor_card":{"card_id":"REM-CRIMINAL-RCO-01","title":"Control beats personal-act framing in public-welfare officer questions.","signal":"CEO/general manager delegated operations; strict-liability regulatory statute.","student_move":"Ask who had responsibility/control, not only who physically did the prohibited act.","tiny_rule":"Responsible-control position can carry liability for strict regulatory offenses.","trap":"The personal criminal-liability slogan is powerful but incomplete in the public-welfare officer frame.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CRIMINAL-RCO-01","statement":"For a strict-liability public-welfare regulatory offense, a responsible corporate officer can be convicted when he stood in a responsible relation to, and had power to prevent or correct, the violation; personal knowledge or personal performance of the prohibited act is not required.","type":"rule","trigger":"corporate officer + delegated operations + strict-liability regulatory statute","authority":"Lawyer-confirmation only: United States v. Park, 421 U.S. 658; United States v. Dotterweich, 320 U.S. 277.","last_minute_review":true}],"silver_keys":[{"id":"SK-CRIMINAL-RCO-01","statement":"In a correct/incorrect-because array, test both the conclusion and the reason. A correct conclusion with an overbroad reason is still wrong.","type":"answer_array","trigger":"choices use ''Correct, because'' and ''Incorrect, because''","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"answer_array","target_skill":"correct conclusion / wrong reason","prompt":"Choice says: ''Incorrect, because regulatory offenses are never subject to due process limits.'' What is the C3 problem?","answer":"Right conclusion, broken reason; tiered_absolute / NOT_TRUE."},{"drill_type":"anchor_recall","target_skill":"responsible corporate officer Gold Key","prompt":"CEO delegates operations; subordinate violates strict regulatory statute. What fact do you check before personal-act objections?","answer":"Whether the CEO had responsible relation/control over the regulated operation."},{"drill_type":"clash_axis","target_skill":"personal culpability vs control position","prompt":"A and B say no personal act/formal employer; D says position to control. Name the axis.","answer":"Personal culpability / personal act vs responsible corporate officer control position."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '31b9dd8c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '14638_galilee_garments'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '37a1e5243f08f00afa3e19c41bac4f3048d4a58eb348b67738322e8059247394'
   AND SHA2(COALESCE(question_stem, ''), 256) = 'cbfdedeaaf956fdaa9836902049539b65c23e825ecd4a4d44273b5a7615ea48a'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '70b54991fbe4b5a178f7215f079d73efb9936194a8b245bfb2cff736617b4724';
UPDATE answer_choices
   SET choice_text = 'Correct, because it is a violation of due process to punish a person without a voluntary act.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["criminal_liability_always_requires_personal_act","corporate_employer_shields_officer","strict_liability_means_no_due_process_limits","delegation_eliminates_responsibility"]',
       why_attractive = 'Voluntary-act due process sounds fundamental and familiar.',
       why_wrong_or_correct = 'Focuses on personal voluntary act rather than the control/delegation fact that triggers responsible-officer liability.',
       future_cue = 'Circle CEO + delegated operations + strict liability; then recall responsible-control liability.',
       remediation_id = 'REM-CRIMINAL-RCO-01'
 WHERE question_id = '31b9dd8c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '3d1f8b2d78c8a3d90dbdd26e8ac9d46f2294e4e1e4ffb1e78de49f8935c0ce6d'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Correct, because criminal liability is personal and Galilee Garments, Inc., not Peter, is the employer of the minors.',
       is_correct = 0,
       forensic_tags = '["bait_doctrine","wrong_frame"]',
       misconception_tags = '["criminal_liability_always_requires_personal_act","corporate_employer_shields_officer","strict_liability_means_no_due_process_limits","delegation_eliminates_responsibility"]',
       why_attractive = 'Criminal liability is personal is a strong ordinary-criminal-law instinct.',
       why_wrong_or_correct = 'Uses ordinary personal-liability language in the wrong public-welfare responsible-officer context.',
       future_cue = 'Ask whether the answer is using the wrong frame for the regulatory offense.',
       remediation_id = 'REM-CRIMINAL-RCO-01'
 WHERE question_id = '31b9dd8c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '2cd08fce003ef622b38059f049386a67df7516ff920c6d8c057fa93b9ffcd2bf'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Incorrect, because regulatory offenses are not subject to due process limitations.',
       is_correct = 0,
       forensic_tags = '["tiered_absolute"]',
       misconception_tags = '["criminal_liability_always_requires_personal_act","corporate_employer_shields_officer","strict_liability_means_no_due_process_limits","delegation_eliminates_responsibility"]',
       why_attractive = 'The conclusion is right, so students may stop reading before checking the reason.',
       why_wrong_or_correct = 'Correct conclusion, but the because-clause overclaims that regulatory offenses are not subject to due process limitations.',
       future_cue = 'Test both halves: conclusion and reason. Cut overbroad reasons.',
       remediation_id = 'REM-CRIMINAL-RCO-01'
 WHERE question_id = '31b9dd8c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = '33f8d89de016c38d4c4b9678b24f80b9bfb96ba347896ddf262d76dfb65d0988'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Incorrect, because Peter was in a position to exercise control over the hiring of employees for Galilee Garments, Inc.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'D is correct.

Gold Key: In a strict-liability public-welfare regulatory offense, a responsible corporate officer may be convicted when he stood in a responsible relation to the violation and had authority to prevent or correct it. Personal knowledge and personal performance of the hiring act are not required.

Silver Key: This answer array is a conclusion-plus-reason trap. C reaches the right bottom-line conclusion — “incorrect” — but gives a broken reason. D gives the right conclusion and the right control-position reason.

Peter was not a random outsider. He was the general manager and CEO. He delegated operational decision making to Paul. The facts place Peter in the control chain for hiring. That control position is the legal hinge. His constitutional argument fails.',
       future_cue = NULL,
       remediation_id = 'REM-CRIMINAL-RCO-01'
 WHERE question_id = '31b9dd8c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'd26e29f082d3030d822d818a7265fea9833fa79076dffdf3672da1143acd4f34'
   AND is_correct = 1;

-- CQ14640.md -> 14640_church_preschool_custody (31ba58b9-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CRIMINAL_LAW',
       topic = 'Criminal Law',
       subtopic = 'General Principles',
       tension_point = 'Is the advice being used as a freestanding defense or as evidence that the required knowledge is absent?',
       fact_pattern = 'State A has a kidnapping statute that makes it a crime for a person, including a parent, to “take a child from the custody of the child’s custodial parent, knowing he has no privilege to do so.”

After a bitter custody dispute, Mary was awarded custody of her daughter, Ruth. Ruth’s father, Paul, later moved to State B, where he brought an action to obtain custody of Ruth. A local judge in State B awarded Paul custody. Paul’s attorney, Barnabas, incorrectly advised him that, under the State B award, Paul was entitled to take Ruth away from Mary.

Paul drove to State A, picked Ruth up from her private preschool after a Bible-story costume parade, and took her back to State B. He was indicted for kidnapping in State A, extradited from State B, and tried. At trial, Paul testified that he relied on Barnabas’s advice in taking Ruth and that, at the time, he believed his conduct was lawful.

If the jury believes Paul’s testimony, Paul should be:

Source row: Q14640 is a Criminal Law / General Principles item with correct answer B; the row’s official explanation states that the statute requires taking the child while “knowing he has no privilege,” and that the defendant’s belief meant he lacked the required mens rea.',
       question_stem = 'State A has a kidnapping statute that makes it a crime for a person, including a parent, to “take a child from the custody of the child’s custodial parent, knowing he has no privilege to do so.”

After a bitter custody dispute, Mary was awarded custody of her daughter, Ruth. Ruth’s father, Paul, later moved to State B, where he brought an action to obtain custody of Ruth. A local judge in State B awarded Paul custody. Paul’s attorney, Barnabas, incorrectly advised him that, under the State B award, Paul was entitled to take Ruth away from Mary.

Paul drove to State A, picked Ruth up from her private preschool after a Bible-story costume parade, and took her back to State B. He was indicted for kidnapping in State A, extradited from State B, and tried. At trial, Paul testified that he relied on Barnabas’s advice in taking Ruth and that, at the time, he believed his conduct was lawful.

If the jury believes Paul’s testimony, Paul should be:

Source row: Q14640 is a Criminal Law / General Principles item with correct answer B; the row’s official explanation states that the statute requires taking the child while “knowing he has no privilege,” and that the defendant’s belief meant he lacked the required mens rea.

Call: If the jury believes Paul’s testimony, should Paul be acquitted or convicted?

Prediction: Acquitted, if his believed permission defeats the statute’s required knowledge.

Adjacent-call trap: Whether attorney advice is itself a defense.',
       call_of_question = 'Call: If the jury believes Paul’s testimony, should Paul be acquitted or convicted?

Prediction: Acquitted, if his believed permission defeats the statute’s required knowledge.

Adjacent-call trap: Whether attorney advice is itself a defense.',
       difficulty = 2,
       metadata = '{"source_file":"CQ14640.md","source_question_id":"14640","variant_slug":"church_preschool_custody","batch":"cq-updated-copy-2026-06-20","outline_code":"73020500","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"A parent takes a child after a lawyer incorrectly says a custody order gives him permission. The statute requires taking the child knowing he has no privilege. If the jury believes he thought he had privilege, convict or acquit?","review_truth":"Attorney advice is not a magic defense, but reliance-created belief can negate a required knowledge element.","dominant_trap":null,"anchor_card":{"card_id":"CRIM-REM-MENS-REA-ADVICE-01","title":"Advice is not the defense; belief may defeat the element.","signal":"Statute says knowing / belief / purpose, and facts include advice from a lawyer or official-looking order.","student_move":"Ask whether the advice is offered as a freestanding defense or as evidence negating the mental state.","tiny_rule":"Mens rea answer beats advice-of-counsel answer when the statute itself requires knowledge.","trap":"Convicting because private attorney advice is not a defense.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CRIMINAL-MENS-REA-COUNSEL-01","statement":"Private attorney advice is not a freestanding mistake-of-law defense, but the belief produced by that advice can negate a required mental state such as knowing lack of privilege.","type":"distinction","trigger":"Statute contains a knowledge element and facts show attorney advice or official-looking order reliance.","authority":null,"last_minute_review":true}],"silver_keys":[{"id":"SK-CRIMINAL-STATUTE-WORD-01","statement":"When the stem gives a statute with a mental-state word, match the credited answer to that word before chasing the story noun.","type":"trap_spotting","trigger":"Answer choices split between advice-of-attorney language and mental-element language.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"statute_word_match","target_skill":"mental-state trigger extraction","prompt":"A statute requires taking property knowing it is stolen. Defendant believes it is abandoned. Which answer type is strongest: mistake-of-law defense or lack of knowledge?","answer":"Lack of knowledge."},{"drill_type":"because_answer_reason_check","target_skill":"right result wrong reason","prompt":"An answer says ''acquitted because he spoke to a lawyer.'' What word in the statute must you check before accepting that reason?","answer":"The required mental-state word."},{"drill_type":"wrong_standard_cut","target_skill":"subjective vs objective mental state","prompt":"Statute says ''knowing.'' Answer says ''reasonable person would have known.'' What is the cut?","answer":"Wrong standard."},{"drill_type":"bait_doctrine_recovery","target_skill":"advice-of-counsel trap","prompt":"Why can ''reliance on an attorney''s advice is not a defense'' still be the wrong answer?","answer":"Because the advice may negate the required mens rea."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '31ba58b9-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '14640_church_preschool_custody'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '916b54eb182cba53cb40dda37816dd2b10ea480734b60145709dd6bb10266a8b'
   AND SHA2(COALESCE(question_stem, ''), 256) = '5265c9ac1c32226110912b3be9ce1a8d41ec0f877678e3d533593a0ba9a84c6e'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '426d4e35fbf2b0b901f1047909689b33865ac02d4a0bc66ee690bd7189d5466d';
UPDATE answer_choices
   SET choice_text = 'Acquitted, because he acted on the advice of an attorney.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["mistake_of_law_never_matters","attorney_advice_is_complete_defense","reasonable_person_standard_controls_all_knowledge_questions"]',
       why_attractive = 'It reaches the right acquittal result and uses the most memorable fact: lawyer advice.',
       why_wrong_or_correct = 'Right result but wrong reason: attorney advice is not the defense; missing mens rea is.',
       future_cue = 'Ask whether the reason uses the statute''s mental-state word.',
       remediation_id = 'CRIM-REM-MENS-REA-ADVICE-01'
 WHERE question_id = '31ba58b9-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'fc4125d57e88a3fb87a11a5bf13af5a57a79c83801d953c0ad4164c94a8f6531'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Acquitted, because he lacked a necessary mental element of the crime.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'B is correct. The statute itself gives the exam-day path: the accused must take the child while knowing he has no privilege. If the jury believes Paul, then Paul believed the State B order gave him privilege to take Ruth. That belief means he lacked the required mental element.

Gold Key: Private attorney advice is not itself a magic defense. But facts showing reliance on that advice can still matter if they negate the mental state the statute requires.

Silver Key: Do not stop at the story noun “attorney.” Match the answer to the statute word: knowing.',
       future_cue = NULL,
       remediation_id = 'CRIM-REM-MENS-REA-ADVICE-01'
 WHERE question_id = '31ba58b9-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '1e1a8f87da6ae578e9e1c44870b46e6cfe39f92cf407eef3b54ecf4c77c69e79'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'Convicted, because reliance on an attorney’s advice is not a defense.',
       is_correct = 0,
       forensic_tags = '["bait_doctrine","wrong_frame"]',
       misconception_tags = '["mistake_of_law_never_matters","attorney_advice_is_complete_defense","reasonable_person_standard_controls_all_knowledge_questions"]',
       why_attractive = 'It states the familiar rule that attorney advice is not itself a defense.',
       why_wrong_or_correct = 'True neighboring rule about attorney advice, but wrong call because the statute asks whether Paul knew he lacked privilege.',
       future_cue = 'Ask whether the advice is being offered as a defense or as evidence negating mens rea.',
       remediation_id = 'CRIM-REM-MENS-REA-ADVICE-01'
 WHERE question_id = '31ba58b9-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = '0db8b0a20e404b8f1b1e67d855319be94260b3577c6baac091bfed2cb051d4dd'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Convicted, provided a reasonable person would have known that the attorney’s advice was erroneous.',
       is_correct = 0,
       forensic_tags = '["flat_misstatement"]',
       misconception_tags = '["mistake_of_law_never_matters","attorney_advice_is_complete_defense","reasonable_person_standard_controls_all_knowledge_questions"]',
       why_attractive = 'It sounds like a careful negligence-style standard.',
       why_wrong_or_correct = 'Uses objective reasonable-person standard where the statute requires subjective knowledge.',
       future_cue = 'Replace reasonable-person wording with the statute''s actual word: knowing.',
       remediation_id = 'CRIM-REM-MENS-REA-ADVICE-01'
 WHERE question_id = '31ba58b9-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = '6d6da3a8b36f5389cf614a6241d0f27f2745fed808c547c27cf6cd0802cd78cf'
   AND is_correct = 0;

-- CQ14641.md -> 14641_bible_trivia_attempt (31ba958a-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CRIMINAL_LAW',
       topic = 'Criminal Law',
       subtopic = 'General Principles',
       tension_point = 'completed strict-liability statutory rape vs attempted statutory rape requiring age intent under supplied exam rule',
       fact_pattern = 'At a Christian coffeehouse after a Bible-trivia night, Esther told Daniel that she wanted to have sexual intercourse with him and that he should come to her apartment that night at 7 p.m. After Daniel arrived, he and Esther went into the bedroom. As Daniel began to unbutton Esther’s shirt, Esther said that she had changed her mind. Daniel tried to persuade her for ten minutes, but after her repeated refusals, he left the apartment.

Unknown to Daniel, Esther was 15 years old. Because Esther appeared older, Daniel believed her to be about 18 years old.

A statute in the jurisdiction provides: “A person commits rape in the second degree if he has sexual intercourse with a girl, not his wife, who is under the age of 16 years.”

If Daniel is charged with attempting to violate this statute, he is:',
       question_stem = 'At a Christian coffeehouse after a Bible-trivia night, Esther told Daniel that she wanted to have sexual intercourse with him and that he should come to her apartment that night at 7 p.m. After Daniel arrived, he and Esther went into the bedroom. As Daniel began to unbutton Esther’s shirt, Esther said that she had changed her mind. Daniel tried to persuade her for ten minutes, but after her repeated refusals, he left the apartment.

Unknown to Daniel, Esther was 15 years old. Because Esther appeared older, Daniel believed her to be about 18 years old.

A statute in the jurisdiction provides: “A person commits rape in the second degree if he has sexual intercourse with a girl, not his wife, who is under the age of 16 years.”

If Daniel is charged with attempting to violate this statute, he is:

The call asks whether Daniel is guilty of attempting to violate the statute. It does not ask whether completed statutory rape occurred.

Prediction after the call: the answer must address attempt. That means act plus intent. The likely trap is an answer that treats the completed offense’s age rule as enough.',
       call_of_question = 'The call asks whether Daniel is guilty of attempting to violate the statute. It does not ask whether completed statutory rape occurred.

Prediction after the call: the answer must address attempt. That means act plus intent. The likely trap is an answer that treats the completed offense’s age rule as enough.',
       difficulty = 2,
       metadata = '{"source_file":"CQ14641.md","source_question_id":"14641","variant_slug":"14641","batch":"cq-updated-copy-2026-06-20","outline_code":"71040300","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"A defendant begins but does not complete intercourse with a 15-year-old, reasonably believing she is 18. Charged with attempted statutory rape under a statute barring intercourse with girls under 16. Guilty?","review_truth":"Under this item’s supplied exam rule, attempt changes the game: strict liability for completed statutory rape does not automatically supply the intent needed for attempted statutory rape.","dominant_trap":null,"anchor_card":{"card_id":"REM-CRIMINAL-ATTEMPT-STRICT-LIABILITY-01","title":"Attempt changes the completed-offense shortcut","signal":"The target offense is strict liability, but the charge is attempt.","student_move":"Circle attempt. Then ask what intent the attempt answer requires.","tiny_rule":"Under the supplied exam rule, no underage intent defeats attempted statutory rape.","trap":"Using completed-offense strict liability to answer attempt.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CRIMINAL-ATTEMPT-STRICT-LIABILITY-01","statement":"For this supplied MBE rule, completed statutory rape may be strict liability as to age, but attempted statutory rape requires intent to commit the target offense as charged, including the under-16 circumstance.","type":"distinction","trigger":"Call says attempting to violate a strict-liability age statute.","authority":"Lawyer-confirmation layer only; official key preserved; external split flagged.","last_minute_review":true}],"silver_keys":[{"id":"SK-CRIMINAL-ATTEMPT-CALL-01","statement":"When the call says attempt, do not answer the completed offense. First ask whether the answer addresses intent plus step.","type":"call_focus","trigger":"charged with attempting to violate this statute","authority":null,"last_minute_review":true},{"id":"SK-CRIMINAL-ANSWER-ARRAY-01","statement":"When A and D mirror each other on the age-intent fact, use the belief fact to resolve the pair after the attempt anchor is known.","type":"answer_array","trigger":"A says no mental state as to age; D says no intent as to under-16 age.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"call_lock","target_skill":"attempt vs completed offense","prompt":"A charge says ''attempting to violate the statute.'' Which answers are suspect first?","answer":"Answers that depend on the target crime being completed."},{"drill_type":"fight_pair","target_skill":"A/D age-intent axis","prompt":"One answer says no mental state as to age; another says no intent as to under-16 age. What is the axis?","answer":"Whether the completed-offense strict-liability age rule carries into attempt."},{"drill_type":"wrong_element","target_skill":"substantial step trap","prompt":"Why is ''he took a substantial step'' not enough here?","answer":"It proves only the act-side and does not answer the age-intent axis."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '31ba958a-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '14641_bible_trivia_attempt'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '035e7c7801dfea54cb621a9e4ad104f7f1119cc03784cb9884cab97bde833b9e'
   AND SHA2(COALESCE(question_stem, ''), 256) = 'ba6519cf8bb160b5b3b74b8f2124652c867067746fb2bf41af058538a113c061'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '6b92c75c6e0e1a91de3d7ba00273c83e9c1e491a586f6f3e4d18467ec022425c';
UPDATE answer_choices
   SET choice_text = 'Guilty, because no mental state is required as to the element of age.',
       is_correct = 0,
       forensic_tags = '["bait_doctrine","wrong_frame"]',
       misconception_tags = '["strict_liability_always_controls","substantial_step_is_enough","no_completion_means_no_attempt","consent_withdrawal_controls_statutory_rape"]',
       why_attractive = 'Students know statutory rape is strict liability and miss the attempt call.',
       why_wrong_or_correct = 'Imports completed-offense strict liability into the attempt charge.',
       future_cue = 'Circle attempt before using the completed-offense rule.',
       remediation_id = 'REM-CRIMINAL-ATTEMPT-STRICT-LIABILITY-01'
 WHERE question_id = '31ba958a-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '999c6a865d4a185db596325946a5d5d4377bc9f1be2d4f58f923e2d0cedcce8e'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Guilty, because he took a substantial step toward sexual intercourse before leaving.',
       is_correct = 0,
       forensic_tags = '["wrong_element"]',
       misconception_tags = '["strict_liability_always_controls","substantial_step_is_enough","no_completion_means_no_attempt","consent_withdrawal_controls_statutory_rape"]',
       why_attractive = 'Students see substantial step and stop before mens rea.',
       why_wrong_or_correct = 'Addresses substantial step but not the age-intent axis.',
       future_cue = 'Separate act-side attempt from mens rea-side attempt.',
       remediation_id = 'REM-CRIMINAL-ATTEMPT-STRICT-LIABILITY-01'
 WHERE question_id = '31ba958a-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '9e7c8912bfe0e60d92541114a25713ffd76639d0c9a60731befd28cb49403c6c'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Not guilty, because no sexual intercourse occurred.',
       is_correct = 0,
       forensic_tags = '["bait_doctrine","wrong_frame"]',
       misconception_tags = '["strict_liability_always_controls","substantial_step_is_enough","no_completion_means_no_attempt","consent_withdrawal_controls_statutory_rape"]',
       why_attractive = 'Students think no completed intercourse means no criminal liability.',
       why_wrong_or_correct = 'Answers completed statutory rape, not attempted statutory rape.',
       future_cue = 'Translate the call: attempt exists when the target crime is incomplete.',
       remediation_id = 'REM-CRIMINAL-ATTEMPT-STRICT-LIABILITY-01'
 WHERE question_id = '31ba958a-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = '73041d4982e837dcc680909807c08b39ac19cb2211b4b3c024d3db5be16d1095'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Not guilty, because he did not intend to have sexual intercourse with a girl under the age of 16.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'D is correct under the supplied BarMatrix/MBE rule.

Gold Key: For this item’s supplied exam rule, completed statutory rape may be strict liability as to age, but an attempt charge requires intent to commit the target offense as charged. Here, Daniel believed Esther was about 18, so he did not intend intercourse with a girl under 16.

Silver Key: Circle the word attempting in the call. Do not answer as if Daniel were charged with the completed offense.

The source row identifies QID 14641, gives the official key as D, and explains that the man is charged with attempt, not completed statutory rape; the official explanation says the missing specific intent as to a girl under 16 is the reason D wins.',
       future_cue = NULL,
       remediation_id = 'REM-CRIMINAL-ATTEMPT-STRICT-LIABILITY-01'
 WHERE question_id = '31ba958a-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'e68ec73fcf307df1cd84e9ccb3fc216ad6f4ca522df7c6ab4a6a7ae4e392768e'
   AND is_correct = 1;

-- CQ14649.md -> 14649_pageant_warehouse (31bb9f7c-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CRIMINAL_LAW',
       topic = 'Criminal Law',
       subtopic = 'General Principles',
       tension_point = 'legal_impossibility_vs_factual_impossibility',
       fact_pattern = 'Daniel owned an old private warehouse where he stored Christmas pageant props. He decided to destroy the warehouse because the property taxes on the structure exceeded any income he could receive from it. Daniel went into the building in the middle of the night with a can of gasoline and a fuse and set the fuse timer for 30 minutes. He then left the building. The fuse failed to ignite, and the building was not harmed.

Arson is defined in this jurisdiction as “the intentional burning of any building or structure of another, without the consent of the owner.” Daniel believed, however, that burning one’s own building was arson, having been so advised by his lawyer, Paul.

Has Daniel committed attempted arson?',
       question_stem = 'Daniel owned an old private warehouse where he stored Christmas pageant props. He decided to destroy the warehouse because the property taxes on the structure exceeded any income he could receive from it. Daniel went into the building in the middle of the night with a can of gasoline and a fuse and set the fuse timer for 30 minutes. He then left the building. The fuse failed to ignite, and the building was not harmed.

Arson is defined in this jurisdiction as “the intentional burning of any building or structure of another, without the consent of the owner.” Daniel believed, however, that burning one’s own building was arson, having been so advised by his lawyer, Paul.

Has Daniel committed attempted arson?

The call is attempted arson.

Prediction: Do not start with the failed fuse. Start with the arson definition. If Daniel’s planned finished act would not be arson, the answer should be No.',
       call_of_question = 'The call is attempted arson.

Prediction: Do not start with the failed fuse. Start with the arson definition. If Daniel’s planned finished act would not be arson, the answer should be No.',
       difficulty = 2,
       metadata = '{"source_file":"CQ14649.md","source_question_id":"14649","variant_slug":"pageant_warehouse","batch":"cq-updated-copy-2026-06-20","outline_code":"73030900","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":"Daniel owned and consented to the burning of the warehouse.","distilled_core_question":"Daniel tries to burn his own building. The arson definition covers only buildings of another without owner consent. Fuse fails. Attempted arson?","review_truth":"If the intended completed act still would not satisfy the crime definition, legal impossibility defeats attempt.","dominant_trap":null,"anchor_card":{"card_id":"RC-CRIM-ATTEMPT-IMPOSSIBILITY-01","title":"Definition-first attempt impossibility","signal":"Attempt call + supplied statutory definition + intended completed act fails an element even if completed.","student_move":"Test the intended completed facts against the crime definition before choosing an impossibility answer.","tiny_rule":"If the completed intended act would not be a crime, call legal impossibility.","trap":"Picking factual impossibility because the physical plan failed.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CRIM-LEGAL-IMPOSSIBILITY-01","statement":"Attempt fails when the actor''s intended completed conduct still would not be a crime. Factual impossibility does not excuse; pure legal impossibility does.","type":"distinction","trigger":"The statute requires a fact the actor''s intended completed act would still not satisfy.","authority":"People v. Jaffe, 185 N.Y. 497 (1906); supplied official explanation for Q14649","last_minute_review":true}],"silver_keys":[{"id":"SK-CRIM-DEFINITION-FIRST-01","statement":"When the stem gives the crime definition, plug the intended finished act into that definition before answering attempt.","type":"clash","trigger":"Attempt call plus a pasted crime definition.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"definition_first","target_skill":"Plug intended completed facts into quoted offense definition.","prompt":"A defendant tries to do X. The quoted crime definition requires Y. If X succeeds and Y is still missing, what impossibility label applies?","answer":"Legal impossibility."},{"drill_type":"trap_pair","target_skill":"Separate factual impossibility from legal impossibility.","prompt":"Fuse fails while actor tries to burn own building under an ''of another'' arson statute.","answer":"Do not stop at the fuse; ownership makes it legal impossibility."},{"drill_type":"because_clause_check","target_skill":"Reject right-result/wrong-reason answers.","prompt":"Choice says ''No, because the mistake negated mens rea.'' The actor intended to burn. Keep or cut?","answer":"Cut. The no-liability reason is legal impossibility, not missing intent to burn."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '31bb9f7c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '14649_pageant_warehouse'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = 'bffab22d693211e3b89a647dba21c6e0b6872d5cf1a6ff21aac9e492b07a162b'
   AND SHA2(COALESCE(question_stem, ''), 256) = '28ee708e6353d7821a813b7c6e2a1c3d84bb7c01fee3c0f0c27cd932828cecf0'
   AND SHA2(COALESCE(call_of_question, ''), 256) = 'fda9defae921b512544f70f6093d6884f2ef84d2a81e9d8ff83e195d29dbd010';
UPDATE answer_choices
   SET choice_text = 'Yes, because factual impossibility is no defense.',
       is_correct = 0,
       forensic_tags = '["bait_doctrine","wrong_frame"]',
       misconception_tags = '["all_impossibility_is_factual","bad_lawyer_advice_controls","correct_conclusion_is_enough","attempt_liability_from_moral_bad_intent"]',
       why_attractive = 'The fuse failed, so factual impossibility feels like the obvious attempt doctrine.',
       why_wrong_or_correct = 'Factual impossibility is a true neighboring rule, but the intended completed act would not be arson.',
       future_cue = 'Apply SK-CRIM-DEFINITION-FIRST-01, then GK-CRIM-LEGAL-IMPOSSIBILITY-01.',
       remediation_id = 'RC-CRIM-ATTEMPT-IMPOSSIBILITY-01'
 WHERE question_id = '31bb9f7c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '5dde6e049bf2b90b055da2f4e24a67145fabb772f1eec1cca6c67c603ce0fb8c'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Yes, because a mistake of law, even on the advice of an attorney, is no defense.',
       is_correct = 0,
       forensic_tags = '["bait_doctrine","wrong_frame"]',
       misconception_tags = '["all_impossibility_is_factual","bad_lawyer_advice_controls","correct_conclusion_is_enough","attempt_liability_from_moral_bad_intent"]',
       why_attractive = 'Lawyer advice makes mistake of law feel like the tested issue.',
       why_wrong_or_correct = 'Mistake of law is the dominant wrong frame; the issue is legal impossibility.',
       future_cue = 'Ask whether the completed intended act would be a crime before considering excuses.',
       remediation_id = 'RC-CRIM-ATTEMPT-IMPOSSIBILITY-01'
 WHERE question_id = '31bb9f7c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'cb4ecd0977e6ab4593c3b5b3be75ab46aae655d266d05262dd036cb1946a6a93'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'No, because his mistake negated a necessary mental state.',
       is_correct = 0,
       forensic_tags = '["flat_misstatement"]',
       misconception_tags = '["all_impossibility_is_factual","bad_lawyer_advice_controls","correct_conclusion_is_enough","attempt_liability_from_moral_bad_intent"]',
       why_attractive = 'It reaches the right result and uses mental-state language.',
       why_wrong_or_correct = 'Daniel intended to burn the building; the reason for no liability is not lack of mental state.',
       future_cue = 'Check both halves: result and reason.',
       remediation_id = 'RC-CRIM-ATTEMPT-IMPOSSIBILITY-01'
 WHERE question_id = '31bb9f7c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = '6999dd2dabfddcb1f802523d3b50598621964a750b9202b4fabf8ed237d71134'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'No, because even if his actions had every consequence he intended, they would not have constituted arson.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'D is correct. Gold Key: If the actor’s intended completed conduct would still not be a crime, the problem is legal impossibility, not factual impossibility. Daniel intended to burn his own warehouse. The jurisdiction’s arson definition requires burning a building “of another” without the owner’s consent. Even if the fuse had worked and Daniel’s plan had succeeded exactly as intended, he still would not have burned a building “of another” without the owner’s consent. That means the completed intended act would not be arson. So he has not committed attempted arson.

Silver Key: When the stem gives the crime definition, plug the intended finished act into the definition before taking the “attempt” bait.',
       future_cue = NULL,
       remediation_id = 'RC-CRIM-ATTEMPT-IMPOSSIBILITY-01'
 WHERE question_id = '31bb9f7c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = '937d8583323f5eabdb08ad9f63554451604bd9a5ff47853507b0f8442001c5fb'
   AND is_correct = 1;

-- CQ14656.md -> 14656_fellowship_flag_football (31bcc351-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CRIMINAL_LAW',
       topic = 'Criminal Law',
       subtopic = 'Homicide',
       tension_point = 'murder sufficiency vs manslaughter-instruction evidence',
       fact_pattern = 'At a fellowship-hall watch party after a charity flag-football game, Peter and John were arguing about the relative merits of their favorite church-league football teams when Peter said, “You have to be one of the dumbest people in the fellowship hall.” John slapped Peter. Peter drew a knife and stabbed John in the stomach. Other members then stepped in and stopped any further fighting.

Despite the pleas of the other members, John refused to go to a hospital or seek medical treatment. About two hours later, he died from loss of blood. Peter was charged with the murder of John. At trial, medical evidence established that if John had been taken to a hospital, he would have survived.

At the end of the case, Peter moves for a judgment of acquittal or, in the alternative, for an instruction on the elements of voluntary manslaughter. The court should:',
       question_stem = 'At a fellowship-hall watch party after a charity flag-football game, Peter and John were arguing about the relative merits of their favorite church-league football teams when Peter said, “You have to be one of the dumbest people in the fellowship hall.” John slapped Peter. Peter drew a knife and stabbed John in the stomach. Other members then stepped in and stopped any further fighting.

Despite the pleas of the other members, John refused to go to a hospital or seek medical treatment. About two hours later, he died from loss of blood. Peter was charged with the murder of John. At trial, medical evidence established that if John had been taken to a hospital, he would have survived.

At the end of the case, Peter moves for a judgment of acquittal or, in the alternative, for an instruction on the elements of voluntary manslaughter. The court should:

Call: The court should do what with the acquittal motion and the alternative instruction request?

Prediction: Deny acquittal. Give the manslaughter instruction if the slap is enough evidence for a jury to consider heat of passion.',
       call_of_question = 'Call: The court should do what with the acquittal motion and the alternative instruction request?

Prediction: Deny acquittal. Give the manslaughter instruction if the slap is enough evidence for a jury to consider heat of passion.',
       difficulty = 2,
       metadata = '{"source_file":"CQ14656.md","source_question_id":"14656","variant_slug":"fellowship_flag_football","batch":"cq-updated-copy-2026-06-20","outline_code":"74020101","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":"John slapped Peter before Peter stabbed him","distilled_core_question":"Peter is slapped, stabs John, John refuses treatment and dies, and Peter asks for acquittal or manslaughter instruction. What ruling?","review_truth":"A victim’s refusal of treatment usually does not erase causation; a slap can support heat-of-passion instruction, so deny acquittal but instruct on manslaughter.","dominant_trap":null,"anchor_card":{"card_id":"CRIM-REM-14656","title":"Two-motion homicide call","signal":"The defendant moves for acquittal or, alternatively, a manslaughter instruction.","student_move":"Split the ruling: causation for acquittal; provocation for instruction.","tiny_rule":"Murder sufficiency does not automatically deny a lesser-included instruction.","trap":"D","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CRIM-CAUSATION-REFUSAL-01","statement":"A victim’s foreseeable refusal to seek medical treatment after being wounded usually does not break the causal chain for homicide.","type":"rule","trigger":"Victim would have survived with medical treatment but refused treatment.","authority":"General intervening-cause principle; R v Blaue analogy; Cornell Wex intervening-cause explanation.","last_minute_review":true},{"id":"GK-CRIM-MANSLAUGHTER-INSTRUCTION-01","statement":"When murder is charged, evidence that could let a reasonable jury find heat of passion requires a voluntary manslaughter instruction.","type":"threshold","trigger":"Defendant requests manslaughter instruction and facts show a physical provocation immediately before the killing.","authority":"Heat-of-passion lesser-included-instruction principles; CALCRIM 570 as confirmation.","last_minute_review":true}],"silver_keys":[{"id":"SK-CRIM-TWO-MOTION-CALL-01","statement":"When the call asks for acquittal or an alternative instruction, do not let an answer that handles only acquittal win.","type":"answer_array","trigger":"Motion for acquittal OR, in the alternative, instruction.","authority":null,"last_minute_review":true},{"id":"SK-CRIM-WORDS-VS-SLAP-01","statement":"If an answer says words alone, check whether the stem gives a non-word provocation.","type":"trap_spotting","trigger":"Answer focuses on insulting words while the stem says the victim slapped the defendant.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"call_split","target_skill":"two-motion answer-array reading","prompt":"A defendant moves for acquittal or alternatively for a lesser-included instruction. One answer proves only sufficiency for the greater offense. What is the C3 warning?","answer":"It may answer acquittal only; check the instruction request separately."},{"drill_type":"trigger_fact","target_skill":"words-vs-physical provocation","prompt":"An answer says words alone are not adequate provocation. The stem says the victim slapped the defendant. What mold?","answer":"wrong_element / NOT_RESPONSIVE."},{"drill_type":"gold_key_recall","target_skill":"causation by victim refusal","prompt":"Victim would have survived had he accepted treatment. Does that automatically break causation?","answer":"No. Victim refusal usually does not break the causal chain."},{"drill_type":"trap_recovery","target_skill":"dominant-trap rejection","prompt":"Why does knife-to-stomach malice not automatically make D correct?","answer":"It supports denying acquittal but does not defeat a supported manslaughter instruction."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '31bcc351-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '14656_fellowship_flag_football'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = 'd564c509e5a65a7a67908dd4cabac0fed7e9613f5ba35400e2b1a3661e8fc177'
   AND SHA2(COALESCE(question_stem, ''), 256) = '9e68bc716e8c33140293a609827ab377ce110e60330077e70d4ab467cf847149'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '481b0595f844dc0e04ae45bebb74cb8c75eaf207911fba1ad8c5c3cbbdfdafef';
UPDATE answer_choices
   SET choice_text = 'Grant the motion for acquittal, because John would have survived had he gone to the hospital.',
       is_correct = 0,
       forensic_tags = '["half_truth","procedural_frame"]',
       misconception_tags = '["victim_refusal_breaks_chain","murder_sufficiency_defeats_manslaughter","words_only_rule_ignores_physical_blow"]',
       why_attractive = 'The medical evidence says John would have survived with treatment.',
       why_wrong_or_correct = 'Uses the true survival-with-treatment fact but omits the causation rule.',
       future_cue = 'Ask whether the later refusal is enough to erase the stabbing as a legal cause.',
       remediation_id = 'CRIM-REM-14656'
 WHERE question_id = '31bcc351-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '5886b1ffd46e58235a8bf24f10d858f05e02cd1cada36886a6a9a84bb7913757'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Deny the motion for acquittal, but instruct on manslaughter because there is evidence of adequate provocation.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'B is correct. The court should deny acquittal because John’s refusal to seek treatment does not erase Peter’s stabbing as a legally sufficient cause of death. The court should still instruct on voluntary manslaughter because John slapped Peter immediately before the stabbing, giving the jury some evidence from which it could find heat-of-passion/adequate provocation.

Gold Key: Victim-refusal causation. A victim’s foreseeable refusal to seek medical treatment after being wounded usually does not break the causal chain.

Gold Key: Lesser-instruction threshold. If the evidence gives the jury a reasonable path to voluntary manslaughter, the defendant gets the instruction even though the prosecution also has enough evidence for murder.

Silver Key: The call has two requested rulings. A complete answer must handle both: acquittal and the manslaughter instruction.',
       future_cue = NULL,
       remediation_id = 'CRIM-REM-14656'
 WHERE question_id = '31bcc351-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '36abae0baab7e046286ed1ed8ce0abe9b48906defb6c2daf7124d40441458af9'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'Deny both motions, because insulting words alone do not constitute adequate provocation.',
       is_correct = 0,
       forensic_tags = '["wrong_element","procedural_frame"]',
       misconception_tags = '["victim_refusal_breaks_chain","murder_sufficiency_defeats_manslaughter","words_only_rule_ignores_physical_blow"]',
       why_attractive = 'Students remember that insulting words alone usually are not enough.',
       why_wrong_or_correct = 'Answers a words-only fact pattern while this stem includes a slap.',
       future_cue = 'Circle the slap and reject words-only framing.',
       remediation_id = 'CRIM-REM-14656'
 WHERE question_id = '31bcc351-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'fa42dd89d6298d5fab702c12a35b3869e60903ac309864c40dac3dcbb015e216'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Deny both motions, because malice may be proved by the intentional use of a deadly weapon on a vital part of the body.',
       is_correct = 0,
       forensic_tags = '["wrong_element","procedural_frame"]',
       misconception_tags = '["victim_refusal_breaks_chain","murder_sufficiency_defeats_manslaughter","words_only_rule_ignores_physical_blow"]',
       why_attractive = 'Knife-to-stomach malice sounds like a complete murder answer.',
       why_wrong_or_correct = 'Answers murder sufficiency but not the separate manslaughter-instruction request.',
       future_cue = 'Ask whether the answer also defeats the manslaughter-instruction request.',
       remediation_id = 'CRIM-REM-14656'
 WHERE question_id = '31bcc351-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'bf85c518ce314ea0bfea4eacd8e114c63edeec29420972498bc8d1b4d56a35d1'
   AND is_correct = 0;

-- CQ14690.md -> 14690_bible_study_protected_victim (31c28445-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CRIMINAL_LAW',
       topic = 'Criminal Law',
       subtopic = 'Inchoate Crimes',
       tension_point = 'Which reason reverses the conspiracy conviction?',
       fact_pattern = 'Peter, an 18-year-old, and his 14-year-old girlfriend Ruth met through a neighborhood Bible-study group. They made plans to meet in Peter’s apartment to have sexual intercourse, and they did so. Ruth later told her mother about the incident. Peter was charged with statutory rape and conspiracy to commit statutory rape. In the jurisdiction, the age of consent is 15, and the law of conspiracy is the same as at common law. Peter was convicted of both charges and given consecutive sentences. On appeal, Peter contends that his conspiracy conviction should be reversed. That conviction should be',
       question_stem = 'Peter, an 18-year-old, and his 14-year-old girlfriend Ruth met through a neighborhood Bible-study group. They made plans to meet in Peter’s apartment to have sexual intercourse, and they did so. Ruth later told her mother about the incident. Peter was charged with statutory rape and conspiracy to commit statutory rape. In the jurisdiction, the age of consent is 15, and the law of conspiracy is the same as at common law. Peter was convicted of both charges and given consecutive sentences. On appeal, Peter contends that his conspiracy conviction should be reversed. That conviction should be

Call: “That conviction should be…”

“That conviction” means the conspiracy conviction. Not the statutory rape conviction.

Prediction before choices: the statutory rape conviction can stand, but the conspiracy conviction has a problem if Ruth is the only alleged conspirator.',
       call_of_question = 'Call: “That conviction should be…”

“That conviction” means the conspiracy conviction. Not the statutory rape conviction.

Prediction before choices: the statutory rape conviction can stand, but the conspiracy conviction has a problem if Ruth is the only alleged conspirator.',
       difficulty = 2,
       metadata = '{"source_file":"CQ14690.md","source_question_id":"14690","variant_slug":"bible_study_protected_victim","batch":"cq-updated-copy-2026-06-20","outline_code":"73020700","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"An adult is convicted of statutory rape and conspiracy to commit statutory rape, with the underage protected person as the only alleged coconspirator. Under common-law conspiracy, should the conspiracy conviction stand?","review_truth":"When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense.","dominant_trap":null,"anchor_card":{"card_id":"CRIM-REM-PROTECTED-VICTIM-CONSPIRACY","title":"Protected victim is not the conspiracy partner","signal":"The only alleged coconspirator is the person the statute protects.","student_move":"Do not stop at agreement. Ask whether that person can be the guilty partner for this offense.","tiny_rule":"Protected victim defeats conspiracy with that victim as the only partner.","trap":"Wharton''s Rule and generic minor incapacity feel more familiar but answer the wrong route.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CRIM-PROTECTED-VICTIM-CONSPIRACY-01","statement":"Common-law conspiracy needs a real guilty agreement, and a protected victim is not that guilty partner. In statutory rape, the underage participant is treated as the protected person, not as a coconspirator; do not route the issue through Wharton''s Rule or generic minor incapacity.","type":"distinction","trigger":"Only alleged conspiracy partner is the person the target offense is designed to protect.","authority":"Gebardi v. United States, 287 U.S. 112 (1932); Iannelli v. United States, 420 U.S. 770 (1975)","last_minute_review":true}],"silver_keys":[{"id":"SK-CRIM-REASON-SORT-CONSPIRACY-01","statement":"When the appeal attacks only the conspiracy count, sort the answer choices by the reason they give for affirming or reversing. Do not let three reversal choices blur together: protected victim, Wharton''s Rule, and minor incapacity are different routes.","type":"answer_array","trigger":"One affirmance answer and three reversal answers with different legal reasons.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"answer_array_sort","target_skill":"Separate multiple reversal reasons.","prompt":"A conspiracy appeal has one affirmance answer and three reversal answers: agreement-only, Wharton''s Rule, protected victim, and minor incapacity. Which route should be checked first?","answer":"Protected victim if the only alleged coconspirator is the person the offense protects."},{"drill_type":"gold_key_recall","target_skill":"Protected-victim conspiracy anchor.","prompt":"The only alleged conspiracy partner is the protected victim of the target offense. What happens to common-law conspiracy?","answer":"The protected victim is not the guilty coconspirator; conspiracy fails if there is no other conspirator."},{"drill_type":"mold_label","target_skill":"Tiered absolute detection.","prompt":"Label the mold: ''one cannot conspire with a person too young to consent.''","answer":"tiered_absolute; it overclaims because the issue is protected-victim status, not all minors."},{"drill_type":"bait_doctrine","target_skill":"Wharton''s Rule trap recognition.","prompt":"Why is Wharton''s Rule a trap in a statutory-rape conspiracy item involving only the underage protected person?","answer":"It is the wrong route; the protected-victim rule, not Wharton''s Rule, resolves the conspiracy count."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '31c28445-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '14690_bible_study_protected_victim'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '0cf74e5504376faee119161f5fb26744187add38309def2d48fd937ddd865ca4'
   AND SHA2(COALESCE(question_stem, ''), 256) = '6c1e9bc6eb2ad3994565dc39c2029204d3ff4cbc19201d028c7f962cfaae67d3'
   AND SHA2(COALESCE(call_of_question, ''), 256) = 'af420030256c07c6b2912a0cdf85dbc1cfdb9b084918a233a9ad4c6cf2348ee3';
UPDATE answer_choices
   SET choice_text = 'affirmed, because Peter agreed with Ruth to commit the crime.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["agreement_is_enough","whartons_rule_overuse","minor_cannot_conspire","completed_crime_proves_conspiracy"]',
       why_attractive = 'Students know conspiracy needs agreement and stop there.',
       why_wrong_or_correct = 'Agreement is only one piece; the answer does not address whether Ruth can be the guilty conspiracy partner.',
       future_cue = 'Lock the call: conspiracy conviction. Then ask agreement with whom.',
       remediation_id = 'CRIM-REM-PROTECTED-VICTIM-CONSPIRACY'
 WHERE question_id = '31c28445-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'dadaa4acd7f0ce625509d9587f7a27d3df6a755fbe1a6eef3f3c5b4bfabdb9c4'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'reversed, because Ruth could not be a conspirator to this crime.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'B is correct.

Gold Key: Common-law conspiracy needs a real guilty agreement, and a protected victim is not that guilty partner. In statutory rape, the underage participant is treated as the protected person, not as a coconspirator.

Silver Key: The appeal attacks only the conspiracy conviction. Sort the three reversal answers by the reason they give: protected victim, Wharton’s Rule, or generic minor incapacity. Only the protected-victim route answers this item.

Peter can be guilty of statutory rape, but the conspiracy conviction depends on whether Ruth can be the other conspirator. Because Ruth is the protected person in the statutory rape offense, she cannot be treated as the guilty conspiracy partner for that offense. With Ruth as the only alleged coconspirator, Peter’s conspiracy conviction should be reversed.',
       future_cue = NULL,
       remediation_id = 'CRIM-REM-PROTECTED-VICTIM-CONSPIRACY'
 WHERE question_id = '31c28445-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '0ec78b40181206a36ed4bee59d1fce3366b0ff1365dd0aee4d0125acc2f19f3c'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'reversed, because the crime is one that can only be committed by agreement and thus Wharton’s Rule bars conspiracy liability.',
       is_correct = 0,
       forensic_tags = '["bait_doctrine","wrong_frame"]',
       misconception_tags = '["agreement_is_enough","whartons_rule_overuse","minor_cannot_conspire","completed_crime_proves_conspiracy"]',
       why_attractive = 'Wharton''s Rule sounds like the advanced conspiracy exception and is the dominant wrong answer.',
       why_wrong_or_correct = 'Wharton''s Rule is a real conspiracy doctrine, but this item is resolved by the protected-victim rule.',
       future_cue = 'Separate protected-victim reversal from Wharton''s Rule reversal.',
       remediation_id = 'CRIM-REM-PROTECTED-VICTIM-CONSPIRACY'
 WHERE question_id = '31c28445-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = '144d40e59a7e63f19f52ba60353885b005a57ed360bcb763c562f5837e70a541'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'reversed, because one cannot conspire with a person too young to consent.',
       is_correct = 0,
       forensic_tags = '["tiered_absolute","wrong_frame"]',
       misconception_tags = '["agreement_is_enough","whartons_rule_overuse","minor_cannot_conspire","completed_crime_proves_conspiracy"]',
       why_attractive = 'It converts moral intuition about age and consent into a broad legal rule.',
       why_wrong_or_correct = 'The answer overclaims by saying one cannot conspire with a person too young to consent; the actual reason is protected-victim status.',
       future_cue = 'Cut the overclaim and replace it with the narrow protected-victim rule.',
       remediation_id = 'CRIM-REM-PROTECTED-VICTIM-CONSPIRACY'
 WHERE question_id = '31c28445-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = '882f2962da11a78ad06cc8d96ffd62e4a5ae7f2b4a77c9cc3302f5afd2e04fb4'
   AND is_correct = 0;

-- CQ14730.md -> 14730_potluck_flight (31ca29b8-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CRIMINAL_LAW',
       topic = 'Criminal Law',
       subtopic = 'Other Crimes',
       tension_point = 'formal prosecution knowledge vs functional purpose to hinder conviction',
       fact_pattern = 'Paul was engaged to marry Mary. One evening after a church potluck, Paul became enraged at the comments of Mary’s eight-year-old daughter, Ruth, who was complaining in her usual way that she did not want Mary to marry Paul. Paul, who had too much to drink, began beating Ruth. Ruth suffered bruises and a broken arm.

Mary took Ruth to the hospital. The hospital staff notified the police. Paul was indicted for felony child abuse. Paul pleaded with Mary to forgive him and to run away with him. Mary agreed. They moved out of state and took Ruth with them. Without Ruth’s testimony, the prosecution was forced to dismiss the case.

Sometime later, Mary returned for a visit with her family and was arrested and indicted as an accessory after the fact to child abuse.

At Mary’s trial, the court should:',
       question_stem = 'Paul was engaged to marry Mary. One evening after a church potluck, Paul became enraged at the comments of Mary’s eight-year-old daughter, Ruth, who was complaining in her usual way that she did not want Mary to marry Paul. Paul, who had too much to drink, began beating Ruth. Ruth suffered bruises and a broken arm.

Mary took Ruth to the hospital. The hospital staff notified the police. Paul was indicted for felony child abuse. Paul pleaded with Mary to forgive him and to run away with him. Mary agreed. They moved out of state and took Ruth with them. Without Ruth’s testimony, the prosecution was forced to dismiss the case.

Sometime later, Mary returned for a visit with her family and was arrested and indicted as an accessory after the fact to child abuse.

At Mary’s trial, the court should:

Call: At Mary’s trial, what should the court do?

Prediction: The court should submit the case to the jury if the facts support Mary’s post-crime assistance with the purpose of helping Paul avoid the criminal process.

Adjacent-call traps:

* Do not answer whether Paul was convicted.
* Do not answer whether Mary helped commit the original beating.
* Do not answer only whether Mary knew about the indictment.',
       call_of_question = 'Call: At Mary’s trial, what should the court do?

Prediction: The court should submit the case to the jury if the facts support Mary’s post-crime assistance with the purpose of helping Paul avoid the criminal process.

Adjacent-call traps:

* Do not answer whether Paul was convicted.
* Do not answer whether Mary helped commit the original beating.
* Do not answer only whether Mary knew about the indictment.',
       difficulty = 2,
       metadata = '{"source_file":"CQ14730.md","source_question_id":"14730","variant_slug":"potluck_flight","batch":"cq-updated-copy-2026-06-20","outline_code":"72050300","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"After Paul committed felony child abuse, Mary helped him leave the state with the child witness, causing the prosecution to lose the witness. Is Mary''s accessory-after-the-fact case for the jury? Yes, if her purpose was to prevent Paul''s conviction.","review_truth":"Accessory after the fact is post-crime help given to hinder the offender''s apprehension, trial, conviction, or punishment; a prior conviction or indictment is not required.","dominant_trap":null,"anchor_card":{"card_id":"CRIM-REM-ACCESSORY-AFTER-FACT-01","title":"After-the-fact means after the crime","signal":"A helper moves, hides, lies, shelters the offender, or removes a witness after a completed crime.","student_move":"Do not ask whether the principal was convicted. Ask whether the helper acted to hinder apprehension, trial, conviction, or punishment.","tiny_rule":"Post-crime aid + knowledge + purpose to hinder = accessory after the fact.","trap":"Mistaking indictment or conviction status for an element.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CRIMINAL-ACCESSORY-AFTER-FACT-01","statement":"Accessory after the fact is a separate post-crime offense: after the crime is complete, knowingly assist the offender with the purpose of hindering apprehension, trial, conviction, or punishment. The principal need not already be indicted or convicted.","type":"rule","trigger":"Call charges accessory after the fact and facts show flight, concealment, missing witness, or avoided prosecution.","authority":"lawyer_confirmation_only: 18 U.S.C. § 3; Ninth Circuit Model Criminal Jury Instruction 5.2; Cornell Wex accessory-after-the-fact","last_minute_review":true}],"silver_keys":[{"id":"SK-CRIMINAL-AFTER-FACT-TIMING-01","statement":"When the call says accessory after the fact, do not cut the case because the aid came after the crime. After-completion timing points into the rule; then pick the answer that names the helper''s purpose.","type":"answer_array","trigger":"A charge label containing ''after the fact'' plus an answer saying the aid came after the crime.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"gold_key_recall","target_skill":"Accessory-after-the-fact elements","prompt":"A helper shelters an offender after a felony. The principal has not been convicted. Can accessory-after-the-fact liability still be submitted?","answer":"Yes. Principal conviction is not required if the helper knowingly assisted with purpose to hinder apprehension, trial, conviction, or punishment."},{"drill_type":"silver_key_trap_spotting","target_skill":"After-fact timing reversal","prompt":"The charge is accessory after the fact. A choice says dismiss because the aid occurred after the crime was complete. What is the move?","answer":"Cut it as backwards. After-completion timing is required for after-the-fact liability."},{"drill_type":"clash_axis","target_skill":"Mental-state fight pair","prompt":"Choice C requires knowledge of indictment. Choice D requires purpose to prevent conviction. Name the axis.","answer":"Formal indictment knowledge versus functional purpose to hinder the criminal process."},{"drill_type":"distilled_core","target_skill":"Fact-to-purpose inference","prompt":"The helper leaves the state with the child witness and the case is dismissed for lack of that witness. What fact matters?","answer":"The move made the witness unavailable, supporting purpose to prevent conviction."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '31ca29b8-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '14730_potluck_flight'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '5cda0a512b8df9ca4523c89430c0bdffbea6e3eeac341d70b30bbe880c0646e1'
   AND SHA2(COALESCE(question_stem, ''), 256) = '5763dad04ef72c9aa938dbb9ab69115dfb2d37f19dbfbac1e7d0a3d3c09317b2'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '7e874360656805624c237fee039968b457aa3efa59bcd8fec5c95651bbba1d30';
UPDATE answer_choices
   SET choice_text = 'dismiss the charge, because Paul had not been convicted.',
       is_correct = 0,
       forensic_tags = '["fabricated_rule","procedural_frame"]',
       misconception_tags = '["principal_must_be_convicted","aid_after_completion_is_too_late","indictment_knowledge_required","case_dismissal_erases_accessory_liability"]',
       why_attractive = 'Students think accessory liability depends on the principal''s conviction status.',
       why_wrong_or_correct = 'Invents a principal-conviction prerequisite.',
       future_cue = 'Ask whether the underlying crime occurred and whether Mary aided Paul to avoid the process, not whether Paul was convicted.',
       remediation_id = 'CRIM-REM-ACCESSORY-AFTER-FACT-01'
 WHERE question_id = '31ca29b8-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '8adf96a06de1a7fc29cc1cd2f2133b5be1d74e91742bc939b5751f14a71fd724'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'dismiss the charge, because the evidence shows that any aid Mary rendered occurred after the crime was completed.',
       is_correct = 0,
       forensic_tags = '["backwards","wrong_frame"]',
       misconception_tags = '["principal_must_be_convicted","aid_after_completion_is_too_late","indictment_knowledge_required","case_dismissal_erases_accessory_liability"]',
       why_attractive = 'Students treat post-crime timing as too late instead of recognizing that after-fact liability starts there.',
       why_wrong_or_correct = 'Treats after-completion aid as a defect even though the charge is accessory after the fact.',
       future_cue = 'Circle ''after the fact'' in the charge and compare it to ''after the crime was completed'' in the answer.',
       remediation_id = 'CRIM-REM-ACCESSORY-AFTER-FACT-01'
 WHERE question_id = '31ca29b8-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '9a58c670eaab40cb21b5222bf5952275ffbb13301fc55ca3829e82c3a0b2ea57'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'submit the case to the jury, on an instruction to convict only if Mary knew Paul had been indicted.',
       is_correct = 0,
       forensic_tags = '["fabricated_rule","wrong_frame"]',
       misconception_tags = '["principal_must_be_convicted","aid_after_completion_is_too_late","indictment_knowledge_required","case_dismissal_erases_accessory_liability"]',
       why_attractive = 'Indictment sounds like the formal event that makes the helper''s flight legally meaningful.',
       why_wrong_or_correct = 'Invents a knowledge-of-indictment requirement instead of the purpose-to-hinder requirement.',
       future_cue = 'Replace ''knew indicted'' with ''purpose to hinder apprehension, trial, conviction, or punishment.''',
       remediation_id = 'CRIM-REM-ACCESSORY-AFTER-FACT-01'
 WHERE question_id = '31ca29b8-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'b562c14c7ea01b0d2b7907e2fa932bd9b2c3aa1e3851a8e969f01aca22929f71'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'submit the case to the jury, on an instruction to convict only if Mary’s purpose in moving was to prevent Paul’s conviction.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'D is correct. The case should go to the jury if the jury could find that Mary helped Paul leave the state with Ruth for the purpose of preventing Paul’s conviction. The stem gives the functional chain: Paul committed the child abuse, Mary knew what happened, Paul asked her to run away, she left with him and the child witness, and the prosecution lost the witness.

Gold Key: Accessory after the fact is a separate post-crime offense. The key is not whether the principal was already convicted or whether the helper knew about a formal indictment. The key is post-crime assistance given with the purpose of hindering the offender’s apprehension, trial, conviction, or punishment.

Silver Key: When the call says “accessory after the fact,” do not treat “after the crime was completed” as a defect. That timing is the lane. Then fight C against D on the required mental state: formal indictment knowledge versus purpose to hinder conviction.',
       future_cue = NULL,
       remediation_id = 'CRIM-REM-ACCESSORY-AFTER-FACT-01'
 WHERE question_id = '31ca29b8-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'e77798cd8ae679222b7c5f64e7700c1a275cbdc1538589f5121ef10917076249'
   AND is_correct = 1;

-- CQ17151.md -> 17151_carol_program (31df1ed2-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CRIMINAL_LAW',
       topic = 'Defenses',
       subtopic = 'General Principles',
       tension_point = 'general intent vs specific intent defense scope',
       fact_pattern = 'At Lydia’s private Advent carol workshop in a rented community hall, Martha voluntarily drinks several cups of spiked wassail. Later, while the group is stacking hymn sheets, she becomes rowdy. Stephen, the hall coordinator, asks her to leave. Martha angrily swings a rolled-up carol program at Stephen and strikes him in the face.

Battery in the jurisdiction requires intentional offensive contact but no further purpose or objective. Martha argues that she was too drunk to form criminal intent.

Call: Is voluntary intoxication a defense to the battery charge?',
       question_stem = 'At Lydia’s private Advent carol workshop in a rented community hall, Martha voluntarily drinks several cups of spiked wassail. Later, while the group is stacking hymn sheets, she becomes rowdy. Stephen, the hall coordinator, asks her to leave. Martha angrily swings a rolled-up carol program at Stephen and strikes him in the face.

Battery in the jurisdiction requires intentional offensive contact but no further purpose or objective. Martha argues that she was too drunk to form criminal intent.

Call: Is voluntary intoxication a defense to the battery charge?

Call lock: defense availability.
Prediction: No. The offense is general intent, and voluntary intoxication does not excuse it.
Adjacent trap: Do not answer whether battery is strict liability. The stem already says it requires intentional contact.',
       call_of_question = 'Call lock: defense availability.
Prediction: No. The offense is general intent, and voluntary intoxication does not excuse it.
Adjacent trap: Do not answer whether battery is strict liability. The stem already says it requires intentional contact.',
       difficulty = 2,
       metadata = '{"source_file":"CQ17151.md","source_question_id":"17151","variant_slug":"carol_program","batch":"cq-updated-copy-2026-06-20","outline_code":"72060101","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"PURE_ANCHOR","splitting_fact":null,"distilled_core_question":"A voluntarily intoxicated person intentionally makes offensive contact. The charged battery requires intentional contact only, with no further objective. Is voluntary intoxication a defense?","review_truth":"Voluntary intoxication can matter for specific intent, but it does not excuse a general-intent battery.","dominant_trap":null,"anchor_card":{"card_id":"REM-CRIM-INTOX-GENERAL-INTENT-01","title":"Voluntary intoxication: specific-intent only","signal":"The stem says the offense requires intentional contact but no further purpose.","student_move":"Classify the offense before applying intoxication.","tiny_rule":"Voluntary intoxication does not excuse general intent.","trap":"Treating drunkenness, blackout, or no memory as a universal intent defense.","confidence":"PURE_ANCHOR"},"gold_keys":[{"id":"GK-CRIMINAL-GENERAL-INTENT-INTOX-01","statement":"Voluntary intoxication may matter for a specific-intent element, but it is not a defense to a general-intent crime. General-intent battery requires intent to make the offensive contact, not a further objective.","type":"distinction","trigger":"Stem says intentional contact but no further purpose or objective.","authority":"Cornell Wex intoxication; CALCRIM No. 3426; People v. Hood / People v. Atkins line of authority","last_minute_review":true}],"silver_keys":[{"id":"SK-CRIMINAL-GENERAL-INTENT-INTOX-01","statement":"When two answers reach the same outcome, test the reason against the stem before keeping it. A right result with a reason the stem contradicts is still a cut.","type":"answer_array","trigger":"One No answer says strict liability while the stem says intentional contact.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"anchor_recall","target_skill":"general intent vs specific intent","prompt":"A voluntarily drunk defendant commits a general-intent battery. Is intoxication a defense?","answer":"No."},{"drill_type":"cut_reason","target_skill":"same-result wrong-reason","prompt":"The stem says battery requires intentional contact. A choice says no defense because battery is strict liability. Cut or keep?","answer":"Cut: contradiction."},{"drill_type":"overclaim_spotting","target_skill":"tiered_absolute","prompt":"A choice says intoxication negates any intent formed while drunk. Name the mold.","answer":"tiered_absolute."},{"drill_type":"timing_axis","target_skill":"memory vs intent","prompt":"A choice turns on whether the defendant remembers the event later. What is the better axis?","answer":"Intent at the moment of contact."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '31df1ed2-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '17151_carol_program'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '7a463b8af04dd9b82b22cb4809d694b1e16a4c6ae282f56e1573fd683c5fdfc3'
   AND SHA2(COALESCE(question_stem, ''), 256) = '2c8e1ced98a8f2d1f76d1eedbe24572d1ff223c0fd4a0645644fe77c90cb57b8'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '345a25f394d1b4a61b914be07d29c704de20ff614804bd5aaf34bcd78df73939';
UPDATE answer_choices
   SET choice_text = 'No, because this battery is a strict-liability offense.',
       is_correct = 0,
       forensic_tags = '["contradiction"]',
       misconception_tags = '["drunk_means_no_intent","no_memory_means_no_intent","right_outcome_is_enough","battery_is_strict_liability"]',
       why_attractive = 'It preserves the correct no outcome, so it feels safe after the student rejects the yes answers. The breaker is that the stem itself says this battery requires intentional contact, so strict liability contradicts the call facts.',
       why_wrong_or_correct = 'The stem says the offense requires intentional offensive contact, so strict liability contradicts the stem.',
       future_cue = 'Compare strict liability to the stem''s intentional-contact requirement.',
       remediation_id = 'REM-CRIM-INTOX-GENERAL-INTENT-01'
 WHERE question_id = '31df1ed2-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'de5fa60dc285829be43c575913b1d81a83e3bb5f952cabc37fb0ee0ce504fa38'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'No, because voluntary intoxication is not a defense to a general-intent battery.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'B is correct. Battery is framed in the stem as a general-intent crime: it requires intentional offensive contact and no additional purpose. Martha voluntarily became intoxicated, then swung the rolled-up program and struck Stephen. That defeats the “too drunk to form intent” defense for this charge.

Gold Key: Voluntary intoxication may matter for a specific-intent element, but it is not a defense to a general-intent crime. General-intent battery requires intent to make the offensive contact, not a further objective.

Silver Key: When two “No” answers appear, do not pick the first one just because the outcome is right. Check whether the reason matches the stem’s offense classification.',
       future_cue = NULL,
       remediation_id = 'REM-CRIM-INTOX-GENERAL-INTENT-01'
 WHERE question_id = '31df1ed2-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'fa63aee19e728785a2e9937a9831657b89b6078a9fe1af1faab96ded0813248e'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'Yes, because intoxication negates any intent formed while drunk.',
       is_correct = 0,
       forensic_tags = '["tiered_absolute","wrong_frame"]',
       misconception_tags = '["drunk_means_no_intent","no_memory_means_no_intent","right_outcome_is_enough","battery_is_strict_liability"]',
       why_attractive = 'It converts the real intoxication idea into a global rule, which sounds intuitive when a person is drunk. The breaker is the Gold Key distinction: voluntary intoxication does not wipe out general intent.',
       why_wrong_or_correct = 'The answer overclaims by saying intoxication negates any intent formed while drunk.',
       future_cue = 'Mark ''any intent'' as an overclaim and classify the offense.',
       remediation_id = 'REM-CRIM-INTOX-GENERAL-INTENT-01'
 WHERE question_id = '31df1ed2-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = '96dfaf090fbff43a280806e84130a34c5eeb7f983401276ea434ec1a55b12233'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Yes, but only if Martha can show that she does not remember swinging the program.',
       is_correct = 0,
       forensic_tags = '["fabricated_rule","wrong_frame"]',
       misconception_tags = '["drunk_means_no_intent","no_memory_means_no_intent","right_outcome_is_enough","battery_is_strict_liability"]',
       why_attractive = 'It gives the student a concrete proof hook, no memory, which sounds like missing intent. The breaker is that later memory is not the same axis as intent at the moment, and the Gold Key still blocks voluntary intoxication for general-intent battery.',
       why_wrong_or_correct = 'The answer invents a no-memory threshold and shifts away from intent at the moment of contact.',
       future_cue = 'Ask what the call tests: defense availability, not recollection.',
       remediation_id = 'REM-CRIM-INTOX-GENERAL-INTENT-01'
 WHERE question_id = '31df1ed2-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'e16ef8d1d0a3ff1f01cd0148f4b6a6eab2874e11541faaba3cd6356192bc0836'
   AND is_correct = 0;

-- CQ17173.md -> 17173_road_to_emmaus_puzzle_quest (319573fd-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CONTRACTS',
       topic = 'Reliance damages',
       subtopic = 'A2',
       tension_point = NULL,
       fact_pattern = 'Mary, a professional puzzle designer, agreed to design and run a “Road to Emmaus” puzzle quest for Daniel’s private Bible-themed birthday party for a fee of $12,600. Mary completed the entire puzzle quest, including the final resurrection-clue round. Comparable event designers would reasonably have charged $20,400 for the same work. Daniel refuses to pay. Mary sues for $20,400, arguing that she relied on the contract by doing puzzle-design work worth that amount.

What is Mary’s proper contract recovery?',
       question_stem = 'Mary, a professional puzzle designer, agreed to design and run a “Road to Emmaus” puzzle quest for Daniel’s private Bible-themed birthday party for a fee of $12,600. Mary completed the entire puzzle quest, including the final resurrection-clue round. Comparable event designers would reasonably have charged $20,400 for the same work. Daniel refuses to pay. Mary sues for $20,400, arguing that she relied on the contract by doing puzzle-design work worth that amount.

What is Mary’s proper contract recovery?

Call lock: proper contract recovery.

Adjacent-call trap: Do not answer, “Is reliance the right label?” Answer the recovery amount.

Prediction: Start with the agreed fee because the contract gives the number and Mary fully performed.',
       call_of_question = 'Call lock: proper contract recovery.

Adjacent-call trap: Do not answer, “Is reliance the right label?” Answer the recovery amount.

Prediction: Start with the agreed fee because the contract gives the number and Mary fully performed.',
       difficulty = 2,
       metadata = '{"source_file":"CQ17173.md","source_question_id":"17173","variant_slug":"road_to_emmaus_puzzle_quest","batch":"cq-updated-copy-2026-06-20","outline_code":"51060101","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"A service provider fully performs a fixed-price services contract; reasonable value is higher; the other side refuses to pay. What recovery?","review_truth":"Full performance plus an unpaid fixed contract price points to the bargain price; reasonable value is not a bigger reliance recovery.","dominant_trap":null,"anchor_card":{"card_id":"REM-CONTRACTS-REMEDY-MENU-01","title":"Bargain price beats reasonable-value bait","signal":"Full performance + agreed price + higher reasonable value","student_move":"Start with the bargain number before considering reliance or restitution labels.","tiny_rule":"If the contract price is fixed and fully earned, recover that price.","trap":"Picking the higher market value or the spread.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CONTRACTS-BARGAIN-PRICE-01","statement":"Full performance plus an unpaid fixed contract price means the bargain price is the recovery. Do not relabel higher reasonable value as reliance or restitution to get more.","type":"distinction","trigger":"The stem gives both a fixed contract price and a higher reasonable value after full performance.","authority":"Restatement (Second) of Contracts §§ 344, 347, 349, 373(2).","last_minute_review":true}],"silver_keys":[{"id":"SK-CONTRACTS-REMEDY-MENU-01","statement":"When the choices are all dollar amounts, classify the menu before choosing: contract price, market value, zero, or spread.","type":"answer_array","trigger":"The stem supplies two dollar amounts and the choices recombine them.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"remedy_measure_menu","target_skill":"Classify dollar choices before choosing.","prompt":"A fully performing painter agreed to $9,000. The work was worth $14,000. The owner refuses to pay. Choices are $9,000, $14,000, $5,000, or $0. Which number starts as the anchor?","answer":"$9,000, the contract price."},{"drill_type":"overclaim_cut","target_skill":"Hear absolute remedy language.","prompt":"Cut this answer: ''$14,000, because reliance damages always use reasonable value.''","answer":"Cut as tiered_absolute; ''always'' overclaims and reasonable value is not automatic reliance."},{"drill_type":"wrong_element_recovery","target_skill":"Separate bad label from proper recovery.","prompt":"Why is ''nothing, because reliance is unavailable'' not responsive when the plaintiff fully performed?","answer":"Because the call asks proper recovery; the contract price remains available."},{"drill_type":"gold_key_recall","target_skill":"Recall fixed-price full-performance anchor.","prompt":"State the tiny rule for fixed price + full performance + higher market value.","answer":"Recover the fixed contract price; do not use higher reasonable value to exceed it."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '319573fd-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '17173_road_to_emmaus_puzzle_quest'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '98a6d94edfc64c0693bc6e2eb19071e91518a2f8e7812d38ce70554de43b069e'
   AND SHA2(COALESCE(question_stem, ''), 256) = '5cd8e5beefdfabcd0d239baf15f4c155fabb4d479165c16d606044e3dbcc8d03'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '09eeb191e5d35dbfe7c851b4e61b08afe267edb15ff8a72948106a1d2de3f582';
UPDATE answer_choices
   SET choice_text = '$7,800, the difference between the reasonable value of the work and the agreed fee.',
       is_correct = 0,
       forensic_tags = '["fabricated_rule","wrong_frame"]',
       misconception_tags = '["reliance_equals_market_value","reasonable_value_overrides_bargain","no_recovery_if_reliance_unavailable","spread_is_damages"]',
       why_attractive = 'The student sees two dollar figures and tries to do bar-exam arithmetic. The breaker is that no rule in this call asks for the difference between value and price.',
       why_wrong_or_correct = 'A invents a spread recovery from two stem numbers. The call asks for proper contract recovery, not a market-value-minus-price calculation.',
       future_cue = 'Ask which number the contract itself makes legally operative.',
       remediation_id = 'REM-CONTRACTS-REMEDY-MENU-01'
 WHERE question_id = '319573fd-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '0973beb4facd68d5a7147b3cc959b3e5ea140442388b8d5d8ea372790dbf7afb'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Nothing, because once Mary fully performed, reliance damages are unavailable.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["reliance_equals_market_value","reasonable_value_overrides_bargain","no_recovery_if_reliance_unavailable","spread_is_damages"]',
       why_attractive = 'The student correctly senses that reliance is not the winning remedy label. The breaker is that the answer skips the contract-price recovery and therefore answers the wrong subquestion.',
       why_wrong_or_correct = 'B reacts to the bad reliance label but skips the contract-price recovery that remains.',
       future_cue = 'After rejecting reliance, identify the affirmative recovery still available.',
       remediation_id = 'REM-CONTRACTS-REMEDY-MENU-01'
 WHERE question_id = '319573fd-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '2408ebe5e1403679fe7b4a89e378a10bcdc06708029e28e0b82f39ca08668f47'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = '$12,600, the agreed fee, because Mary fully performed and the expectation measure is readily fixed.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'C is correct. Mary fully performed under an enforceable services contract with a definite agreed fee. The call asks for her proper contract recovery, and that recovery is the agreed fee: $12,600.

Gold Key: When the plaintiff fully performs and the only thing left is the defendant’s payment of a definite contract price, the recovery is the bargain price. Do not relabel a higher market value as “reliance” to get more.

Silver Key: Read this answer set as a remedy-measure menu. The numbers are not random; they are contract price, reasonable value, zero, and the spread. Lock the call to “proper contract recovery,” then pick the number supplied by the bargain.',
       future_cue = NULL,
       remediation_id = 'REM-CONTRACTS-REMEDY-MENU-01'
 WHERE question_id = '319573fd-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = '18c69acfc58f76f36baa60ea84657148beb1a5c13d76dbc74beafef7f34e2c3d'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = '$20,400, because reliance damages always use the reasonable value of services.',
       is_correct = 0,
       forensic_tags = '["tiered_absolute","wrong_frame"]',
       misconception_tags = '["reliance_equals_market_value","reasonable_value_overrides_bargain","no_recovery_if_reliance_unavailable","spread_is_damages"]',
       why_attractive = 'The student wants to award the higher value because Mary gave work worth more than the bargain. The breaker is the Gold Key: after full performance, fixed contract price controls over reasonable-value bait.',
       why_wrong_or_correct = 'D overclaims with ''always'' and misuses reasonable value as a higher reliance measure.',
       future_cue = 'Apply the bargain-price Gold Key when fixed price and full performance appear together.',
       remediation_id = 'REM-CONTRACTS-REMEDY-MENU-01'
 WHERE question_id = '319573fd-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = '658fb94720aa28d714134cd1f753109c0fe57d71b5354ba62d7f94b3beca9b65'
   AND is_correct = 0;

-- CQ20153.md -> 20153_lampstand_labs (3168ab5d-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CONSTITUTIONAL_LAW',
       topic = 'Individual Rights',
       subtopic = 'First Amendment Protections - Freedom of religion',
       tension_point = 'automatic invalidity of aid to religious schools vs neutral secular-use aid',
       fact_pattern = 'Congress enacts the Lampstand Labs Act, which authorizes federal tax funds to buy robotics kits, digital microscopes, and portable planetarium projectors for qualifying private schools. The kits are available on identical terms to private schools with religious missions and to secular private schools. The Act states that every donated kit must be used only for secular instruction and secular academic activities.

Mary and Peter, federal taxpayers whose children attend public schools in the state, sue in federal court for an order enjoining the federal government from spending tax funds on kits that will go to Christian and other religious private schools. They argue that the spending is unconstitutional.

Should the court issue the requested injunction?',
       question_stem = 'Congress enacts the Lampstand Labs Act, which authorizes federal tax funds to buy robotics kits, digital microscopes, and portable planetarium projectors for qualifying private schools. The kits are available on identical terms to private schools with religious missions and to secular private schools. The Act states that every donated kit must be used only for secular instruction and secular academic activities.

Mary and Peter, federal taxpayers whose children attend public schools in the state, sue in federal court for an order enjoining the federal government from spending tax funds on kits that will go to Christian and other religious private schools. They argue that the spending is unconstitutional.

Should the court issue the requested injunction?

Call: Should the injunction issue?

Prediction: No. The statute is neutral between religious and secular private schools and limits the kits to secular educational use.

Adjacent-call trap: Do not answer only “religious schools receive public equipment.” The call asks whether the court should enjoin this statute.',
       call_of_question = 'Call: Should the injunction issue?

Prediction: No. The statute is neutral between religious and secular private schools and limits the kits to secular educational use.

Adjacent-call trap: Do not answer only “religious schools receive public equipment.” The call asks whether the court should enjoin this statute.',
       difficulty = 2,
       metadata = '{"source_file":"CQ20153.md","source_question_id":"20153","variant_slug":"lampstand_labs","batch":"cq-updated-copy-2026-06-20","outline_code":"44040501","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"Congress funds secular-use educational equipment for religious and nonreligious private schools on equal terms. Federal taxpayer-parents seek an injunction. Should the court stop the spending?","review_truth":"Neutral, secular-use educational aid available to religious and secular schools on equal terms is not automatically an Establishment Clause violation.","dominant_trap":null,"anchor_card":{"card_id":"REM-CONLAW-LAMPSTAND-01","title":"Neutral aid / secular-use restriction","signal":"Religious and secular schools get the same educational aid, and the statute limits use to secular instruction.","student_move":"Do not make religious-school aid per se unconstitutional. Look for neutrality and use restriction.","tiny_rule":"Neutral + secular-use school aid usually defeats the automatic Establishment Clause trap.","trap":"Public money plus religious school feels automatically invalid.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CONLAW-LAMPSTAND-01","statement":"Neutral educational aid available to religious and secular private schools on equal terms, restricted to secular use, is not automatically an Establishment Clause violation.","type":"constitutional_principle","trigger":"Public funds buy school equipment for religious and nonreligious schools on identical terms, with secular-use limits.","authority":"Mitchell v. Helms, 530 U.S. 793 (2000)","last_minute_review":true},{"id":"GK-CONLAW-LAMPSTAND-02","statement":"Federal taxpayers can have standing to challenge congressional taxing-and-spending measures alleged to violate the Establishment Clause.","type":"threshold","trigger":"Federal taxpayers sue to stop congressional spending on Establishment Clause grounds.","authority":"Flast v. Cohen, 392 U.S. 83 (1968)","last_minute_review":true},{"id":"GK-CONLAW-LAMPSTAND-03","statement":"Congress is not categorically barred from subsidizing education; the taxing-and-spending power reaches general-welfare education spending.","type":"constitutional_principle","trigger":"Answer says education is solely for states.","authority":"U.S. Const. art. I, sec. 8, cl. 1","last_minute_review":true}],"silver_keys":[{"id":"SK-CONLAW-LAMPSTAND-01","statement":"In a 2-yes / 2-no constitutional array, do not pick by result. Grade the reason after because; same result plus false reason still dies.","type":"answer_array","trigger":"Two choices say No but only one uses the statute''s secular-use fact.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"Gold Key recall","target_skill":"neutral aid","prompt":"A federal program gives secular-use science equipment to religious and secular private schools on equal terms. Automatic Establishment Clause violation?","answer":"No. Neutral + secular-use aid is not automatically invalid."},{"drill_type":"answer-array read","target_skill":"same-result wrong-reason","prompt":"Two choices say No. One says no standing; one says secular-use restriction. What do you check?","answer":"Grade the because; same result is not enough."},{"drill_type":"overclaim detector","target_skill":"states-only language","prompt":"Answer says education is solely a state function. What is the C3 signal?","answer":"Solely is the overclaim signal; check spending-power anchor."},{"drill_type":"threshold trap","target_skill":"Flast standing","prompt":"Federal taxpayers challenge congressional spending as violating the Establishment Clause. Standing absent?","answer":"No. Flast supplies the taxpayer-standing anchor."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '3168ab5d-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '20153_lampstand_labs'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '0177bac5cc80973e1f5cdb05502fae0674aa543e327e0d7c177dd93e3683a6f4'
   AND SHA2(COALESCE(question_stem, ''), 256) = 'f52417f7de3033974ea5b5f1557dccf024524ff5ac6350fec3e946bb52ae8342'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '40cec2d4d8f612e35c1a487f75bb9356b04733ef237166688cbf85cd4e4bcafe';
UPDATE answer_choices
   SET choice_text = 'Yes, because education is solely a matter for the states.',
       is_correct = 0,
       forensic_tags = '["tiered_absolute","wrong_frame"]',
       misconception_tags = '["all_public_aid_to_religious_schools_invalid","education_is_states_only","taxpayers_never_have_standing","right_result_means_right_answer"]',
       why_attractive = 'Education feels local, so a states-only answer sounds constitutionally serious. The breaker is that solely overclaims against Congress''s spending power.',
       why_wrong_or_correct = 'The states-only education reason overclaims. Spending-power doctrine kills it.',
       future_cue = 'Apply spending-power Gold Key before accepting states-only language.',
       remediation_id = 'REM-CONLAW-LAMPSTAND-01'
 WHERE question_id = '3168ab5d-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '60f5ab0f21d3b73dc0a6f00a99f5ddf0c47dee0c54d32686953c56ea92b087d5'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'No, because the Act restricts the donated kits to secular educational use.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'B is correct. The injunction should not issue because the statute is structured as a neutral educational-aid program: religious and secular private schools are treated alike, and the donated kits are restricted to secular educational use.

Gold Key: Neutral aid to religious and nonreligious private schools is not automatically an Establishment Clause violation when the program uses neutral criteria and restricts aid to secular, nonideological use. Silver Key: Do not pick by the Yes/No result alone; grade the “because.” C has the right result but a bad threshold reason. B gives the merits reason that fits the statute.

In *Mitchell v. Helms*, the Court upheld a similar school-aid program where materials and equipment went to religious and nonreligious schools under neutral criteria and the aid was restricted to secular, neutral, nonideological use. ([Justia Law][1])',
       future_cue = NULL,
       remediation_id = 'REM-CONLAW-LAMPSTAND-01'
 WHERE question_id = '3168ab5d-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '0fc7584a0c3bde087165bc73ca5038c8b4783e26afd4826c1ee013d5a91a3bc8'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'No, because Mary and Peter lack standing to challenge federal spending.',
       is_correct = 0,
       forensic_tags = '["flat_misstatement","procedural_frame"]',
       misconception_tags = '["all_public_aid_to_religious_schools_invalid","education_is_states_only","taxpayers_never_have_standing","right_result_means_right_answer"]',
       why_attractive = 'Standing is a powerful threshold, and threshold answers often beat merits answers. The breaker is the Establishment Clause taxpayer-standing Gold Key.',
       why_wrong_or_correct = 'The no-standing threshold is false for this Establishment Clause spending challenge.',
       future_cue = 'Use the taxpayer-standing Gold Key; same result with false reason dies.',
       remediation_id = 'REM-CONLAW-LAMPSTAND-01'
 WHERE question_id = '3168ab5d-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = '3c5c564b18cb1ecc160990e53a2fbc819be23c94a889eb1a1b3840f2ef216627'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Yes, because using public funds to buy equipment for religious private schools violates the Establishment Clause.',
       is_correct = 0,
       forensic_tags = '["tiered_absolute"]',
       misconception_tags = '["all_public_aid_to_religious_schools_invalid","education_is_states_only","taxpayers_never_have_standing","right_result_means_right_answer"]',
       why_attractive = 'Public funds going to religious schools feels like the core Establishment Clause problem. The breaker is the neutral secular-use aid Gold Key.',
       why_wrong_or_correct = 'The Establishment Clause answer overclaims by treating religious-school aid as automatically invalid.',
       future_cue = 'Apply the neutral-aid Gold Key and ask whether the answer ignores the secular-use condition.',
       remediation_id = 'REM-CONLAW-LAMPSTAND-01'
 WHERE question_id = '3168ab5d-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = '441689a64048d53ba4c53882ad79844a776a27296ea90107b8ced117ae00a022'
   AND is_correct = 0;

-- CQ20213.md -> 20213_mercy_pool_reliction (326fc669-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'REAL_PROPERTY',
       topic = 'Estates and conveyancing',
       subtopic = 'O-4',
       tension_point = 'adjoining owner vs public/far-side/no-private owner',
       fact_pattern = 'Ruth owns a private olive-grove retreat along the east edge of Mercy Pool, a spring-fed oasis lake where her family holds Sunday hymn picnics. Barnabas owns land on the far west edge. Over 11 years, Mercy Pool’s waterline naturally crept back from Ruth’s side, little by little, leaving a dry crescent of ground between Ruth’s old waterline and the current waterline. The change was natural and gradual.

Under the usual rule, who owns the newly exposed crescent of land?',
       question_stem = 'Ruth owns a private olive-grove retreat along the east edge of Mercy Pool, a spring-fed oasis lake where her family holds Sunday hymn picnics. Barnabas owns land on the far west edge. Over 11 years, Mercy Pool’s waterline naturally crept back from Ruth’s side, little by little, leaving a dry crescent of ground between Ruth’s old waterline and the current waterline. The change was natural and gradual.

Under the usual rule, who owns the newly exposed crescent of land?

Call: identify the owner under the usual rule.
Prediction: the adjoining owner gets it if the recession was gradual and natural. Ruth is the adjoining owner.',
       call_of_question = 'Call: identify the owner under the usual rule.
Prediction: the adjoining owner gets it if the recession was gradual and natural. Ruth is the adjoining owner.',
       difficulty = 2,
       metadata = '{"source_file":"CQ20213.md","source_question_id":"20213","variant_slug":"mercy_pool_reliction","batch":"cq-updated-copy-2026-06-20","outline_code":"82010000","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"Water gradually and naturally recedes from the edge of a private littoral parcel, exposing attached dry land. Who owns the exposed land?","review_truth":"Gradual natural reliction moves the water boundary; the adjoining littoral owner gets the exposed land.","dominant_trap":null,"anchor_card":{"card_id":"RP-ANCHOR-RELICTION-01","title":"Reliction: gradual retreat adds land to the adjoining owner","signal":"Water gradually and naturally recedes, exposing new dry land.","student_move":"Find which parcel the exposed strip touches.","tiny_rule":"Gradual natural reliction generally gives exposed land to the adjoining littoral owner.","trap":"State-forever, auction, or far-side-owner answers.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-REAL_PROPERTY-RELICTION-01","statement":"Gradual natural recession of water generally moves the water boundary; the exposed land belongs to the adjoining riparian or littoral owner.","type":"rule","trigger":"natural gradual recession exposing dry land attached to a water-adjacent parcel","authority":"Cornell Wex reliction; Nebraska v. Iowa gradual-change boundary principle","last_minute_review":true}],"silver_keys":[{"id":"SK-REAL_PROPERTY-RELICTION-01","statement":"For water-boundary ownership arrays, lock two facts before reading policy-sounding answers: gradual or sudden, and which parcel the exposed land touches.","type":"answer_array","trigger":"four choices name different owners of newly exposed waterfront land","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"anchor_recall","target_skill":"reliction owner-axis","prompt":"Water naturally and gradually recedes from a private lakefront parcel and exposes land attached to that parcel. Who owns the exposed land?","answer":"The adjoining littoral owner."},{"drill_type":"overclaim_cut","target_skill":"public-forever absolute","prompt":"Cut or keep: all land once covered by a lake remains public forever.","answer":"Cut: tiered_absolute overclaim."},{"drill_type":"answer_array","target_skill":"adjacency vs direction","prompt":"Two owners are on opposite sides of a lake. Water recedes from Owner 1’s side and exposes a strip attached to Owner 1’s land. Does the far-side owner get it because the water moved that direction?","answer":"No. The adjoining owner gets it under the reliction anchor."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '326fc669-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '20213_mercy_pool_reliction'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '04873db9fe26d9267bd2867957bcce6bca83aef06eae23a7cf65fa615f64e207'
   AND SHA2(COALESCE(question_stem, ''), 256) = 'e8fbc6fc16f245de04abb07c90b1fbe709275c4bf9e5345f48a37c0a50f904f3'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '9d96514fba105973f51539f49088861f93b566594385e72881c0971db2ef1616';
UPDATE answer_choices
   SET choice_text = 'No private owner, because exposed land created by reliction must be auctioned before anyone owns it.',
       is_correct = 0,
       forensic_tags = '["fabricated_rule"]',
       misconception_tags = '["state_owns_all_former_waterbeds","recession_direction_controls","auction_required_for_new_land"]',
       why_attractive = 'The answer sounds official because an auction feels like a clean way to allocate newly exposed land. The breaker is that the auction step is not the usual reliction rule.',
       why_wrong_or_correct = 'The auction step is invented and fails once the reliction anchor is applied.',
       future_cue = 'Cut added procedures that are not part of the reliction anchor.',
       remediation_id = 'RP-ANCHOR-RELICTION-01'
 WHERE question_id = '326fc669-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'fe0cffca3eb0c58ea5f816651f133c5938e6392a66eef9492521a96832e7394b'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Ruth, because gradual reliction generally shifts the water-boundary and adds the exposed land to the adjoining littoral parcel.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'B is correct. The key facts are gradual natural recession and exposed land attached to Ruth’s side of the water. Gold Key: gradual reliction generally moves the water boundary, so the newly exposed land belongs to the adjoining littoral owner. Silver Key: in a water-boundary ownership array, lock the two facts first: gradual change plus which parcel the exposed strip touches. Ruth’s parcel touches the exposed crescent, so Ruth owns it.',
       future_cue = NULL,
       remediation_id = 'RP-ANCHOR-RELICTION-01'
 WHERE question_id = '326fc669-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'df11bf30ae59190fcb46604d4f428431835e9fd605c8649a0bcafcf1628907f1'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'The state, because all land once covered by Mercy Pool remains public forever.',
       is_correct = 0,
       forensic_tags = '["tiered_absolute"]',
       misconception_tags = '["state_owns_all_former_waterbeds","recession_direction_controls","auction_required_for_new_land"]',
       why_attractive = 'The answer leans on the public-water instinct and sounds safe because the land was once under water. The breaker is the all/forever overclaim, which the reliction anchor defeats.',
       why_wrong_or_correct = 'The all/forever wording overclaims and the reliction anchor supplies the exception.',
       future_cue = 'Treat all/forever as an overclaim and apply the reliction Gold Key.',
       remediation_id = 'RP-ANCHOR-RELICTION-01'
 WHERE question_id = '326fc669-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'f18d7b243542beffa13a5df12f6feade9bbae6e245c94c5e41d6f35cd447f990'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Barnabas, because Mercy Pool receded in the direction of his far-side land.',
       is_correct = 0,
       forensic_tags = '["flat_misstatement","wrong_frame"]',
       misconception_tags = '["state_owns_all_former_waterbeds","recession_direction_controls","auction_required_for_new_land"]',
       why_attractive = 'The answer gives Barnabas a plausible directional story because the water retreated toward the far side. The breaker is that ownership follows adjacency to the exposed land, not the direction of retreat.',
       why_wrong_or_correct = 'The choice uses direction of recession instead of adjacency to the exposed strip.',
       future_cue = 'Ask which parcel adjoins the exposed strip.',
       remediation_id = 'RP-ANCHOR-RELICTION-01'
 WHERE question_id = '326fc669-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'dcfdc937e90d35686c273f0c2d7efcc459d871d0635104d41a9669e2a6a13087'
   AND is_correct = 0;

-- CQ20353.md -> 20353_baptism_tank_burst (314d1cf1-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CIVIL_PROCEDURE',
       topic = 'Subject Matter Jurisdiction',
       subtopic = 'Supplemental Jurisdiction - Defendant Claims',
       tension_point = NULL,
       fact_pattern = 'In a federal diversity action, Lydia, a citizen of State A, sues Barnabas, a citizen of State B, for $120,000 after Barnabas’s privately owned portable baptism-tank display burst at a Christian handbell expo and ruined Lydia’s sound equipment. Barnabas counterclaims against Lydia for $18,000 for damage to the tank display from the same burst. The counterclaim has no independent amount in controversy.

May the federal court hear the counterclaim?',
       question_stem = 'In a federal diversity action, Lydia, a citizen of State A, sues Barnabas, a citizen of State B, for $120,000 after Barnabas’s privately owned portable baptism-tank display burst at a Christian handbell expo and ruined Lydia’s sound equipment. Barnabas counterclaims against Lydia for $18,000 for damage to the tank display from the same burst. The counterclaim has no independent amount in controversy.

May the federal court hear the counterclaim?

Call: court power to hear the counterclaim.
Adjacent traps: amount in controversy for every claim; federal-question jurisdiction; overreading §1367(b).
Prediction: yes, because the counterclaim is defendant-side and same-event.',
       call_of_question = 'Call: court power to hear the counterclaim.
Adjacent traps: amount in controversy for every claim; federal-question jurisdiction; overreading §1367(b).
Prediction: yes, because the counterclaim is defendant-side and same-event.',
       difficulty = 2,
       metadata = '{"source_file":"CQ20353.md","source_question_id":"20353","variant_slug":"baptism_tank_burst","batch":"cq-updated-copy-2026-06-20","outline_code":"94010300","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"In a diversity case with a proper $120,000 anchor claim, may the court hear a defendant''s $18,000 counterclaim against the plaintiff when it arises from the same incident?","review_truth":"A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000.","dominant_trap":null,"anchor_card":{"card_id":"CIV-REM-20353-DEFENDANT-COUNTERCLAIM","title":"Defendant counterclaim under supplemental jurisdiction","signal":"Diversity anchor claim plus low-value defendant counterclaim from the same incident.","student_move":"Check whether the low-value claim is defendant-side and same occurrence before applying §1367(b).","tiny_rule":"Same-event defendant counterclaims may ride §1367(a); §1367(b) is plaintiff-side.","trap":"Treating every low-value diversity claim as independently barred.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CIVIL_PROCEDURE-DEFENDANT_COUNTERCLAIM-01","statement":"In a diversity case, a defendant''s same-transaction counterclaim can use supplemental jurisdiction even below $75,000 unless a specific plaintiff-side §1367(b) bar applies.","type":"rule","trigger":"Defendant counterclaim + same incident + no independent amount in controversy.","authority":"28 U.S.C. §1367(a)-(b); Fed. R. Civ. P. 13(a)(1).","last_minute_review":true}],"silver_keys":[{"id":"SK-CIVIL_PROCEDURE-SUPP_COUNTERCLAIM_ARRAY-01","statement":"Read the array as result plus jurisdictional reason. A ''yes'' answer is not enough; the reason must be same-event supplemental jurisdiction, not federal question.","type":"answer_array","trigger":"A counterclaim in a diversity case with no independent amount.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"CUT","target_skill":"tiered_absolute","prompt":"A diversity anchor claim is for $110,000. The defendant asserts a $12,000 same-incident counterclaim. Cut: ''No, each claim must independently exceed $75,000.''","answer":"CUT as tiered_absolute after Gold Key."},{"drill_type":"CUT","target_skill":"misfit","prompt":"A counterclaim arises from the same incident but no federal statute appears. Cut: ''Yes, because the counterclaim presents a federal question.''","answer":"CUT as misfit / wrong_frame."},{"drill_type":"anchor","target_skill":"supplemental_jurisdiction_defendant_counterclaim","prompt":"State the Gold Key for a same-event defendant counterclaim below $75,000 in a diversity case.","answer":"It can use supplemental jurisdiction unless a specific plaintiff-side §1367(b) bar applies."},{"drill_type":"answer_array","target_skill":"result_reason_match","prompt":"Two answers say yes; one says federal question, one says same Article III case. The stem gives only same-incident facts. Which yes survives?","answer":"The same Article III case answer."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '314d1cf1-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '20353_baptism_tank_burst'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = 'e46ab9bf08c35816b57b88927ac99638a923582eef0095339a1c9a5a1c32a66c'
   AND SHA2(COALESCE(question_stem, ''), 256) = 'cb786388761d20d7baca784e1d4f71100b89357020de61c0f8291478a2b5361d'
   AND SHA2(COALESCE(call_of_question, ''), 256) = 'fbb54344292f1345a1fa420d709ca8eab8a16dffef94063673b68f7f827892d6';
UPDATE answer_choices
   SET choice_text = 'No, because Section 1367(b) bars all low-value or nondiverse counterclaims by defendants in diversity cases.',
       is_correct = 0,
       forensic_tags = '["tiered_absolute","wrong_frame"]',
       misconception_tags = '["every_claim_must_exceed_75000","section_1367b_bars_all_low_value_claims","federal_question_is_any_federal_court_case","correct_result_wrong_reason"]',
       why_attractive = 'The student sees Section 1367(b) and assumes the specific statute must be the sophisticated answer. The breaker is that the answer expands plaintiff-side limits into an all-defendant-claim bar.',
       why_wrong_or_correct = 'Over-expands Section 1367(b) into an all-defendant-counterclaim bar.',
       future_cue = 'Say the Gold Key: defendant same-event counterclaims may ride supplemental jurisdiction.',
       remediation_id = 'CIV-REM-20353-DEFENDANT-COUNTERCLAIM'
 WHERE question_id = '314d1cf1-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '2e8081012d59e822be0f2126f6b8715a80ba43f442a4683e4083d5957a6768e1'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Yes, but only because the counterclaim presents a federal question.',
       is_correct = 0,
       forensic_tags = '["misfit","wrong_frame"]',
       misconception_tags = '["every_claim_must_exceed_75000","section_1367b_bars_all_low_value_claims","federal_question_is_any_federal_court_case","correct_result_wrong_reason"]',
       why_attractive = 'The student senses the court can hear the counterclaim and accepts the first yes answer. The breaker is that no federal-law fact appears, so the yes reason is the wrong jurisdictional hook.',
       why_wrong_or_correct = 'Uses a federal-question reason when the stem supplies a same-event supplemental-jurisdiction hook.',
       future_cue = 'Ask whether the stem gives federal law; if not, use the same-event hook.',
       remediation_id = 'CIV-REM-20353-DEFENDANT-COUNTERCLAIM'
 WHERE question_id = '314d1cf1-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'e2b331c1ab2c82753b69100d2348e8148790935e2f5db124967c6a4231c30cae'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'No, because each claim in a diversity case must independently exceed $75,000.',
       is_correct = 0,
       forensic_tags = '["tiered_absolute"]',
       misconception_tags = '["every_claim_must_exceed_75000","section_1367b_bars_all_low_value_claims","federal_question_is_any_federal_court_case","correct_result_wrong_reason"]',
       why_attractive = 'The student remembers the $75,000 diversity threshold and applies it to every claim. The breaker is the word each, because supplemental jurisdiction can carry a related defendant counterclaim below the threshold.',
       why_wrong_or_correct = 'Turns the diversity amount threshold into an every-claim independent-amount rule.',
       future_cue = 'Separate the anchor diversity claim from a related counterclaim riding supplemental jurisdiction.',
       remediation_id = 'CIV-REM-20353-DEFENDANT-COUNTERCLAIM'
 WHERE question_id = '314d1cf1-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'ef2972aed71dca3953f85ababdeb1bf3a7be7eee6a16b10b1402ce6ccb6ec010'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Yes, because the counterclaim arises from the same burst and forms part of the same Article III case.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'D is correct. The counterclaim is by the defendant against the existing plaintiff, and it comes from the same burst that supports the anchor diversity claim. Gold Key: a same-transaction defendant counterclaim can ride supplemental jurisdiction even if it is below $75,000, unless a specific §1367(b) plaintiff-side bar applies. Silver Key: match the “yes” answer to the correct jurisdictional hook; here, the hook is same-event supplemental jurisdiction, not federal-question jurisdiction.',
       future_cue = NULL,
       remediation_id = 'CIV-REM-20353-DEFENDANT-COUNTERCLAIM'
 WHERE question_id = '314d1cf1-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = '93ad35ffeeecd02f91e5c2807c288a3efd49b68b503fa4f71620ff81b1e67a9d'
   AND is_correct = 1;

-- CQ20439.md -> 20439_floating_star_driveway (328d9604-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'TORTS',
       topic = 'Negligence',
       subtopic = 'Standard of Due Care / Best Argument',
       tension_point = NULL,
       fact_pattern = 'Timothy was walking on the public sidewalk past Lydia’s house on Saturday morning. Lydia, a professional director of children’s Christmas pageants, was rehearsing a “floating star” scene for a neighborhood Advent program. She tested a rented battery-powered cable rig in her open driveway beside the sidewalk. A defect in the rig caused a plywood star to swing outside the driveway and strike Timothy.

If Timothy asserts a claim against Lydia, Timothy’s most effective argument in support of his claim would be that',
       question_stem = 'Timothy was walking on the public sidewalk past Lydia’s house on Saturday morning. Lydia, a professional director of children’s Christmas pageants, was rehearsing a “floating star” scene for a neighborhood Advent program. She tested a rented battery-powered cable rig in her open driveway beside the sidewalk. A defect in the rig caused a plywood star to swing outside the driveway and strike Timothy.

If Timothy asserts a claim against Lydia, Timothy’s most effective argument in support of his claim would be that

Call lock: best argument for the injured walker.

Prediction: look for a liability basis. The answer should say what Lydia did wrong, not merely that she is a professional, used a defective product, or helped cause the harm.',
       call_of_question = 'Call lock: best argument for the injured walker.

Prediction: look for a liability basis. The answer should say what Lydia did wrong, not merely that she is a professional, used a defective product, or helped cause the harm.',
       difficulty = 2,
       metadata = '{"source_file":"CQ20439.md","source_question_id":"20439","variant_slug":"floating_star_driveway","batch":"cq-updated-copy-2026-06-20","outline_code":"61020201","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"A professional pageant director uses a defective stage rig in an exposed driveway and a passerby is hurt. Which argument best supports the passerby’s tort claim?","review_truth":"A tort claim needs an operative liability basis; unreasonable conduct can supply negligence, while product defect, causation, or professional status alone does not.","dominant_trap":null,"anchor_card":{"card_id":"REM-TORTS-20439-01","title":"Cause/status/product are not the claim","signal":"A Torts answer names only cause, status, or product defect.","student_move":"Ask whether the answer supplies a liability basis.","tiny_rule":"For negligence, look for unreasonable conduct.","trap":"Choosing a legally flavored fragment instead of the operative ground.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-TORTS-USER-SUPPLIER-01","statement":"Strict products liability for a defective product is aimed at commercial sellers or distributors, not a person who merely uses the product.","type":"distinction","trigger":"Defendant is using/testing/operating a product rather than selling or distributing it.","authority":"Restatement (Third) of Torts: Products Liability § 1","last_minute_review":true},{"id":"GK-TORTS-FAULT-BASIS-01","statement":"Cause and status are not enough; the plaintiff’s argument must supply negligence, intent, or a strict-liability category. Unreasonable conduct supplies the negligence route.","type":"threshold","trigger":"Best-argument tort call with status/cause/product fragments","authority":"Restatement (Third) of Torts: Liability for Physical and Emotional Harm § 3","last_minute_review":true}],"silver_keys":[{"id":"SK-TORTS-BEST-ARGUMENT-01","statement":"On a best-argument call, pick the answer that gives the plaintiff a legal route to liability; do not require the answer to prove the whole case.","type":"call_focus","trigger":"The call asks for the claimant’s most effective argument.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"CUT","target_skill":"wrong_element","prompt":"A Torts answer says only that the defendant’s act was a concurring cause. Cut or keep?","answer":"Cut unless another part of the answer supplies negligence, intent, or strict liability."},{"drill_type":"CUT","target_skill":"bait_doctrine","prompt":"A passerby is injured by a defective device used by a pageant director. The answer says the director is strictly liable for using a defective product. Cut or keep?","answer":"Cut; strict products liability targets commercial sellers or distributors, not mere users."},{"drill_type":"CALL","target_skill":"call_focus","prompt":"The call asks for the plaintiff’s most effective argument. One answer gives possible unreasonable conduct; another gives only causation. Which wins?","answer":"The unreasonable-conduct answer."},{"drill_type":"ANCHOR","target_skill":"negligence reasonableness","prompt":"Which phrase best supplies negligence: professional status, concurring cause, unreasonable conduct, or product defect?","answer":"Unreasonable conduct."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '328d9604-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '20439_floating_star_driveway'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = 'e5482709f456f3025fa3eee1ec58a8d3cb70bbad87c4f47f05451064346601b3'
   AND SHA2(COALESCE(question_stem, ''), 256) = 'd4e950502af64c3916cba6394c8b16122f66398da019cdd7125939c953dcc9db'
   AND SHA2(COALESCE(call_of_question, ''), 256) = 'e8b78f4452e01ade4477c780b9607e5ac3ff5771a76f7a2d4a56fc209f6c5645';
UPDATE answer_choices
   SET choice_text = 'Lydia was a professional Christmas-pageant director.',
       is_correct = 0,
       forensic_tags = '["wrong_element"]',
       misconception_tags = '["cause_equals_liability","professional_equals_breach","defective_product_equals_any_user_strictly_liable"]',
       why_attractive = 'The professional title sounds like it carries a higher legal duty. The breaker is that the answer never says Lydia breached any professional or ordinary standard.',
       why_wrong_or_correct = 'Professional status does not supply breach.',
       future_cue = 'Ask what the professional did unreasonably.',
       remediation_id = 'REM-TORTS-20439-01'
 WHERE question_id = '328d9604-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '72e91456f0380162fdf94250502752f7d953084e714f6499bc7852f7f0732255'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Lydia’s conduct was a concurring cause of Timothy’s harm.',
       is_correct = 0,
       forensic_tags = '["wrong_element"]',
       misconception_tags = '["cause_equals_liability","professional_equals_breach","defective_product_equals_any_user_strictly_liable"]',
       why_attractive = 'Causation sounds like the missing link in a tort case. The breaker is that causation without negligence, intent, or strict liability is only a fragment.',
       why_wrong_or_correct = 'Causation alone does not supply a liability basis.',
       future_cue = 'Add the question: cause plus what fault or strict-liability category?',
       remediation_id = 'REM-TORTS-20439-01'
 WHERE question_id = '328d9604-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '7a1d74a03ed8353e3902b0ebd6bcf37372fa2dbde6a95efc66fbd86a23e6f7b0'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'It was unreasonable for Lydia to test the cable rig in her open driveway beside a public sidewalk.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'C is correct. Timothy’s strongest listed argument is that Lydia acted unreasonably by testing the cable rig in an open driveway beside a public sidewalk. Gold Key: negligence needs an unreasonable-risk theory; here, the argument supplies a fault basis instead of merely pointing to a product, a cause, or Lydia’s professional title. Silver Key: on a “most effective argument” call, do not demand a guaranteed win. Choose the only answer that gives the plaintiff a legally operative route to liability.',
       future_cue = NULL,
       remediation_id = 'REM-TORTS-20439-01'
 WHERE question_id = '328d9604-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'e8f9e76dfd0cb81d0436213a87b43c8e26eb8555b7ed0b0881b18e2af7dc7fb6'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'Lydia is strictly liable for harm resulting from her use of a defective product.',
       is_correct = 0,
       forensic_tags = '["bait_doctrine","wrong_frame"]',
       misconception_tags = '["cause_equals_liability","professional_equals_breach","defective_product_equals_any_user_strictly_liable"]',
       why_attractive = 'Strict liability and defective-product language sound powerful because they reduce the need to prove fault. The breaker is that Lydia is a user of the rig, not the commercial supplier or distributor.',
       why_wrong_or_correct = 'Strict products liability is aimed at commercial sellers or distributors, not a mere user.',
       future_cue = 'Use GK-TORTS-USER-SUPPLIER-01.',
       remediation_id = 'REM-TORTS-20439-01'
 WHERE question_id = '328d9604-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = '05f1a9ff9bddc8984f1fd21ee94323f66a1a96f072c969c04f7dbea2d7deb758'
   AND is_correct = 0;

-- CQ20569.md -> 20569_ark_float (319f923c-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CONTRACTS',
       topic = 'Conditions — Express conditions',
       subtopic = 'V-A2',
       tension_point = 'exact stated terminating event vs neighboring contract doctrines',
       fact_pattern = 'Lydia rented her hand-painted Noah’s Ark parade float to Ruth for a private neighborhood Bible-verse parade. The rental agreement stated, “The float rental remains effective unless the city engineer limits the float’s permitted load below 1,200 pounds before parade day.” The day before the parade, the city engineer issued an order limiting the float’s permitted load to 700 pounds. Lydia refused to provide the float.

Which statement is most accurate?',
       question_stem = 'Lydia rented her hand-painted Noah’s Ark parade float to Ruth for a private neighborhood Bible-verse parade. The rental agreement stated, “The float rental remains effective unless the city engineer limits the float’s permitted load below 1,200 pounds before parade day.” The day before the parade, the city engineer issued an order limiting the float’s permitted load to 700 pounds. Lydia refused to provide the float.

Which statement is most accurate?

Call: Which statement is most accurate about Lydia’s refusal?

Prediction: Lydia likely did not breach because the contract’s “unless” event happened before parade day.',
       call_of_question = 'Call: Which statement is most accurate about Lydia’s refusal?

Prediction: Lydia likely did not breach because the contract’s “unless” event happened before parade day.',
       difficulty = 2,
       metadata = '{"source_file":"CQ20569.md","source_question_id":"20569","variant_slug":"ark_float","batch":"cq-updated-copy-2026-06-20","outline_code":"56050102","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"A contract says an existing rental ends if a specified official order lowers a safety limit below a set threshold before the event. The order happens. Did the owner breach by refusing to provide the item?","review_truth":"An existing contract duty can be discharged by a later ''unless'' event stated in the contract.","dominant_trap":null,"anchor_card":{"card_id":"RM-CONTRACTS-CONDITION-SUBSEQUENT-01","title":"Unless-trigger cuts off duty","signal":"Contract says ''remains effective unless'' or similar.","student_move":"Track the exact trigger and timing before defaulting to breach, impossibility, or substantial performance.","tiny_rule":"If the terminating event happened, the duty is cut off.","trap":"Treating initial effectiveness as permanent.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CONTRACTS-ARK-FLOAT-01","statement":"A condition subsequent is a later event that cuts off an existing contractual duty when the contract says that event will end the duty.","type":"rule","trigger":"remains effective unless","authority":null,"last_minute_review":true}],"silver_keys":[{"id":"SK-CONTRACTS-ARK-FLOAT-01","statement":"When a contract gives an exact ''unless'' trigger, do not let choices swap in a broader doctrine like impossibility or substantial performance.","type":"trap_spotting","trigger":"answer uses a different doctrine than the clause''s stated event","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"cut","target_skill":"wrong-frame trigger swap","prompt":"A contract says a duty remains effective unless Event X happens. Event X happens. A choice says breach unless performance was impossible. Cut or keep?","answer":"Cut. It swaps Event X for impossibility."},{"drill_type":"anchor","target_skill":"condition subsequent","prompt":"What does a later ''unless'' event do to an existing duty when the contract says it ends the duty?","answer":"It discharges the duty."},{"drill_type":"call_prediction","target_skill":"timeline discipline","prompt":"The contract was effective when signed, but the stated later terminating event occurred before performance. Which fact is dispositive?","answer":"The later terminating event."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '319f923c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '20569_ark_float'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = 'd9297af762567603147af6e1f31526448fa75fff01853e1a18baa48691d258ba'
   AND SHA2(COALESCE(question_stem, ''), 256) = 'e67c1a0ee21c51ad228089356d347468b396a29ab883b1ac861ccd9703aafdad'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '395a03d6a4a0fed8bf503897ef727bf80a859e64c1c110b41cf4e4377ffa0dfb';
UPDATE answer_choices
   SET choice_text = 'Lydia breached unless the city engineer’s order made use of the float impossible.',
       is_correct = 0,
       forensic_tags = '["bait_doctrine","wrong_frame"]',
       misconception_tags = '["initial_effectiveness_means_permanent_duty","impossibility_required_for_discharge","substantial_performance_overrides_condition"]',
       why_attractive = 'The student reaches for impossibility because it sounds like a familiar excuse doctrine. The breaker is that the contract already named a different terminating event.',
       why_wrong_or_correct = 'This choice replaces the contract''s below-threshold order trigger with impossibility.',
       future_cue = 'Ask: what event did the contract itself say would end the rental?',
       remediation_id = 'RM-CONTRACTS-CONDITION-SUBSEQUENT-01'
 WHERE question_id = '319f923c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'a0249b9457041afd2698d94259f5e2e3fe4582f87ae2865152d49eec7b0b3a5f'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Lydia’s duty to provide the float was discharged by the condition subsequent stated in the rental agreement.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'B is correct. The rental agreement was already effective, but it contained an “unless” event that would end Lydia’s duty if it occurred before parade day. That event occurred: the city engineer lowered the permitted load below the contract’s threshold before the parade.

Gold Key: A condition subsequent is a later event that cuts off an existing duty.

Silver Key: Do not replace the contract’s stated “unless” trigger with a different doctrine. If the trigger happened, the contract clause does the work.',
       future_cue = NULL,
       remediation_id = 'RM-CONTRACTS-CONDITION-SUBSEQUENT-01'
 WHERE question_id = '319f923c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'e77246b35ad3c1725a7dbfdc4bcb18c2c65774041a478a49479209c3244ed078'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'Ruth may compel delivery of the float because substantial performance of the parade plan is enough.',
       is_correct = 0,
       forensic_tags = '["bait_doctrine","wrong_frame"]',
       misconception_tags = '["initial_effectiveness_means_permanent_duty","impossibility_required_for_discharge","substantial_performance_overrides_condition"]',
       why_attractive = 'The student reaches for substantial performance because it sounds like a forgiving contracts rule. The breaker is that Ruth''s performance plan does not decide Lydia''s duty after the stated condition occurred.',
       why_wrong_or_correct = 'This choice replaces the duty-discharge question with substantial performance of the parade plan.',
       future_cue = 'Return to Lydia''s duty to provide the float after the order.',
       remediation_id = 'RM-CONTRACTS-CONDITION-SUBSEQUENT-01'
 WHERE question_id = '319f923c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = '0355515974de1b5a8554ffc207425c3ecb53152fda4aefa2d8612a37f98c8c57'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Lydia breached because the float rental was already effective when signed.',
       is_correct = 0,
       forensic_tags = '["wrong_element"]',
       misconception_tags = '["initial_effectiveness_means_permanent_duty","impossibility_required_for_discharge","substantial_performance_overrides_condition"]',
       why_attractive = 'The student sees that the rental was effective at signing and treats that as enough. The breaker is that the later ''unless'' event is the dispositive fact.',
       why_wrong_or_correct = 'This choice answers whether the rental was initially effective, not what happened after the later trigger.',
       future_cue = 'Continue from signing to the later city-engineer order.',
       remediation_id = 'RM-CONTRACTS-CONDITION-SUBSEQUENT-01'
 WHERE question_id = '319f923c-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'a51af517a9a2081d7908888f15d447b0fa82999f183925078b59b43a108d4dd2'
   AND is_correct = 0;

-- CQ20598.md -> 20598_write_it_on_your_heart (328ebe01-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'TORTS',
       topic = 'Privacy',
       subtopic = 'Appropriation of identity',
       tension_point = 'identity-use/commercial-consent answer vs extra-condition traps',
       fact_pattern = 'Ruth is a nationally known Christian calligraphy teacher whose short devotional videos are instantly recognized by her turquoise headscarf, sand-timer necklace, whispery cadence, spiral hand-lettering flourish, and catchphrase, “write it on your heart.” Peter’s private Bible-memory app company hired Lydia, an actress and animator, to recreate those traits in a paid social-media ad for the app. The ad never used Ruth’s legal name or photograph, and Ruth did not consent. Commenters overwhelmingly understood the ad’s guide character to be Ruth. Ruth sues Peter’s company for appropriation.

Call:',
       question_stem = 'Ruth is a nationally known Christian calligraphy teacher whose short devotional videos are instantly recognized by her turquoise headscarf, sand-timer necklace, whispery cadence, spiral hand-lettering flourish, and catchphrase, “write it on your heart.” Peter’s private Bible-memory app company hired Lydia, an actress and animator, to recreate those traits in a paid social-media ad for the app. The ad never used Ruth’s legal name or photograph, and Ruth did not consent. Commenters overwhelmingly understood the ad’s guide character to be Ruth. Ruth sues Peter’s company for appropriation.

Call:

Should a court rule for Ruth?',
       call_of_question = 'Should a court rule for Ruth?',
       difficulty = 3,
       metadata = '{"source_file":"CQ20598.md","source_question_id":"20598","variant_slug":"write_it_on_your_heart","batch":"cq-updated-copy-2026-06-20","outline_code":"62050402","outline_code_verified":true,"difficulty_band":"medium-hard","deciding_phase":"CUT","confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"A company uses a clearly recognizable imitation of a person’s identity in a product ad without consent and without using the person’s name or photograph. Does appropriation lie?","review_truth":"Appropriation can rest on unauthorized commercial use of recognizable identity; exact name/photo, insult, and false statement are not required.","dominant_trap":"D","anchor_card":{"card_id":"REM-TORTS-APPROPRIATION-IDENTITY-01","title":"Name/photo trap in appropriation","signal":"The stem says no exact name or photograph, but many identity cues are copied.","student_move":"Do not require exact name/photo. Ask whether the ad clearly uses the plaintiff’s identity for commercial advantage without consent.","tiny_rule":"Recognizable commercial evocation can be enough.","trap":"Exact-name/photo-only answer.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-TORTS-APPROPRIATION-IDENTITY-01","statement":"Appropriation is not limited to exact name or photograph. A clearly recognizable, unauthorized commercial evocation of the plaintiff’s identity can be enough.","type":"distinction","trigger":"Ad uses a lookalike, soundalike, persona, or identity cues to sell a product.","authority":"Restatement (Second) of Torts § 652C; Midler v. Ford Motor Co., 849 F.2d 460 (9th Cir. 1988).","last_minute_review":true}],"silver_keys":[{"id":"SK-TORTS-APPROPRIATION-IDENTITY-01","statement":"For appropriation calls, sort the array by the three trigger facts: identity use, commercial advantage, and no consent. Extra requirements like exact name/photo, insult, or false fact are trap add-ons.","type":"trap_spotting","trigger":"One answer mirrors identity-use facts while others add conditions.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"CUT","target_skill":"fabricated_rule","prompt":"A commercial uses a distinctive soundalike and costume to evoke a celebrity but avoids the celebrity’s name and photo. Cut the answer: ''No, because no exact name or photograph was used.''","answer":"CUT as fabricated_rule once the Gold Key is applied."},{"drill_type":"CUT","target_skill":"colloquialism","prompt":"A commercial respectfully imitates a performer’s identity to sell a product. Cut the answer: ''No, because the imitation was flattering.''","answer":"CUT as colloquialism; tone is not the appropriation trigger."},{"drill_type":"wrong_frame","target_skill":"bait_doctrine","prompt":"A product ad uses a person’s recognizable identity without consent. Cut the answer: ''Yes, but only if the ad stated a false fact.''","answer":"CUT as bait_doctrine / wrong_frame; false fact belongs to neighboring reputation torts."},{"drill_type":"residual","target_skill":"Gold Key application","prompt":"Pick the survivor: exact name/photo requirement, flattering-use answer, false-fact answer, or identity-use/commercial/no-consent answer.","answer":"Identity-use/commercial/no-consent answer."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '328ebe01-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '20598_write_it_on_your_heart'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '1f8fa2a829608dd5f1fdd3154e0db07ce1c539f4e6e2e7b55636138dfe00a130'
   AND SHA2(COALESCE(question_stem, ''), 256) = 'f543a456d7ef0412d2b68c3c5a04c9df126427574f18b038097e0558a62e73d0'
   AND SHA2(COALESCE(call_of_question, ''), 256) = 'a72dc73fb7ee8d610cb61a61882a18300d8f625d4a58ca1c71321cf81aa408b7';
UPDATE answer_choices
   SET choice_text = 'No, because the ad portrayed the guide character in a respectful and admiring way.',
       is_correct = 0,
       forensic_tags = '["colloquialism"]',
       misconception_tags = '["appropriation_requires_name_or_photo","flattery_defeats_privacy_claim","appropriation_requires_false_fact"]',
       why_attractive = 'A student picks this because flattering use feels harmless. The breaker is that the call turns on unauthorized commercial identity use, not insult.',
       why_wrong_or_correct = 'Respectful tone feels harmless, but the call asks commercial identity use.',
       future_cue = 'Ask whether the answer uses a legal trigger or only a tone judgment.',
       remediation_id = 'REM-TORTS-APPROPRIATION-IDENTITY-01'
 WHERE question_id = '328ebe01-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'e51eb2ce9497c756c0c6fa8ae8fad0bce406a614b81e1ccf37c1dd5c4dfda757'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Yes, because the company used Ruth’s distinctive identity for commercial advantage without consent.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'Only B is both true and responsive to the appropriation call.',
       future_cue = NULL,
       remediation_id = 'REM-TORTS-APPROPRIATION-IDENTITY-01'
 WHERE question_id = '328ebe01-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '52f766acc589981b1230148c2b504291ebd40564b2215ff31795c4ab3785ee9e'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'Yes, but only if the ad stated a false fact about Ruth.',
       is_correct = 0,
       forensic_tags = '["bait_doctrine","wrong_frame"]',
       misconception_tags = '["appropriation_requires_name_or_photo","flattery_defeats_privacy_claim","appropriation_requires_false_fact"]',
       why_attractive = 'A student picks this because false statements feel like the familiar reputation-tort path. The breaker is that this is an identity-use call, and the Gold Key makes false-fact language a neighbor-frame trap.',
       why_wrong_or_correct = 'False fact is a neighbor-frame answer, not the appropriation call.',
       future_cue = 'Name the call: appropriation. Then remove false-statement conditions unless the call asks for a reputation tort.',
       remediation_id = 'REM-TORTS-APPROPRIATION-IDENTITY-01'
 WHERE question_id = '328ebe01-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'c9a7a6b7a30c41462509be632a25f506db8d8f7b49ca1073e930e437d2c055fa'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'No, because the ad did not use Ruth’s exact name or photograph.',
       is_correct = 0,
       forensic_tags = '["fabricated_rule"]',
       misconception_tags = '["appropriation_requires_name_or_photo","flattery_defeats_privacy_claim","appropriation_requires_false_fact"]',
       why_attractive = 'A student picks this because exact name or photo feels like the safest proof of identity use. The breaker is that the Gold Key says recognizable commercial evocation can be enough.',
       why_wrong_or_correct = 'Exact name/photo is an added requirement defeated by the Gold Key.',
       future_cue = 'Use the identity-evocation Gold Key: recognizable commercial imitation can be enough.',
       remediation_id = 'REM-TORTS-APPROPRIATION-IDENTITY-01'
 WHERE question_id = '328ebe01-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'b634b15b98378f972cb36a46b7fdbe967e0f9d93599f3959b453a683d0e64d30'
   AND is_correct = 0;

-- CQ20606.md -> 20606_lydia_festival_venue (314e1965-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CIVIL_PROCEDURE',
       topic = 'Civil Procedure',
       subtopic = 'Jurisdiction and Venue',
       tension_point = 'complete venue buckets vs incomplete/poisoned venue list',
       fact_pattern = 'Lydia, a worship harpist domiciled in the Northern District of State G, was injured when a propane coffee cart exploded during a privately run Christian music festival in the Central District of State H. Lydia filed a federal action based on diversity against two individuals involved in setting up the cart. Peter, a stage electrician, is domiciled in the Eastern District of State J. Ruth, a carpenter who built the cart platform, is domiciled in the Western District of State J.

In which judicial districts would venue be proper for Lydia’s action?',
       question_stem = 'Lydia, a worship harpist domiciled in the Northern District of State G, was injured when a propane coffee cart exploded during a privately run Christian music festival in the Central District of State H. Lydia filed a federal action based on diversity against two individuals involved in setting up the cart. Peter, a stage electrician, is domiciled in the Eastern District of State J. Ruth, a carpenter who built the cart platform, is domiciled in the Western District of State J.

In which judicial districts would venue be proper for Lydia’s action?

Call: identify all proper venue districts.
Prediction after Gold Key: event district plus both defendant-residence districts. No plaintiff-home district.',
       call_of_question = 'Call: identify all proper venue districts.
Prediction after Gold Key: event district plus both defendant-residence districts. No plaintiff-home district.',
       difficulty = 2,
       metadata = '{"source_file":"CQ20606.md","source_question_id":"20606","variant_slug":"lydia_festival_venue","batch":"cq-updated-copy-2026-06-20","outline_code":"94050100","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"A federal diversity tort suit has one event district and two individual defendants domiciled in different districts of the same state. Which districts are proper venue?","review_truth":"Venue list questions are bucket checks: include the event district and defendant-residence districts when all defendants reside in one state; do not add the plaintiff''s home district.","dominant_trap":null,"anchor_card":{"card_id":"CIV-REMEDY-VENUE-BUCKETS-20606","title":"Venue bucket checklist","signal":"The call asks which judicial districts are proper.","student_move":"Build the complete venue bucket list before reading combinations.","tiny_rule":"Event district plus qualifying defendant-residence districts; plaintiff home is a lure.","trap":"Stopping after the loudest fact or adding the plaintiff''s home.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CIVIL_PROCEDURE-VENUE-BUCKETS-01","statement":"For ordinary federal civil actions, venue can sit in the event district or in a defendant-residence district when all defendants reside in that same state; the plaintiff''s home is not a venue bucket.","type":"rule","trigger":"The call asks which judicial districts are proper and gives accident location plus defendants from different districts of one state.","authority":"28 U.S.C. § 1391(b)(1), (b)(2), (c)(1)","last_minute_review":true}],"silver_keys":[{"id":"SK-CIVIL_PROCEDURE-VENUE-BUCKETS-01","statement":"Read list answers as bucket checklists: keep every valid bucket and reject any answer that adds a false bucket or omits a true one.","type":"answer_array","trigger":"Choices mix event district, defendant districts, and plaintiff home district.","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"bucket_check","target_skill":"venue source sorting","prompt":"Event in District X; two defendants reside in Districts Y and Z of the same state; plaintiff resides in District P. Which buckets count?","answer":"X, Y, and Z; not P."},{"drill_type":"trap_spotting","target_skill":"plaintiff-home lure rejection","prompt":"A venue answer includes the plaintiff''s home district in an ordinary private-defendant tort suit. What is the trap?","answer":"Plaintiff residence is not a venue bucket here."},{"drill_type":"answer_array","target_skill":"complete-list selection","prompt":"One choice gives event only, one gives defendants only, one gives plaintiff plus event, one gives event plus defendants. Which shape usually survives?","answer":"The complete event-plus-defendants list."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '314e1965-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '20606_lydia_festival_venue'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = 'e0dbd6f50e7bc49322e184e3d2215f39f334f97f23e3532c3aa2ca4b71a6621d'
   AND SHA2(COALESCE(question_stem, ''), 256) = '151cc51acda13ce333ad6309a224e14fd482da0b315e7fe322d178e4ce5e81a7'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '3e6225e8d082b6ce2acf85a7ab14bb4790977fb64acfb1501140800869450a4a';
UPDATE answer_choices
   SET choice_text = 'The Eastern District of State J and the Western District of State J.',
       is_correct = 0,
       forensic_tags = '["wrong_element"]',
       misconception_tags = '["venue_follows_plaintiff","one_proper_venue_only","event_location_only","defendant_residence_only"]',
       why_attractive = 'This choice sees that both defendants live in State J, so it grabs the residence bucket. It drops the event bucket, which the venue checklist also requires for a complete all-proper-districts answer.',
       why_wrong_or_correct = 'It gives the defendant-residence bucket but omits the event bucket.',
       future_cue = 'Add the event bucket before selecting a list answer.',
       remediation_id = 'CIV-REMEDY-VENUE-BUCKETS-20606'
 WHERE question_id = '314e1965-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '9deab8b5774f5cc2167f17d5ba0c599077a95ddec2ac794e3420aac8b67c2897'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'The Central District of State H.',
       is_correct = 0,
       forensic_tags = '["wrong_element"]',
       misconception_tags = '["venue_follows_plaintiff","one_proper_venue_only","event_location_only","defendant_residence_only"]',
       why_attractive = 'This choice sees the accident district and stops at the most concrete fact. It skips the defendant-residence bucket that also works because both defendants reside in the same state.',
       why_wrong_or_correct = 'It gives the event bucket but omits the defendant-residence bucket.',
       future_cue = 'Ask whether all defendants live in one state and then add each defendant-residence district.',
       remediation_id = 'CIV-REMEDY-VENUE-BUCKETS-20606'
 WHERE question_id = '314e1965-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'ee2bbf9ebe8877aaf55bf2faac8cd73ee9d84340f4a3b699aaf78606096dd26a'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'The Central District of State H, the Eastern District of State J, and the Western District of State J.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'C is correct. Gold Key: For ordinary federal civil actions, venue can be proper in a district where a substantial part of the events occurred, and also in a district where any defendant resides if all defendants reside in that same state. Silver Key: Treat the answer choices as bucket checklists: event bucket, defendant-residence bucket, and plaintiff-home lure.

The explosion occurred in the Central District of State H, so that district is a proper event venue. Peter and Ruth both reside in State J, though in different districts, so each district where one of them resides is also a proper defendant-residence venue. The complete list is therefore the Central District of State H, the Eastern District of State J, and the Western District of State J.',
       future_cue = NULL,
       remediation_id = 'CIV-REMEDY-VENUE-BUCKETS-20606'
 WHERE question_id = '314e1965-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'bd07eba2c1e85ecb650223bf7a8db0d452c5705e4da1bb63b93c52ecb1502832'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'The Northern District of State G and the Central District of State H.',
       is_correct = 0,
       forensic_tags = '["flat_misstatement","wrong_frame"]',
       misconception_tags = '["venue_follows_plaintiff","one_proper_venue_only","event_location_only","defendant_residence_only"]',
       why_attractive = 'This choice rewards the impulse to include the plaintiff''s home because she chose the lawsuit. The ordinary venue checklist does not use the plaintiff''s home, so the added district poisons the list.',
       why_wrong_or_correct = 'It adds the plaintiff-home district, which is not a venue bucket here.',
       future_cue = 'Use the Gold Key: plaintiff home is not a venue bucket in this ordinary private-defendant action.',
       remediation_id = 'CIV-REMEDY-VENUE-BUCKETS-20606'
 WHERE question_id = '314e1965-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = '046dc573f853bdf5e25ea0d8e5ba13b4fef1babf0e7f1f9c42e9a20380abdef1'
   AND is_correct = 0;

-- CQ20627.md -> 20627_ruth_hymn_poster_contract (314e6ba9-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CIVIL_PROCEDURE',
       topic = 'Subject Matter Jurisdiction',
       subtopic = 'Diversity - Time of Filing',
       tension_point = 'filing-day citizenship snapshot vs later domicile facts',
       fact_pattern = 'Daniel was packing his private Scripture-verse printing booth for a Colorado craft fair when Ruth sued him in federal district court. The lawsuit, filed on April 4, was a state-law contract action seeking $144,000 for allegedly ruined illuminated hymn posters Ruth had commissioned for her private Easter pageant. When the complaint was filed, Ruth was domiciled in Arizona, and Daniel was also domiciled in Arizona. On April 25, before filing any answer, Daniel permanently moved to Colorado and changed his domicile.

Call: Did Daniel’s Colorado move create diversity jurisdiction?',
       question_stem = 'Daniel was packing his private Scripture-verse printing booth for a Colorado craft fair when Ruth sued him in federal district court. The lawsuit, filed on April 4, was a state-law contract action seeking $144,000 for allegedly ruined illuminated hymn posters Ruth had commissioned for her private Easter pageant. When the complaint was filed, Ruth was domiciled in Arizona, and Daniel was also domiciled in Arizona. On April 25, before filing any answer, Daniel permanently moved to Colorado and changed his domicile.

Call: Did Daniel’s Colorado move create diversity jurisdiction?

Call: Did the later move create diversity jurisdiction?

Prediction with Gold Key: No. Check citizenship at filing. Ruth and Daniel were both Arizona citizens then.

Adjacent-call traps: answer date, trial date, and state-law claim category.',
       call_of_question = 'Call: Did the later move create diversity jurisdiction?

Prediction with Gold Key: No. Check citizenship at filing. Ruth and Daniel were both Arizona citizens then.

Adjacent-call traps: answer date, trial date, and state-law claim category.',
       difficulty = 2,
       metadata = '{"source_file":"CQ20627.md","source_question_id":"20627","variant_slug":"ruth_hymn_poster_contract","batch":"cq-updated-copy-2026-06-20","outline_code":"94010100","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"PURE_ANCHOR","splitting_fact":null,"distilled_core_question":"P and D were citizens of the same state when P filed a $144,000 state-law case in federal court. D later moved to another state before answering. Does the move create diversity jurisdiction?","review_truth":"Diversity is a filing-day snapshot; a later domicile change does not create diversity that was missing when the complaint was filed.","dominant_trap":null,"anchor_card":{"card_id":"REM-CIV-DIVERSITY-FILING-SNAPSHOT","title":"Diversity snapshot","signal":"Filing-day citizenship plus later move.","student_move":"Freeze citizenship at filing before reading later procedural facts.","tiny_rule":"Diversity citizenship is checked at filing.","trap":"response-date and before-trial timing choices","confidence":"PURE_ANCHOR"},"gold_keys":[{"id":"GK-CIVIL_PROCEDURE-DIVERSITY-FILING-01","statement":"For ordinary diversity jurisdiction, citizenship is measured when the complaint is filed. A later move does not create diversity that was missing at filing.","type":"rule","trigger":"A stem gives citizenship at filing and a later domicile change.","authority":"28 U.S.C. § 1332(a); Grupo Dataflux v. Atlas Global Group, L.P.; Mollan v. Torrance","last_minute_review":true}],"silver_keys":[{"id":"SK-CIVIL_PROCEDURE-DIVERSITY-SNAPSHOT-01","statement":"When a jurisdiction stem gives filing-day citizenship and later domicile facts, freeze the snapshot at filing before judging the later facts.","type":"call_focus","trigger":"same-state parties at filing plus a later move before answer or trial","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"anchor_recall","target_skill":"diversity time of filing","prompt":"P and D are both Texas citizens when P files a $90,000 state-law case. D moves to Oklahoma before answering. Diversity?","answer":"No. Citizenship is measured at filing."},{"drill_type":"overclaim_cut","target_skill":"never / any detector","prompt":"Cut the answer: ''No, because state-law claims can never be heard under diversity.''","answer":"Cut. Never is an overclaim."},{"drill_type":"call_focus","target_skill":"freeze the filing snapshot","prompt":"A stem gives citizenship at filing and then a later domicile change. What fact do you check first?","answer":"Citizenship when the complaint was filed."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '314e6ba9-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '20627_ruth_hymn_poster_contract'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '1d41edac20e4f1bacaa00bdcc2c415f7f3a93b3835fb4ea6af5151cfbc5986ea'
   AND SHA2(COALESCE(question_stem, ''), 256) = '5b13c85e57cb807c9ce78cce3a558a773ecf127b60a9a5f3d563e3a6359abfbe'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '8564f63c502e7ac87f635104adc557a3a15c68ae80c04e27f8e19915c0bf331a';
UPDATE answer_choices
   SET choice_text = 'No, because state-law contract claims can never be heard under diversity.',
       is_correct = 0,
       forensic_tags = '["tiered_absolute"]',
       misconception_tags = '["response_date_controls_diversity","pretrial_citizenship_changes_control","state_law_claims_cannot_be_diversity"]',
       why_attractive = 'The student sees a state-law contract claim and overcorrects into thinking federal court is unavailable. The breaker is the categorical word never; diversity jurisdiction can hear qualifying state-law civil actions.',
       why_wrong_or_correct = 'The word never makes an overbroad category claim. State-law contract claims are not categorically excluded from diversity jurisdiction.',
       future_cue = 'Ask whether the answer is making a categorical claim broader than diversity doctrine allows.',
       remediation_id = 'REM-CIV-DIVERSITY-FILING-SNAPSHOT'
 WHERE question_id = '314e6ba9-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'e55a6bf943a0a723c31b9117ec6a82ff888a95dd14050d0e6c012865af337930'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Yes, because any change in citizenship before trial controls.',
       is_correct = 0,
       forensic_tags = '["tiered_absolute","procedural_frame"]',
       misconception_tags = '["response_date_controls_diversity","pretrial_citizenship_changes_control","state_law_claims_cannot_be_diversity"]',
       why_attractive = 'The student grabs the later Colorado move and treats any pretrial citizenship change as controlling. The breaker is the filing-day Gold Key; later citizenship changes do not create diversity missing at filing.',
       why_wrong_or_correct = 'The word any and the before-trial timing both fight the filing-day snapshot.',
       future_cue = 'Circle the complaint-filing date and check citizenship there first.',
       remediation_id = 'REM-CIV-DIVERSITY-FILING-SNAPSHOT'
 WHERE question_id = '314e6ba9-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '9b40461e2fe7502415dc1d588662cac31f89b42d0ad0a0957ae657291f311311'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'No, because Ruth and Daniel were both Arizona citizens when the complaint was filed.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'C is correct. The answer locks the jurisdiction snapshot at the filing date. At that point, Ruth and Daniel were both Arizona citizens, so complete diversity was absent. Daniel’s later move to Colorado, even before his first answer, does not retroactively create diversity.

Gold Key: Diversity citizenship is measured when the complaint is filed. A later domicile change does not cure missing complete diversity.

Silver Key: When a Civ Pro jurisdiction stem gives both a filing-day citizenship fact and a later move, freeze the snapshot at filing before reading answer choices that try to move the measurement point.',
       future_cue = NULL,
       remediation_id = 'REM-CIV-DIVERSITY-FILING-SNAPSHOT'
 WHERE question_id = '314e6ba9-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = '6d0f14237f7126a6c7aa72650e8dca18513ecf9e3d5fc55bd8e5dedbf7bbade9'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'Yes, because diversity is measured when Daniel first answers.',
       is_correct = 0,
       forensic_tags = '["backwards","procedural_frame"]',
       misconception_tags = '["response_date_controls_diversity","pretrial_citizenship_changes_control","state_law_claims_cannot_be_diversity"]',
       why_attractive = 'The student treats the answer deadline as the moment when jurisdiction becomes fixed. The breaker is that the timing runs the other way: citizenship is measured when the complaint is filed.',
       why_wrong_or_correct = 'The response-date timing reverses the filing-day rule.',
       future_cue = 'Say: filing first, response later; jurisdiction is tested at filing.',
       remediation_id = 'REM-CIV-DIVERSITY-FILING-SNAPSHOT'
 WHERE question_id = '314e6ba9-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = '8a9513013df0ff9a1ed766c4f48309b955857e996abfdc4e4a636bf5f7f738f2'
   AND is_correct = 0;

-- CQ20638.md -> 20638_advent_rescue_beacons (316b20eb-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CONSTITUTIONAL_LAW',
       topic = 'Relations Between Federal and State Governments',
       subtopic = 'Supremacy Clause',
       tension_point = 'practical interference vs geography/formality',
       fact_pattern = 'Under authority granted by Congress, the United States Department of Defense hired Barnabas Metalworks, a private Advent-themed shop owned by Lydia, to manufacture rugged rescue-beacon casings for military search teams. The contract required all casting and polishing to occur at Barnabas’s old rail-depot workshop beside Mercy Brook, and it allowed the shop to release no more than four ounces per day of a polishing solvent into the brook from that production.

While producing the beacon casings under the contract, Barnabas routinely released between three and four ounces per day of the solvent into Mercy Brook. The state later prosecuted Barnabas under a state clean-water statute that prohibits any person or business entity from releasing more than three ounces per day of that solvent into any creek located in the state.

Barnabas defended on the ground that, as a federal contractor, it was immune from state regulation. Which one of the following additional facts or inferences, if it were the only one true, would most effectively support the state’s argument?',
       question_stem = 'Under authority granted by Congress, the United States Department of Defense hired Barnabas Metalworks, a private Advent-themed shop owned by Lydia, to manufacture rugged rescue-beacon casings for military search teams. The contract required all casting and polishing to occur at Barnabas’s old rail-depot workshop beside Mercy Brook, and it allowed the shop to release no more than four ounces per day of a polishing solvent into the brook from that production.

While producing the beacon casings under the contract, Barnabas routinely released between three and four ounces per day of the solvent into Mercy Brook. The state later prosecuted Barnabas under a state clean-water statute that prohibits any person or business entity from releasing more than three ounces per day of that solvent into any creek located in the state.

Barnabas defended on the ground that, as a federal contractor, it was immune from state regulation. Which one of the following additional facts or inferences, if it were the only one true, would most effectively support the state’s argument?

Which additional fact or inference, if it were the only one true, would most effectively support the state''s argument?',
       call_of_question = 'Which additional fact or inference, if it were the only one true, would most effectively support the state''s argument?',
       difficulty = 3,
       metadata = '{"source_file":"CQ20638.md","source_question_id":"20638","variant_slug":"advent_rescue_beacons","batch":"cq-updated-copy-2026-06-20","outline_code":"41030300","outline_code_verified":true,"difficulty_band":"medium-hard","deciding_phase":"CLASH","confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"A federal contractor violates a stricter state discharge limit. Which fact best supports the state? The stricter limit does not increase federal production cost.","review_truth":"For a federal contractor, the state’s best fact is the one showing the state rule does not interfere with the federal project.","dominant_trap":null,"anchor_card":{"card_id":"REM-CONLAW-FED-CONTRACTOR-INTERFERENCE","title":"Federal contractor: practical interference axis","signal":"state regulation of a private federal contractor","student_move":"Ask whether the state rule burdens the federal job.","tiny_rule":"No interference, no immunity win.","trap":"geography or express-exemption formalism","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CONSTITUTIONAL_LAW-FEDERAL-CONTRACTOR-01","statement":"A state may regulate a federal contractor unless applying the state rule would interfere with federal purposes or policies.","type":"constitutional_principle","trigger":"state prosecutes or regulates a private contractor performing a federal contract","authority":"Supremacy Clause; Leslie Miller; Goodyear Atomic","last_minute_review":true}],"silver_keys":[{"id":"SK-CONSTITUTIONAL_LAW-FEDERAL-CONTRACTOR-01","statement":"When the call asks which fact best supports the state against federal-contractor immunity, look for the fact about practical effect on the federal job.","type":"answer_array","trigger":"choices split between location facts, express wording, and contract-performance cost","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"clash_axis","target_skill":"name the immunity axis","prompt":"State regulation of a federal contractor: express exemption or no project burden?","answer":"No project burden is the stronger state-support fact."},{"drill_type":"wrong_frame_cut","target_skill":"cut geography bait","prompt":"Federal contractor claims immunity; choice says the creek is wholly intrastate.","answer":"Cut as not responsive after federal authority is given."},{"drill_type":"gold_key_recall","target_skill":"federal-contractor anchor","prompt":"What makes state regulation of a federal contractor vulnerable?","answer":"Interference with federal purposes or policies."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '316b20eb-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '20638_advent_rescue_beacons'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '7e90e4677651b2f0c577fed5786205e8118aedd9014f0eeac0a6f2a1ef38248b'
   AND SHA2(COALESCE(question_stem, ''), 256) = '4fe433b3001f9cfcfb2cfa84377bb1f69aa75d9ad8c8863c0e8c9d73ed95af67'
   AND SHA2(COALESCE(call_of_question, ''), 256) = 'a7fbdf4800f1b647900c04c551a2b31e7a248176e5ed719e01799f1dbdcf5993';
UPDATE answer_choices
   SET choice_text = 'Congress has not expressly exempted Barnabas from complying with state clean-water statutes.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["express exemption required","intrastate means state wins","navigability controls federal power"]',
       why_attractive = 'The choice sells the formal idea that express congressional wording controls. The breaker is that express wording does not answer practical interference.',
       why_wrong_or_correct = 'The choice focuses on express exemption instead of the interference axis.',
       future_cue = 'Ask whether the fact addresses practical burden on federal work.',
       remediation_id = 'REM-CONLAW-FED-CONTRACTOR-INTERFERENCE'
 WHERE question_id = '316b20eb-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'ec69c33a877890843edef6a89f9e48b1f598026dc9b3e07e5d4c5627331a541f'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Mercy Brook is not navigable.',
       is_correct = 0,
       forensic_tags = '["misfit","wrong_frame"]',
       misconception_tags = '["express exemption required","intrastate means state wins","navigability controls federal power"]',
       why_attractive = 'The choice sells navigability as a legal-sounding jurisdiction fact. The breaker is that navigability is not the federal-contractor immunity axis.',
       why_wrong_or_correct = 'The choice shifts to navigability, a different jurisdictional frame.',
       future_cue = 'Return to the immunity call, not admiralty or river power.',
       remediation_id = 'REM-CONLAW-FED-CONTRACTOR-INTERFERENCE'
 WHERE question_id = '316b20eb-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'c88ea27f3ddc1dc542a218ce37838b662e0f12e25fa1c7cfe2db6a0e2905b134'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Keeping the releases at three ounces or less per day would not increase the cost of producing the rescue-beacon casings required by the contract.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'After geography/formality traps are cut, C is the answer that matches the interference axis.',
       future_cue = NULL,
       remediation_id = 'REM-CONLAW-FED-CONTRACTOR-INTERFERENCE'
 WHERE question_id = '316b20eb-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = '2cec34f6ba771121d4f16e3a4e980c36bdd2304d7361e7c4eb4aae9b9a317a84'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'Mercy Brook is located entirely within the state.',
       is_correct = 0,
       forensic_tags = '["misfit","wrong_frame"]',
       misconception_tags = '["express exemption required","intrastate means state wins","navigability controls federal power"]',
       why_attractive = 'The choice sells the creek’s intrastate location as state-control proof. The breaker is that federal authority is already supplied by the stem.',
       why_wrong_or_correct = 'The choice shifts to intrastate geography after federal authority is already given.',
       future_cue = 'Accept the stem’s federal-authority premise and look for interference.',
       remediation_id = 'REM-CONLAW-FED-CONTRACTOR-INTERFERENCE'
 WHERE question_id = '316b20eb-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'ca0aab4040210a39c5c38cf0fbab6986db21d45f35f4854b7e482afd26371bbf'
   AND is_correct = 0;

-- CQ20717.md -> 20717_ruths_hymn_recording_procedure (328fd5ec-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'TORTS',
       topic = 'Torts',
       subtopic = 'Negligence',
       tension_point = 'breach evidence vs breach-caused-injury evidence',
       fact_pattern = 'Ruth, an adult soprano preparing a private Christmas hymns recording, had been treated by an allergist for severe medication sensitivities for four years before undergoing an elective outpatient vocal-cord procedure performed by Dr. Peter, a throat surgeon. Three days after the procedure, Ruth suffered respiratory collapse from a delayed drug reaction that developed after the procedure. The collapse put her in a coma. When doctors concluded that she was in a permanent vegetative state with no hope of recovery, the ventilator and feeding support were withdrawn at her family’s request after court approval, and Ruth died later that evening. Dr. Peter was not involved in that decision or its execution.

Ruth’s estate filed a wrongful death action against Dr. Peter, alleging that he was negligent in failing to consult an allergist before the procedure. At trial, the estate offered evidence that accepted medical practice required an allergist to examine a patient before this type of procedure.

In this action, the estate should',
       question_stem = 'Ruth, an adult soprano preparing a private Christmas hymns recording, had been treated by an allergist for severe medication sensitivities for four years before undergoing an elective outpatient vocal-cord procedure performed by Dr. Peter, a throat surgeon. Three days after the procedure, Ruth suffered respiratory collapse from a delayed drug reaction that developed after the procedure. The collapse put her in a coma. When doctors concluded that she was in a permanent vegetative state with no hope of recovery, the ventilator and feeding support were withdrawn at her family’s request after court approval, and Ruth died later that evening. Dr. Peter was not involved in that decision or its execution.

Ruth’s estate filed a wrongful death action against Dr. Peter, alleging that he was negligent in failing to consult an allergist before the procedure. At trial, the estate offered evidence that accepted medical practice required an allergist to examine a patient before this type of procedure.

In this action, the estate should

Call: Should the estate prevail?

Prediction: No. The estate has breach evidence. It lacks causation evidence.

Adjacent-call trap: Did the doctor violate accepted practice? That is not the whole question.',
       call_of_question = 'Call: Should the estate prevail?

Prediction: No. The estate has breach evidence. It lacks causation evidence.

Adjacent-call trap: Did the doctor violate accepted practice? That is not the whole question.',
       difficulty = 2,
       metadata = '{"source_file":"CQ20717.md","source_question_id":"20717","variant_slug":"ruths_hymn_recording_procedure","batch":"cq-updated-copy-2026-06-20","outline_code":"61020401","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"A malpractice plaintiff proves a required specialist consult was omitted but offers no evidence that the consult would have changed the outcome. Should the plaintiff prevail?","review_truth":"Breach evidence does not win malpractice unless the plaintiff also links that breach to the injury.","dominant_trap":null,"anchor_card":{"card_id":"TOR-REM-CAUSATION-LINK-01","title":"Breach is not causation","signal":"The stem proves what the doctor should have done but not what would have happened if the doctor had done it.","student_move":"Ask what evidence links this specific missed step to this specific injury.","tiny_rule":"No link, no negligence win.","trap":"Choosing the answer that proves breach or the answer that proves the procedure caused harm.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-TORTS-MEDMAL-CAUSATION-01","statement":"In malpractice, proof that the doctor broke a professional rule is not enough; the plaintiff must prove that the broken rule caused the injury.","type":"threshold","trigger":"standard-of-care evidence but no evidence the missed consult would change the outcome","authority":"Restatement (Third) of Torts §§ 26, 29","last_minute_review":true},{"id":"GK-TORTS-LIFE-SUPPORT-01","statement":"When the alleged tort creates the condition requiring life support, later withdrawal of support normally does not cut off causation.","type":"distinction","trigger":"family/court withdrawal after permanent vegetative state","authority":"State v. Pelham; State v. Patterson","last_minute_review":true}],"silver_keys":[{"id":"SK-TORTS-CAUSATION-LINK-01","statement":"Track the alleged breach, not the whole medical timeline. The question is not procedure-to-death; it is missed-consult-to-injury.","type":"clash","trigger":"procedure-caused-harm answer competes with missed-consult answer","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"CUT","target_skill":"wrong_element","prompt":"A malpractice stem proves accepted practice required a specialist consult. No evidence says the consult would have changed the outcome. Cut the breach-only answer.","answer":"Cut as wrong_element: breach without causation."},{"drill_type":"CLASH","target_skill":"tension_axis","prompt":"One answer says the doctor was negligent for omitting a consult. Another says no proof shows the consult would change the result. Name the axis.","answer":"Breach evidence vs breach-caused-injury evidence."},{"drill_type":"ANCHOR","target_skill":"life_support_superseding_cause","prompt":"The injury causes a vegetative state; family and court approve withdrawal of support. Does that usually break causation?","answer":"No, if the original breach caused the condition requiring support."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '328fd5ec-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '20717_ruths_hymn_recording_procedure'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = 'd64569ed88d4cc42eb3f2706187c60e52aa09026fad15a10fe12d45064f4659f'
   AND SHA2(COALESCE(question_stem, ''), 256) = '2a319ace40c5319bbabd2419d924106b310cbc20bbcaa50fd437ed9aa325d71e'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '57acc04eb94658a72959ade992e26ed76d018fc730be580957705d2e418e3a2b';
UPDATE answer_choices
   SET choice_text = 'not prevail, because there is no evidence that an allergist would have provided advice that would have changed the outcome if one had examined Ruth before the procedure.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'A is correct. The estate has evidence on the breach side: accepted medical practice required an allergist examination before this type of procedure. But the estate still needs evidence connecting that missed consult to Ruth’s respiratory collapse and death. Nothing in the facts shows that an allergist would have recommended different medication, different precautions, postponement, or cancellation.

Gold Key: In malpractice, breach evidence is not enough; the plaintiff must connect the specific breach to the injury.

Silver Key: Do not ask whether the procedure led to death. Ask whether the *missed consult* led to death.',
       future_cue = NULL,
       remediation_id = 'TOR-REM-CAUSATION-LINK-01'
 WHERE question_id = '328fd5ec-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '85482969d69da87263c840c74833da39785738bc013e8feaa3223c9e15071a5c'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'prevail, because the respiratory collapse that caused Ruth’s death was caused by the procedure that Dr. Peter performed.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["breach_equals_liability","procedure_caused_harm_equals_breach_caused_harm","life_support_withdrawal_breaks_causation"]',
       why_attractive = 'A student sees a complete medical timeline from procedure to collapse to death. The breaker is that the alleged breach is the missed consult, not the procedure in general.',
       why_wrong_or_correct = 'This choice proves the procedure was in the causal chain, but the alleged breach is the missed allergist consult.',
       future_cue = 'Ask whether the missed allergist consult caused the collapse.',
       remediation_id = 'TOR-REM-CAUSATION-LINK-01'
 WHERE question_id = '328fd5ec-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'c28a06385a7044dd09638c3965be085ea635558fad631b981471548982e858b3'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'not prevail, because Dr. Peter had nothing to do with the withdrawal of life support, which was the cause of Ruth’s death.',
       is_correct = 0,
       forensic_tags = '["flat_misstatement","wrong_frame"]',
       misconception_tags = '["breach_equals_liability","procedure_caused_harm_equals_breach_caused_harm","life_support_withdrawal_breaks_causation"]',
       why_attractive = 'A student sees that Dr. Peter did not withdraw support and treats that later decision as a clean causal break. The breaker is the life-support Gold Key: if the breach caused the need for support, withdrawal normally does not supersede causation.',
       why_wrong_or_correct = 'This choice treats life-support withdrawal as the cause that defeats liability, but that move fails if the breach caused the condition requiring support.',
       future_cue = 'Ask whether the alleged breach created the condition requiring support.',
       remediation_id = 'TOR-REM-CAUSATION-LINK-01'
 WHERE question_id = '328fd5ec-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'b12673109840cca09dd44131400f975ef9df1006be60459560383b469d1a4781'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'prevail, because Dr. Peter was negligent in failing to have Ruth examined by an allergist before the procedure.',
       is_correct = 0,
       forensic_tags = '["wrong_element"]',
       misconception_tags = '["breach_equals_liability","procedure_caused_harm_equals_breach_caused_harm","life_support_withdrawal_breaks_causation"]',
       why_attractive = 'A student grabs the strongest plaintiff fact, the accepted-practice violation. The breaker is that breach is not enough without evidence that the breach caused the injury.',
       why_wrong_or_correct = 'This choice proves breach but omits proof that the breach caused Ruth''s collapse.',
       future_cue = 'Require evidence that the breach changed the outcome.',
       remediation_id = 'TOR-REM-CAUSATION-LINK-01'
 WHERE question_id = '328fd5ec-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'd1134b9ab93367a63799f2c42a80fdb30b8db88488ef22979bf4be11fe9871d9'
   AND is_correct = 0;

-- CQ20744.md -> 20744_bethlehem_loading_lane (32913a71-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'TORTS',
       topic = 'Negligence',
       subtopic = 'Duty / Foreseeability Target',
       tension_point = 'foreseeability target',
       fact_pattern = 'During setup for a private Christmas Bible-pageant at a rented fairground, Timothy was pushing a handcart stacked with manger scenery when he clipped Lydia and hurried away, leaving her sprawled in a marked loading lane. A few minutes later, Stephen, drowsy after knowingly taking a strong sleep aid, drove a small electric forklift down the lane and ran over Lydia’s leg.

If Lydia brings a negligence action against Stephen for damages resulting from her fractured leg, Stephen’s liability will most probably turn on whether it was foreseeable that',
       question_stem = 'During setup for a private Christmas Bible-pageant at a rented fairground, Timothy was pushing a handcart stacked with manger scenery when he clipped Lydia and hurried away, leaving her sprawled in a marked loading lane. A few minutes later, Stephen, drowsy after knowingly taking a strong sleep aid, drove a small electric forklift down the lane and ran over Lydia’s leg.

If Lydia brings a negligence action against Stephen for damages resulting from her fractured leg, Stephen’s liability will most probably turn on whether it was foreseeable that

Call first: this is not asking who was most morally blameworthy. It asks what fact must be foreseeable for Stephen’s liability. Prediction: the answer should point to the risk Stephen’s driving created—someone in the lane.',
       call_of_question = 'Call first: this is not asking who was most morally blameworthy. It asks what fact must be foreseeable for Stephen’s liability. Prediction: the answer should point to the risk Stephen’s driving created—someone in the lane.',
       difficulty = 2,
       metadata = '{"source_file":"CQ20744.md","source_question_id":"20744","variant_slug":"bethlehem_loading_lane","batch":"cq-updated-copy-2026-06-20","outline_code":"61020101","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"A vehicle operator injures a person already in the travel path. Which foreseeability target matters: a person in the path, the prior event that put the person there, the exact second accident, or the operator''s own negligence?","review_truth":"Foreseeability targets the plaintiff/risk created by the defendant''s conduct, not the exact set-stage event and not the defendant''s own negligence.","dominant_trap":null,"anchor_card":{"card_id":"TOR-FORESEEABILITY-TARGET-01","title":"Foreseeability target scan","signal":"All answers ask what had to be foreseeable.","student_move":"Name the object after ''foreseeable that'' before judging law.","tiny_rule":"Pick the plaintiff/risk target, not the old cause, exact chain, or defendant breach.","trap":"Students pick the most dramatic fact instead of the legal target.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-TORTS-FORESEEABILITY-TARGET-01","statement":"For negligence by an active operator, the foreseeability target is the plaintiff/class/risk created by the defendant''s conduct, not the exact prior event that put the plaintiff there and not whether the defendant''s own careless act was foreseeable.","type":"distinction","trigger":"answer choices all complete ''foreseeable that ___''","authority":"Palsgraf v. Long Island R.R.; Restatement (Third) of Torts §§ 7, 29","last_minute_review":true}],"silver_keys":[{"id":"SK-TORTS-BETHLEHEM-LANE-01","statement":"When every choice starts from ''foreseeable that,'' compare the object of foreseeability first. Set-stage cause, exact chain, defendant breach, and plaintiff risk are different targets.","type":"answer_array","trigger":"same grammatical stem repeated across all choices","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"target_scan","target_skill":"identify foreseeability object","prompt":"In a negligence answer choice, underline the object after ''foreseeable that.'' Is it plaintiff/risk, exact chain, prior cause, or defendant breach?","answer":"plaintiff/risk is the target"},{"drill_type":"wrong_element","target_skill":"separate breach from foreseeability","prompt":"A choice says liability turns on whether the defendant would drive while impaired. What element is it chasing?","answer":"defendant breach, not foreseeability target"},{"drill_type":"set_stage","target_skill":"identify preexisting condition lure","prompt":"A person is already in a lane before defendant drives through it. Does liability turn on whether the earlier cause of that position was foreseeable?","answer":"No; focus on whether a person in the lane was foreseeable."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '32913a71-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '20744_bethlehem_loading_lane'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = 'dc872dcfb1c6bf6a3b93967a8545232017175fd8f2138d798770a309221c912e'
   AND SHA2(COALESCE(question_stem, ''), 256) = 'e7ed78dbad708c63bc8594428d1a2db8e880c25bb6067a1d7268d605c31f5f4d'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '8093b43ef0f6d4af4c4738843203762f32805af18bc45ab0cf7751502e5e1940';
UPDATE answer_choices
   SET choice_text = 'a person clipped by a prop cart would be involved in another collision within a few minutes.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["exact-chain-required","prior-cause-must-be-foreseeable","defendant-negligence-must-be-foreseeable"]',
       why_attractive = 'A feels precise because it tracks the whole chain from the first collision to the second collision. The breaker is that the exact chain is not the target; the person-in-lane risk is.',
       why_wrong_or_correct = 'A targets the exact follow-on accident chain instead of the general person-in-lane risk.',
       future_cue = 'Ask whether this choice names a general person/risk or an exact chain.',
       remediation_id = 'TOR-FORESEEABILITY-TARGET-01'
 WHERE question_id = '32913a71-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '670c47ca1649a58497d31cc54a030f5ef496f4d6787ce8a1506589d7e550be23'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'a person would be in the loading lane.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'B is correct. The clean foreseeability target is not the handcart accident, the precise chain of collisions, or Stephen’s own impaired driving. The target is whether a person might foreseeably be in the lane Stephen chose to drive through.

Gold Key: For negligence by an active operator, ask what person or class of persons was foreseeably put at risk by the defendant’s conduct. Do not require foreseeability of the exact prior event that placed the plaintiff there, and do not require foreseeability of the defendant’s own negligent breach.

Silver Key: In a “foreseeable that ___” answer array, compare the noun phrase after “that.” The credited answer usually names the general plaintiff/risk target, while the traps name the old set-stage event, the exact chain, or the defendant’s own wrongdoing.',
       future_cue = NULL,
       remediation_id = 'TOR-FORESEEABILITY-TARGET-01'
 WHERE question_id = '32913a71-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'de2f450c3ea12835368d3af0f18a81b2417a8b9552f25f89de12527ea8a7ca98'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'Stephen would operate the forklift while drowsy after taking a strong sleep aid.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["exact-chain-required","prior-cause-must-be-foreseeable","defendant-negligence-must-be-foreseeable"]',
       why_attractive = 'C feels compelling because Stephen''s drowsy operation is the obvious bad act. The breaker is that the plaintiff need not show Stephen''s negligence itself was foreseeable.',
       why_wrong_or_correct = 'C targets foreseeability of the defendant''s own breach instead of the plaintiff/risk.',
       future_cue = 'Mark drowsy operation as breach color and return to who or what was foreseeably endangered.',
       remediation_id = 'TOR-FORESEEABILITY-TARGET-01'
 WHERE question_id = '32913a71-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = '11624aef2932839b6f7e9963b4b717e602688b3cde1d4ae7fd0c62cb9e5edf25'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Timothy would handle the prop cart carelessly and leave Lydia lying in the loading lane after clipping her.',
       is_correct = 0,
       forensic_tags = '["wrong_element","wrong_frame"]',
       misconception_tags = '["exact-chain-required","prior-cause-must-be-foreseeable","defendant-negligence-must-be-foreseeable"]',
       why_attractive = 'D feels natural because Timothy''s cart accident explains why Lydia was on the ground. The breaker is that Timothy''s prior conduct is set-stage, not Stephen''s foreseeability target.',
       why_wrong_or_correct = 'D targets the prior set-stage actor''s conduct instead of the risk created by Stephen''s operation.',
       future_cue = 'Treat facts that existed before Stephen acted as set-stage unless the call asks about the prior actor.',
       remediation_id = 'TOR-FORESEEABILITY-TARGET-01'
 WHERE question_id = '32913a71-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'cb947eed7cf29b7497e2ee0c260d5444f9405c78f8c613038b71cf36e7f5e291'
   AND is_correct = 0;

-- CQ21869.md -> 21869_tiny_house_hymn_sheet (3218db87-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CRIMINAL_LAW',
       topic = 'Fourth Amendment',
       subtopic = 'Arrest warrants and home entry',
       tension_point = NULL,
       fact_pattern = 'At Lydia’s tiny house, a private psalm-singing rehearsal has turned into a hymn-sheet stapling contest. Police, holding an arrest warrant for Timothy, get a tip that Timothy is helping there. They have no search warrant for Lydia’s home, no consent, and no emergency. They enter the tiny house and arrest Timothy in the prayer nook.

Call: Was the entry lawful?',
       question_stem = 'At Lydia’s tiny house, a private psalm-singing rehearsal has turned into a hymn-sheet stapling contest. Police, holding an arrest warrant for Timothy, get a tip that Timothy is helping there. They have no search warrant for Lydia’s home, no consent, and no emergency. They enter the tiny house and arrest Timothy in the prayer nook.

Call: Was the entry lawful?

Call: was the entry into the home lawful?

Prediction: No. The home belongs to Lydia. The warrant names Timothy. No search warrant, consent, or emergency appears.',
       call_of_question = 'Call: was the entry into the home lawful?

Prediction: No. The home belongs to Lydia. The warrant names Timothy. No search warrant, consent, or emergency appears.',
       difficulty = 2,
       metadata = '{"source_file":"CQ21869.md","source_question_id":"21869","variant_slug":"tiny_house_hymn_sheet","batch":"cq-updated-copy-2026-06-20","outline_code":"75070201","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"Police have an arrest warrant for a suspect but enter someone else’s home to arrest him without a search warrant, consent, or exigency. Was the entry lawful?","review_truth":"An arrest warrant is not a search warrant for someone else’s home.","dominant_trap":null,"anchor_card":{"card_id":"CRIM-REM-THIRD-PARTY-HOME-01","title":"Person warrant vs place warrant","signal":"Arrest warrant for suspect + suspect inside someone else''s home.","student_move":"Ask whose home the police entered.","tiny_rule":"Third-party home requires a search warrant for that home or a valid exception.","trap":"Arrest warrant portability.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CRIM-THIRD-PARTY-HOME-01","statement":"An arrest warrant lets police seize the named suspect; it does not by itself authorize entry into someone else’s home. For a third party’s home, look for a search warrant for that home, consent, or exigency.","type":"distinction","trigger":"arrest warrant + suspect located in a third party''s home","authority":"Steagald v. United States, 451 U.S. 204 (1981); Payton v. New York, 445 U.S. 573 (1980)","last_minute_review":true}],"silver_keys":[{"id":"SK-CRIM-ENTRY-FIRST-01","statement":"When the call asks whether entry into a home was lawful, decide the door before the room. A bedroom, prayer nook, or living room fact cannot supply authority to cross the threshold.","type":"cut","trigger":"answer turns on where the suspect was found after entry","authority":null,"last_minute_review":true}],"drill_seeds":[{"drill_type":"anchor_recall","target_skill":"Gold Key recall","prompt":"Police have an arrest warrant for Paul and enter Ruth’s home to find him without a search warrant, consent, or exigency. Lawful entry?","answer":"No. Third-party home requires a search warrant or valid exception."},{"drill_type":"cut","target_skill":"Overclaim detection","prompt":"Cut: ''Yes, because an arrest warrant follows the suspect into any home.''","answer":"tiered_absolute; arrest warrant does not authorize entry into any third-party home."},{"drill_type":"issue_sense","target_skill":"Wrong element / wrong timing","prompt":"Call asks whether entry into Naomi’s home was lawful. Choice says no only because suspect was found in the pantry.","answer":"NOT_RESPONSIVE; room fact comes after entry."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '3218db87-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '21869_tiny_house_hymn_sheet'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '72dd68ba85b8fbe6f9dbbfe3e6be1a021b7a0cbbb5aa1a162499d8bb6dd14a45'
   AND SHA2(COALESCE(question_stem, ''), 256) = '71b92bcef7bb7a1384bd75ab431a7bdb070ac9e72c5505d48e3a777d34dba460'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '97ffa98cee34ffc4d1c782dafbe85eb83c674ecb6175cb37a84cf309d36818bd';
UPDATE answer_choices
   SET choice_text = 'Yes, because the tip gave officers reasonable suspicion that Timothy was inside.',
       is_correct = 0,
       forensic_tags = '["flat_misstatement"]',
       misconception_tags = '["warrant_is_warrant","reasonable_suspicion_suffices","interior_location_controls"]',
       why_attractive = 'The tip makes the police seem specifically focused rather than fishing. The breaker is that suspicion level is not the authority needed to enter a third party’s home.',
       why_wrong_or_correct = 'The choice uses reasonable suspicion as the authority for entering a third party''s home. The Gold Key requires a search warrant for that home or a valid exception.',
       future_cue = 'Ask whether the answer supplies a warrant or valid exception for the home entered.',
       remediation_id = 'CRIM-REM-THIRD-PARTY-HOME-01'
 WHERE question_id = '3218db87-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = '0d871e97089b55a99366521a035a5bc79461c81fbcdae5d381e8f91a14aa0c38'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'Yes, because an arrest warrant travels with the suspect into any private home.',
       is_correct = 0,
       forensic_tags = '["tiered_absolute"]',
       misconception_tags = '["warrant_is_warrant","reasonable_suspicion_suffices","interior_location_controls"]',
       why_attractive = 'The answer treats an arrest warrant as portable authority that follows Timothy wherever he goes. The breaker is the Gold Key: a person warrant does not become a place warrant for Lydia’s home.',
       why_wrong_or_correct = 'The phrase ''any private home'' overextends the arrest warrant. The Gold Key separates a person warrant from a place warrant.',
       future_cue = 'Mark ''any private home'' as the overclaim and apply the Gold Key.',
       remediation_id = 'CRIM-REM-THIRD-PARTY-HOME-01'
 WHERE question_id = '3218db87-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '19a13ffda145074248b2771da8c7f3ab8ceda395265afb7ac84b4fc24355bb4f'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'No, but only because Timothy was seized in the prayer nook rather than at the front door.',
       is_correct = 0,
       forensic_tags = '["wrong_element"]',
       misconception_tags = '["warrant_is_warrant","reasonable_suspicion_suffices","interior_location_controls"]',
       why_attractive = 'The prayer nook is a vivid concrete fact, so it feels legally operative. The breaker is the Silver Key: entry authority is decided at the door, not by the room where the arrest happens.',
       why_wrong_or_correct = 'The prayer-nook fact concerns where Timothy was found after entry. The call asks whether entry was lawful.',
       future_cue = 'Resolve the door before the room.',
       remediation_id = 'CRIM-REM-THIRD-PARTY-HOME-01'
 WHERE question_id = '3218db87-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = '4fcebdb1d5a62023f16d0892850af0a53855a16457a5402fd09e415d68ecacfb'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'No, because officers needed a search warrant for Lydia’s home or a valid exception.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'D is correct. The entry was into Lydia’s home, not Timothy’s. Gold Key: an arrest warrant authorizes seizure of the named person; it does not itself authorize officers to enter and search a third party’s home for that person. The officers needed a search warrant for Lydia’s home or a valid exception such as consent or exigency. Silver Key: resolve the door before the room. The question asks about crossing Lydia’s threshold, so the prayer-nook detail comes too late to supply entry authority.',
       future_cue = NULL,
       remediation_id = 'CRIM-REM-THIRD-PARTY-HOME-01'
 WHERE question_id = '3218db87-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = '6a6733b334871d765e0336a3f976cb3f3aeedc9fee3d1d90965cec65ffa46102'
   AND is_correct = 1;

-- CQ21879.md -> 21879_noahs_ark_puppet_set (31a3cc15-6a31-11f1-a7ad-f9e8a06a2fad)
UPDATE questions
   SET subject = 'CONTRACTS',
       topic = 'Formation of Contracts',
       subtopic = 'Mutual Assent / Offer and Acceptance',
       tension_point = 'offer vs acceptance by required performance',
       fact_pattern = 'On April 3, after hearing that Lydia was organizing a neighborhood Bible-story night, Peter sent Lydia a note offering to sell his handmade Noah’s Ark puppet set. Lydia wrote back on April 10 and told Peter that she would buy the puppet set for $175 if Peter delivered it to her courtyard studio on May 6. On May 5, Lydia decided that she would borrow puppets from Naomi instead and wrote Peter a note telling him that she was no longer interested in buying the puppet set. She was about to take the note to the mail drop when Peter knocked at her door. As soon as Lydia opened the door, Peter said, “I’ll bring you that puppet set tomorrow. I’ll just have to borrow Barnabas’s cargo tricycle to carry it.” Lydia said, “Never mind. I don’t want it,” and handed Peter the note she had written but not mailed.

Peter’s statement on May 5 that “I’ll bring you that puppet set tomorrow” was probably:',
       question_stem = 'On April 3, after hearing that Lydia was organizing a neighborhood Bible-story night, Peter sent Lydia a note offering to sell his handmade Noah’s Ark puppet set. Lydia wrote back on April 10 and told Peter that she would buy the puppet set for $175 if Peter delivered it to her courtyard studio on May 6. On May 5, Lydia decided that she would borrow puppets from Naomi instead and wrote Peter a note telling him that she was no longer interested in buying the puppet set. She was about to take the note to the mail drop when Peter knocked at her door. As soon as Lydia opened the door, Peter said, “I’ll bring you that puppet set tomorrow. I’ll just have to borrow Barnabas’s cargo tricycle to carry it.” Lydia said, “Never mind. I don’t want it,” and handed Peter the note she had written but not mailed.

Peter’s statement on May 5 that “I’ll bring you that puppet set tomorrow” was probably:

The call is classification. Predict the label for Peter’s words. The sentence expresses willingness to go forward, but no delivery has happened. Prediction: offer.',
       call_of_question = 'The call is classification. Predict the label for Peter’s words. The sentence expresses willingness to go forward, but no delivery has happened. Prediction: offer.',
       difficulty = 2,
       metadata = '{"source_file":"CQ21879.md","source_question_id":"21879","variant_slug":"noahs_ark_puppet_set","batch":"cq-updated-copy-2026-06-20","outline_code":"55020101","outline_code_verified":true,"difficulty_band":"medium","deciding_phase":null,"confidence":"ANCHOR_ASSISTED","splitting_fact":null,"distilled_core_question":"Buyer says she will buy only if seller delivers on a date; seller says the day before that he will bring it tomorrow. What is seller’s statement?","review_truth":"A promise to deliver later is not delivery; if delivery is the required acceptance, the promise is best labeled an offer.","dominant_trap":null,"anchor_card":{"card_id":"REM-CONTRACTS-OFFER-ACCEPTANCE-MODE-01","title":"Mode-of-Acceptance Label Drill","signal":"One party says “I will buy if you deliver,” and the other says “I will deliver.”","student_move":"Ask what act the first statement required and whether that act has happened.","tiny_rule":"Words promising future delivery are not the delivery itself.","trap":"Calling the future promise an acceptance or commencement.","confidence":"ANCHOR_ASSISTED"},"gold_keys":[{"id":"GK-CONTRACTS-MODE-ACCEPTANCE-01","statement":"If an offer requires acceptance by a specified performance or tender, a later promise to perform is not the invited acceptance; it is at most a new offer or counteroffer.","type":"distinction","trigger":null,"authority":null,"last_minute_review":false}],"silver_keys":[{"id":"SK-CONTRACTS-NOAHS-ARK-01","statement":"Classify the sentence before debating doctrine: future-tense words are not performance already begun.","type":"cut","trigger":null,"authority":null,"last_minute_review":false}],"drill_seeds":[{"drill_type":"label_classification","target_skill":"offer_acceptance_mode","prompt":"Buyer: “I will buy if you deliver Friday.” Seller Thursday: “I will deliver Friday.” Classify seller’s words.","answer":"Offer, not acceptance, if delivery was the required acceptance."},{"drill_type":"verb_tense_cut","target_skill":"future_words_vs_performance","prompt":"Choice says “commencement of performance.” Stem says “I will bring it tomorrow.” Cut or keep?","answer":"Cut; future words are not present performance."},{"drill_type":"wrong_frame","target_skill":"ratification_trap","prompt":"Can a party ratify an acceptance that never legally occurred?","answer":"No."}],"updated_copy_source":"C:/FOC/Workspace/Finished/*_updated.md"}'
 WHERE question_id = '31a3cc15-6a31-11f1-a7ad-f9e8a06a2fad'
   AND external_id = '21879_noahs_ark_puppet_set'
   AND SHA2(COALESCE(fact_pattern, ''), 256) = '57c54664abde487f6271ce29b304affc5be5c20969695211a6e20c8f6636cb3d'
   AND SHA2(COALESCE(question_stem, ''), 256) = 'c263f075297c15c726f620a18e2d0c61046e42b8c37ba1036f5c55fbc54ad787'
   AND SHA2(COALESCE(call_of_question, ''), 256) = '6ca2bfec3b1af58f8e7daee78b795de06ee279dedcf788c659866b491916fa28';
UPDATE answer_choices
   SET choice_text = 'a ratification of Lydia’s earlier acceptance of Peter’s sale offer.',
       is_correct = 0,
       forensic_tags = '["flat_misstatement","wrong_frame"]',
       misconception_tags = '["agreement_words_equal_acceptance","planning_equals_performance","correspondence_chain_equals_contract"]',
       why_attractive = 'The word ratification sounds like a sophisticated way to validate the earlier exchange. The breaker is that no earlier acceptance existed to ratify.',
       why_wrong_or_correct = 'It assumes an earlier acceptance existed, but the earlier letter required delivery.',
       future_cue = 'Mark the earlier letter as delivery-conditioned before labeling Peter’s later statement.',
       remediation_id = 'REM-CONTRACTS-OFFER-ACCEPTANCE-MODE-01'
 WHERE question_id = '31a3cc15-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'A'
   AND SHA2(COALESCE(choice_text, ''), 256) = 'd0fa16461bd45af59ed4fdaa44c790c9243fc07e82c9aae4dd0c6732e91b62e3'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'commencement of performance.',
       is_correct = 0,
       forensic_tags = '["flat_misstatement"]',
       misconception_tags = '["agreement_words_equal_acceptance","planning_equals_performance","correspondence_chain_equals_contract"]',
       why_attractive = 'Peter talks about the transport step, so the answer feels tied to action. The breaker is that he has not delivered, tendered, or begun delivering yet.',
       why_wrong_or_correct = 'A future promise to bring the goods is not present commencement of performance.',
       future_cue = 'Ask whether the goods were delivered, tendered, or physically being brought.',
       remediation_id = 'REM-CONTRACTS-OFFER-ACCEPTANCE-MODE-01'
 WHERE question_id = '31a3cc15-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'B'
   AND SHA2(COALESCE(choice_text, ''), 256) = '6835f1db41011575585e098ccb663e427726f7486e742f70faef7ea531a9a5e5'
   AND is_correct = 0;
UPDATE answer_choices
   SET choice_text = 'an offer.',
       is_correct = 1,
       forensic_tags = '[]',
       misconception_tags = '[]',
       why_attractive = NULL,
       why_wrong_or_correct = 'C is correct. Peter’s statement shows willingness to go forward with a sale on the known price-and-delivery terms. Gold Key: When the earlier buyer letter makes delivery the required way to accept, a later statement that “I’ll bring it tomorrow” is not itself the invited delivery; it is best treated as a new offer to complete the deal. Silver Key: Read the answer array as four legal labels for the same sentence. Cut the labels that require an act already completed, then keep the label that fits a future-tense commitment.',
       future_cue = NULL,
       remediation_id = 'REM-CONTRACTS-OFFER-ACCEPTANCE-MODE-01'
 WHERE question_id = '31a3cc15-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'C'
   AND SHA2(COALESCE(choice_text, ''), 256) = '07062c8800b0be93e80a6acdb0f62dd8d82a88893462a1b922a5c759aaa67f54'
   AND is_correct = 1;
UPDATE answer_choices
   SET choice_text = 'an acceptance.',
       is_correct = 0,
       forensic_tags = '["flat_misstatement","wrong_frame"]',
       misconception_tags = '["agreement_words_equal_acceptance","planning_equals_performance","correspondence_chain_equals_contract"]',
       why_attractive = 'Peter’s words sound like agreement, so students call them acceptance. The breaker is that the invited acceptance was delivery, not a promise to deliver later.',
       why_wrong_or_correct = 'The statement promises later delivery; it is not the delivery-conditioned acceptance.',
       future_cue = 'Ask what the buyer invited as the accepting act.',
       remediation_id = 'REM-CONTRACTS-OFFER-ACCEPTANCE-MODE-01'
 WHERE question_id = '31a3cc15-6a31-11f1-a7ad-f9e8a06a2fad'
   AND letter = 'D'
   AND SHA2(COALESCE(choice_text, ''), 256) = '148d9227c537a9ff74be9cc1904545d9217f21745f7ec41c77f1bdd56acddeef'
   AND is_correct = 0;

COMMIT;
