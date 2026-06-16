# BarMatrix 8-Digit Outline Code -- Complete Reference

Single file for chat attachment. Covers all 36 MBE subtopics with scope
descriptions and all 593 valid classification codes.

========================================================================
ALL 36 SUBTOPICS AT A GLANCE
========================================================================

AB   Subject                        Official NCBE Subtopic
---  ----------------------------   ------------------------------------------
31   Evidence                       Presentation of Evidence
32                                  Relevancy and Excluding Relevant Evidence
33                                  Hearsay and Circumstances of Its Admissibility
34                                  Writings, Recordings, and Photographs
35                                  Privileges and Other Policy Exclusions

41   Constitutional Law             Relations Between Federal and State Governments
42                                  Separation of Powers
43                                  Judicial Review
44                                  Individual Rights

51   Contracts                      Remedies
52                                  Contract Content and Meaning
53                                  Third-Party Rights
54                                  Defenses to Enforceability
55                                  Formation of Contracts
56                                  Performance, Breach, and Discharge

61   Torts                          Negligence
62                                  Other Torts
63                                  Strict Liability and Products Liability
64                                  Intentional Torts

71   Criminal Law and Procedure     Inchoate Crimes
72                                  General Principles
73                                  Other Crimes
74                                  Homicide
75                                  Constitutional Protection of Accused Persons (Criminal Procedure)

81   Real Property                  Rights in Land
82                                  Ownership
83                                  Mortgages
84                                  Titles
85                                  Contracts for Land

91   Civil Procedure                Jury Trials
92                                  Motions
93                                  Appealability and Review
94                                  Jurisdiction and Venue
95                                  Pretrial Procedures
96                                  Law Applied by Federal Courts (Erie)
97                                  Verdicts and Judgments

========================================================================
FORMAT
========================================================================

  A B CC DD EE
  | | |  |  +-- Level 3 node  (00 = not used)
  | | |  +----- Level 2 node  (00 = not used)
  | | +-------- Level 1 section within the subject
  | +---------- BarMatrix bank subtopic
  +------------ Subject

  3=Evidence  4=ConLaw  5=Contracts  6=Torts  7=Crim  8=RealProp  9=CivPro

KEY RULE: The first two digits (AB) fully determine subject + subtopic.
Assign the deepest code the tested issue clearly matches.
If only the broad topic is clear, use the Level 1 code (ends 0000).
NEVER invent a code -- only codes listed below are valid.

========================================================================
ROUTING RULES -- READ BEFORE CLASSIFYING
========================================================================

CrimPro vs ConLaw -- the #1 misclassification

AB=75 is CRIMINAL PROCEDURE (subject 7), NOT ConLaw (subject 4).
Every 75xx node has a constitutional doctrine name -- that is why models
drift to 4xxx. The rule:

  WHOSE RIGHT, IN WHAT POSTURE?
  Suspect/defendant asserting right AGAINST police/prosecution/the criminal
  process  -->  75xx  (Criminal Procedure)
  Same doctrine raised OUTSIDE a criminal prosecution  -->  4xxx  (ConLaw)

  Search/seizure, warrants, stop-and-frisk              75 07 xx
  Miranda, confessions, identifications                 75 08 xx
  Confrontation Clause as TRIAL RIGHT of accused        75 08 xx
  Double jeopardy                                       75 08 xx
  Right to counsel / speedy / public / jury (criminal)  75 09 xx
  Exclusionary rule / fruit of the poisonous tree       75100000
  8th Am, sentencing, cruel & unusual, appeal, habeas   75 11 xx
  Ex post facto raised by an accused; competency        75 12 xx

  Due process / equal protection / 1st Am (non-criminal)  -->  44xx
  Ex post facto as limit on legislation generally         -->  44040602
  Confrontation Clause as a HEARSAY BAR (Evidence)        -->  33040400
  7th Amendment civil jury right                          -->  91xx (CivPro)
  Personal jurisdiction min-contacts due process          -->  94xx (CivPro)
  Plea negotiations excluded from evidence                -->  35030303

Within subject 7 -- which B?
  71 = inchoate crimes (solicitation / conspiracy / attempt)
  72 = general principles (actus reus, mens rea, causation, defenses)
  73 = non-homicide crimes (assault, larceny, robbery, burglary, arson...)
  74 = homicide (murder, manslaughter, felony murder)
  75 = suspect/defendant constitutional rights  <-- THIS IS CrimPro

========================================================================
SUBTOPICS AND CODES
========================================================================

Each section shows:
  - AB prefix and official NCBE subtopic name
  - Scope: what legal issues it covers (use this to pick the right AB)
  - All valid codes, indented by level (L1 flush, L2 one indent, L3 two)


########################################################################
# EVIDENCE
########################################################################

AB=31  Presentation of Evidence
------------------------------------------------------------
  Mode/order of witnesses; competency; lay and expert opinion; form
  of examination; impeachment (prior inconsistent statement, bias,
  conviction of crime, reputation/opinion); refreshing recollection;
  objections and motions to strike; judicial notice; burden of
  proof; presumptions; preliminary questions (FRE 104).

  Valid codes:
    31010000  Presentation of Evidence
        31010100  Presentation of Evidence > General Provisions
            31010101  Presentation of Evidence > General Provisions > Roles of judge and jury
            31010102  Presentation of Evidence > General Provisions > Burden of production and burden of persuasion
            31010103  Presentation of Evidence > General Provisions > Presumptions and inferences
            31010104  Presentation of Evidence > General Provisions > Materiality and probative value
            31010105  Presentation of Evidence > General Provisions > Offers of proof
            31010106  Presentation of Evidence > General Provisions > Judicial notice
            31010107  Presentation of Evidence > General Provisions > Preliminary questions
            31010108  Presentation of Evidence > General Provisions > Rule of completeness
        31010200  Presentation of Evidence > Objections and Motions to Strike
            31010201  Presentation of Evidence > Objections and Motions to Strike > Trial judge’s discretion to control order and presentation of evidence
            31010202  Presentation of Evidence > Objections and Motions to Strike > Common objections to questions
            31010203  Presentation of Evidence > Objections and Motions to Strike > Nonresponsive answers
        31010300  Presentation of Evidence > Types of Evidence
        31010400  Presentation of Evidence > Witnesses
            31010401  Presentation of Evidence > Witnesses > Mode and order of witnesses
            31010402  Presentation of Evidence > Witnesses > Form and scope of examination
            31010403  Presentation of Evidence > Witnesses > Lay opinion testimony
            31010404  Presentation of Evidence > Witnesses > Competency
            31010405  Presentation of Evidence > Witnesses > Personal knowledge
            31010406  Presentation of Evidence > Witnesses > Truthfulness
            31010407  Presentation of Evidence > Witnesses > Refreshing recollection
        31010500  Presentation of Evidence > Impeachment
            31010501  Presentation of Evidence > Impeachment > Use of impeachment material
            31010502  Presentation of Evidence > Impeachment > Prior inconsistent statement
            31010503  Presentation of Evidence > Impeachment > Bias
            31010504  Presentation of Evidence > Impeachment > Conviction of crime
            31010505  Presentation of Evidence > Impeachment > Opinion or reputation

AB=32  Relevancy and Excluding Relevant Evidence
------------------------------------------------------------
  Definition of relevance; FRE 403 balancing (undue prejudice,
  confusion, waste of time); character evidence -- prohibited
  propensity uses vs. permitted exceptions (MIMIC: motive, intent,
  absence of mistake, identity, common plan); specific-acts
  evidence; habit/custom; similar occurrences; authentication and
  identification; expert testimony (Daubert, qualification, basis,
  ultimate-issue, disclosure of underlying facts).

  Valid codes:
    32020000  Relevance
        32020100  Relevance > Definition
        32020200  Relevance > Laying a Foundation
        32020300  Relevance > Exclusion of Relevant Evidence
            32020301  Relevance > Exclusion of Relevant Evidence > Probative value
            32020302  Relevance > Exclusion of Relevant Evidence > Discretionary exclusion (undue prejudice, confusion, waste of time)
        32020400  Relevance > Character Evidence
            32020401  Relevance > Character Evidence > Forms of character evidence
            32020402  Relevance > Character Evidence > Prohibited uses of character evidence
            32020403  Relevance > Character Evidence > Exceptions allowing character evidence
            32020404  Relevance > Character Evidence > Specific acts for noncharacter purposes
            32020405  Relevance > Character Evidence > Cross-examination and rebuttal of character witnesses
        32020500  Relevance > Habit or custom practice
        32020600  Relevance > Similar occurrences and contracts
        32020700  Relevance > Authentication and Identification
        32020800  Relevance > Expert Testimony
            32020801  Relevance > Expert Testimony > Acceptable testimony
            32020802  Relevance > Expert Testimony > Qualification of experts
            32020803  Relevance > Expert Testimony > Basis of expert testimony
            32020804  Relevance > Expert Testimony > Opinion on ultimate issue
            32020805  Relevance > Expert Testimony > Disclosure of underlying facts or data

AB=33  Hearsay and Circumstances of Its Admissibility
------------------------------------------------------------
  Definition of hearsay and non-hearsay; conduct as hearsay;
  multiple hearsay; exemptions (prior witness statements, opposing-
  party admissions, co-conspirator statements); exceptions not
  requiring unavailability (present sense impression, excited
  utterance, then-existing state of mind, medical diagnosis, past
  recollection recorded, business records, public records);
  exceptions requiring unavailability (former testimony, dying
  declaration, statement against interest); residual exception.
  Confrontation Clause as a HEARSAY BAR in a criminal trial = code
  33040400 (NOT a CrimPro code -- see routing rules above).

  Valid codes:
    33040000  Hearsay
        33040100  Hearsay > In General
            33040101  Hearsay > In General > Hearsay rule
            33040102  Hearsay > In General > Conduct as hearsay
            33040103  Hearsay > In General > Multiple hearsay
            33040104  Hearsay > In General > Unavailability of declarant as necessary or unnecessary for specific exceptions
        33040200  Hearsay > Hearsay Exemptions
            33040201  Hearsay > Hearsay Exemptions > Prior statement of witness
            33040202  Hearsay > Hearsay Exemptions > Statement by opposing party
            33040203  Hearsay > Hearsay Exemptions > Statements used for non-hearsay purposes
        33040300  Hearsay > Hearsay Exceptions
            33040301  Hearsay > Hearsay Exceptions > Requiring unavailability of declarant
            33040302  Hearsay > Hearsay Exceptions > Not requiring unavailability of declarant
        33040400  Hearsay > Confrontation Clause

AB=34  Writings, Recordings, and Photographs
------------------------------------------------------------
  Best evidence / original-document rule (FRE 1001-1008); when
  original required; admissibility of duplicates; excuses for non-
  production of original; summaries of voluminous writings.

  Valid codes:
    34050000  Contents of Writings, Recordings, and Photographs
        34050100  Contents of Writings, Recordings, and Photographs > Requirement of the Original
            34050101  Contents of Writings, Recordings, and Photographs > Requirement of the Original > Best evidence rule
        34050200  Contents of Writings, Recordings, and Photographs > Duplicates
        34050300  Contents of Writings, Recordings, and Photographs > Missing or lost documents
        34050400  Contents of Writings, Recordings, and Photographs > Summaries

AB=35  Privileges and Other Policy Exclusions
------------------------------------------------------------
  Attorney-client; physician/psychotherapist-patient; spousal
  testimonial privilege; marital communications privilege; clergy-
  penitent; scope, waiver, and exceptions. Policy exclusions:
  subsequent remedial measures (FRE 407); compromise and settlement
  offers (FRE 408); payment of medical expenses (FRE 409); plea
  negotiations and withdrawn pleas (FRE 410 -- use code 35030303,
  NOT a CrimPro code); liability insurance (FRE 411).

  Valid codes:
    35030000  Privileges and Public Policy Exclusions
        35030100  Privileges and Public Policy Exclusions > Sources and Scope of Privileges and Policy Exclusions
        35030200  Privileges and Public Policy Exclusions > Particular Privileges
            35030201  Privileges and Public Policy Exclusions > Particular Privileges > Spousal Privileges
            35030202  Privileges and Public Policy Exclusions > Particular Privileges > Marital Communications Privilege
            35030203  Privileges and Public Policy Exclusions > Particular Privileges > Physician-patient
            35030204  Privileges and Public Policy Exclusions > Particular Privileges > Psychotherapist-patient
            35030205  Privileges and Public Policy Exclusions > Particular Privileges > Attorney-client
            35030206  Privileges and Public Policy Exclusions > Particular Privileges > Clergy and penitent
        35030300  Privileges and Public Policy Exclusions > Public Policy Exclusions
            35030301  Privileges and Public Policy Exclusions > Public Policy Exclusions > Subsequent remedial measures
            35030302  Privileges and Public Policy Exclusions > Public Policy Exclusions > Settlement negotiations and offers of compromise
            35030303  Privileges and Public Policy Exclusions > Public Policy Exclusions > Plea negotiations and withdrawn plea offers
            35030304  Privileges and Public Policy Exclusions > Public Policy Exclusions > Liability insurance
            35030305  Privileges and Public Policy Exclusions > Public Policy Exclusions > Payment of medical expenses

########################################################################
# CONSTITUTIONAL LAW
########################################################################

AB=41  Relations Between Federal and State Governments
------------------------------------------------------------
  Supremacy Clause; preemption (express, field, conflict);
  intergovernmental immunities; Tenth Amendment limits on federal
  commandeering; Dormant Commerce Clause (discrimination vs. burden;
  Pike balancing; market-participant exception); state taxation of
  interstate commerce.

  Valid codes:
    41030000  The Federal-State Relationship
        41030100  The Federal-State Relationship > Preemption and Consent
        41030200  The Federal-State Relationship > Intergovernmental Immunities
        41030300  The Federal-State Relationship > Supremacy Clause
        41030400  The Federal-State Relationship > Tenth Amendment and the Scope of State Authority
            41030401  The Federal-State Relationship > Tenth Amendment and the Scope of State Authority > Tenth Amendment
            41030402  The Federal-State Relationship > Tenth Amendment and the Scope of State Authority > Dormant Commerce Clause
            41030403  The Federal-State Relationship > Tenth Amendment and the Scope of State Authority > State taxation

AB=42  Separation of Powers
------------------------------------------------------------
  Congressional powers: commerce clause, taxing and spending,
  necessary-and-proper, war, property, investigatory, delegation,
  13th/14th/15th Amendment enforcement. Executive powers: commander-
  in-chief, chief executive, treaties/foreign affairs, appointment
  and removal, veto, pardon, executive privilege, executive
  immunity. Interbranch checks: impeachment, veto and override,
  legislative veto (invalidated).

  Valid codes:
    42010000  Separation of Powers
        42010100  Separation of Powers > Legislative Branch
            42010101  Separation of Powers > Legislative Branch > Taxing and spending power
            42010102  Separation of Powers > Legislative Branch > War power
            42010103  Separation of Powers > Legislative Branch > Commerce power
            42010104  Separation of Powers > Legislative Branch > “Necessary and Proper” Clause power
            42010105  Separation of Powers > Legislative Branch > Investigatory power
            42010106  Separation of Powers > Legislative Branch > Property power
            42010107  Separation of Powers > Legislative Branch > Thirteenth, Fourteenth, and Fifteenth Amendments
            42010108  Separation of Powers > Legislative Branch > Delegation Clause
        42010200  Separation of Powers > Executive Branch
            42010201  Separation of Powers > Executive Branch > Commander-in-chief
            42010202  Separation of Powers > Executive Branch > Chief executive
            42010203  Separation of Powers > Executive Branch > Treaties and foreign affairs
            42010204  Separation of Powers > Executive Branch > Appointment and removal
            42010205  Separation of Powers > Executive Branch > Veto
            42010206  Separation of Powers > Executive Branch > Pardon
            42010207  Separation of Powers > Executive Branch > Executive privilege
            42010208  Separation of Powers > Executive Branch > Executive immunity
        42010300  Separation of Powers > Interbranch Checks and Balances
            42010301  Separation of Powers > Interbranch Checks and Balances > Impeachment and other Congressional limits on executive
            42010302  Separation of Powers > Interbranch Checks and Balances > Veto and similar powers
            42010303  Separation of Powers > Interbranch Checks and Balances > Executive, congressional, and judicial privileges and immunities

AB=43  Judicial Review
------------------------------------------------------------
  Constitutional basis for federal judicial power (Marbury v.
  Madison); organization of Article III courts; jurisdiction
  (original vs. appellate); justiciability requirements: standing
  (injury-in-fact, causation, redressability), mootness, ripeness,
  political-question doctrine; congressional limits on jurisdiction;
  adequate and independent state grounds doctrine.

  Valid codes:
    43020000  Judicial Review
        43020100  Judicial Review > Organization of Courts
            43020101  Judicial Review > Organization of Courts > Constitutional basis
            43020102  Judicial Review > Organization of Courts > Organization
        43020200  Judicial Review > Jurisdiction of Courts
            43020201  Judicial Review > Jurisdiction of Courts > Constitutional limitations and justiciability
            43020202  Judicial Review > Jurisdiction of Courts > Congressional limitations

AB=44  Individual Rights
------------------------------------------------------------
  State action requirement. Due process: incorporation of Bill of
  Rights through 14th Amendment; substantive due process
  (fundamental rights -- privacy, marriage, contraception, abortion
  framework); procedural due process (property/liberty interest;
  notice and hearing). Equal protection: strict scrutiny (race,
  national origin, alienage, fundamental rights); intermediate
  scrutiny (sex, legitimacy); rational basis. Privileges and
  immunities (Art. IV Sec. 2 and 14th Amendment). First Amendment:
  free speech and expression (content-based vs. content-neutral;
  prior restraint; overbreadth/vagueness; public/nonpublic forum);
  free exercise; establishment clause; freedom of association.
  Other: bills of attainder; ex post facto LAWS as a limit on
  LEGISLATION (general, not a defendant -- accused ex post facto
  claim goes to 7512xx); Contracts Clause; Takings Clause. ROUTING:
  if the right is asserted by a criminal suspect or defendant
  against the criminal process, use 75xx, NOT 44xx.

  Valid codes:
    44040000  Individual Rights
        44040100  Individual Rights > State Action Requirement
        44040200  Individual Rights > Due Process Clause
            44040201  Individual Rights > Due Process Clause > Incorporation of Bill of Rights through the Fourteenth Amendment
            44040202  Individual Rights > Due Process Clause > Substantive due process
            44040203  Individual Rights > Due Process Clause > Procedural due process
        44040300  Individual Rights > Equal Protection Clause
            44040301  Individual Rights > Equal Protection Clause > Fundamental rights
            44040302  Individual Rights > Equal Protection Clause > Establishing discrimination
            44040303  Individual Rights > Equal Protection Clause > Strict scrutiny (suspect) classifications
            44040304  Individual Rights > Equal Protection Clause > Intermediate scrutiny (quasi-suspect) classifications
            44040305  Individual Rights > Equal Protection Clause > Rational basis review classifications
        44040400  Individual Rights > Privileges and Immunities of Citizens
            44040401  Individual Rights > Privileges and Immunities of Citizens > Privileges or Immunities Clause of the Fourteenth Amendment
            44040402  Individual Rights > Privileges and Immunities of Citizens > Privileges and Immunities Clause of Article IV, Section 2
        44040500  Individual Rights > First Amendment Protections
            44040501  Individual Rights > First Amendment Protections > Freedom of religion
            44040502  Individual Rights > First Amendment Protections > Freedom of speech and expression
            44040503  Individual Rights > First Amendment Protections > Freedom of the press
            44040504  Individual Rights > First Amendment Protections > Freedom of association
        44040600  Individual Rights > Other Protections
            44040601  Individual Rights > Other Protections > Bills of attainder
            44040602  Individual Rights > Other Protections > Ex post facto laws
            44040603  Individual Rights > Other Protections > Contracts Clause
            44040604  Individual Rights > Other Protections > Eminent domain—Takings Clause

########################################################################
# CONTRACTS
########################################################################

AB=51  Remedies
------------------------------------------------------------
  Expectation damages; reliance damages; consequential damages;
  incidental damages; nominal damages; liquidated damages
  (enforceability); duty to mitigate; legal restitution (replevin);
  equitable remedies (equitable restitution, rescission,
  reformation, specific performance). UCC Article 2 seller and buyer
  remedies.

  Valid codes:
    51060000  Remedies
        51060100  Remedies > Damages
            51060101  Remedies > Damages > Expectation damages
            51060102  Remedies > Damages > Reliance damages
            51060103  Remedies > Damages > Consequential damages
            51060104  Remedies > Damages > Incidental damages
            51060105  Remedies > Damages > Liquidated damages
            51060106  Remedies > Damages > Nominal damages
            51060107  Remedies > Damages > Duty to mitigate
        51060200  Remedies > Legal Restitution
            51060201  Remedies > Legal Restitution > Legal Restitution
            51060202  Remedies > Legal Restitution > Replevin
        51060300  Remedies > Equitable Remedies
            51060301  Remedies > Equitable Remedies > Equitable Restitution
            51060302  Remedies > Equitable Remedies > Rescission
            51060303  Remedies > Equitable Remedies > Reformation
            51060304  Remedies > Equitable Remedies > Specific performance
            51060305  Remedies > Equitable Remedies > Injunctions

AB=52  Contract Content and Meaning
------------------------------------------------------------
  Parol evidence rule and its exceptions (fraud, ambiguity,
  condition precedent, collateral agreement); interpretation of
  contract terms; gap-filling and implied terms; express and
  constructive conditions; modification and waiver; statute of
  frauds (what must be in writing; MYLEGS categories; part
  performance; promissory estoppel bypass); consideration (adequacy;
  past consideration; preexisting duty rule; promissory estoppel as
  substitute).

  Valid codes:
    52040000  Gap-Fillers, Interpretation, and the Parol Evidence Rule
        52040100  Gap-Fillers, Interpretation, and the Parol Evidence Rule > Gap-Fillers
        52040200  Gap-Fillers, Interpretation, and the Parol Evidence Rule > Interpretation
        52040300  Gap-Fillers, Interpretation, and the Parol Evidence Rule > Parol Evidence Rule

AB=53  Third-Party Rights
------------------------------------------------------------
  Assignment of rights (what is assignable; effect; anti-assignment
  clauses); delegation of duties (what is delegable; novation);
  third-party beneficiaries (intended vs. incidental; vesting of
  rights; defenses available against beneficiary).

  Valid codes:
    53070000  Nonparties to Contract
        53070100  Nonparties to Contract > Third-Party Beneficiary Contracts
        53070200  Nonparties to Contract > Assignment of Rights
        53070300  Nonparties to Contract > Delegation of Duties

AB=54  Defenses to Enforceability
------------------------------------------------------------
  Mutual and unilateral mistake; misrepresentation and fraudulent
  inducement; duress (physical and economic); undue influence;
  unconscionability (procedural and substantive); illegality and
  public policy; incapacity (infancy/minority, mental incapacity).

  Valid codes:
    54030000  Defenses to Formation or Enforcement
        54030100  Defenses to Formation or Enforcement > Lack of Capacity
        54030200  Defenses to Formation or Enforcement > Illegality
        54030300  Defenses to Formation or Enforcement > Unconscionability
        54030400  Defenses to Formation or Enforcement > Statute of Frauds
        54030500  Defenses to Formation or Enforcement > Ambiguity
        54030600  Defenses to Formation or Enforcement > Mistake / Lack of Mutual Assent
        54030700  Defenses to Formation or Enforcement > Duress
        54030800  Defenses to Formation or Enforcement > Misrepresentation / Fraud
        54030900  Defenses to Formation or Enforcement > Undue Influence
        54031000  Defenses to Formation or Enforcement > Public Policy

AB=55  Formation of Contracts
------------------------------------------------------------
  Offer (definiteness requirements; termination: rejection,
  revocation, lapse, death/destruction); option contracts and firm
  offers (UCC 2-205); acceptance (mirror-image rule; mailbox rule;
  UCC 2-207 battle of the forms); consideration; promissory estoppel
  as consideration substitute; quasi-contract/unjust enrichment
  (implied-in-law contract). Multi-CC note: AB=55 spans CC01 and
  CC02 -- all 55xx codes are in scope.

  Valid codes:
    55010000  Introductory Principles / Applicable Law
        55010100  Introductory Principles / Applicable Law > Sources of Law
            55010101  Introductory Principles / Applicable Law > Sources of Law > Uniform Commercial Code (UCC)
            55010102  Introductory Principles / Applicable Law > Sources of Law > Common law
        55010200  Introductory Principles / Applicable Law > Types of Agreements
            55010201  Introductory Principles / Applicable Law > Types of Agreements > Bilateral contract
            55010202  Introductory Principles / Applicable Law > Types of Agreements > Unilateral contract
    55020000  Formation
        55020100  Formation > Mutual Assent
            55020101  Formation > Mutual Assent > Offer
            55020102  Formation > Mutual Assent > Acceptance
        55020200  Formation > Consideration
            55020201  Formation > Consideration > Bargain and exchange
            55020202  Formation > Consideration > Illusory promises
            55020203  Formation > Consideration > Requirement and output contracts
            55020204  Formation > Consideration > Preexisting duty
            55020205  Formation > Consideration > Sufficiency of consideration
        55020300  Formation > Promissory Estoppel
        55020400  Formation > Implied-in-fact contracts
        55020500  Formation > Implied-in-law contracts

AB=56  Performance, Breach, and Discharge
------------------------------------------------------------
  Conditions precedent, subsequent, and concurrent; substantial
  performance; material vs. minor breach; anticipatory repudiation
  (retraction; options of non-breaching party); UCC perfect-tender
  rule; right to cure; adequate assurance of performance;
  impossibility/impracticability (destruction of subject matter;
  supervening illegality); frustration of purpose; accord and
  satisfaction; novation; discharge by agreement or operation of
  law.

  Valid codes:
    56050000  Performance, Breach, and Excuse
        56050100  Performance, Breach, and Excuse > Conditions
            56050101  Performance, Breach, and Excuse > Conditions > Covenants
            56050102  Performance, Breach, and Excuse > Conditions > Conditions
        56050200  Performance, Breach, and Excuse > Modifications
        56050300  Performance, Breach, and Excuse > Performance
        56050400  Performance, Breach, and Excuse > Breach
            56050401  Performance, Breach, and Excuse > Breach > Material v. Minor
            56050402  Performance, Breach, and Excuse > Breach > Perfect Tender Rule
            56050403  Performance, Breach, and Excuse > Breach > Anticipatory repudiation
        56050500  Performance, Breach, and Excuse > Discharge of Contracts
        56050600  Performance, Breach, and Excuse > Excuse of Condition/Discharge of Duty
            56050601  Performance, Breach, and Excuse > Excuse of Condition/Discharge of Duty > Impossibility
            56050602  Performance, Breach, and Excuse > Excuse of Condition/Discharge of Duty > Impracticability
            56050603  Performance, Breach, and Excuse > Excuse of Condition/Discharge of Duty > Frustration of purpose
            56050604  Performance, Breach, and Excuse > Excuse of Condition/Discharge of Duty > Waiver
            56050605  Performance, Breach, and Excuse > Excuse of Condition/Discharge of Duty > Estoppel
            56050606  Performance, Breach, and Excuse > Excuse of Condition/Discharge of Duty > Discharge by subsequent agreement
            56050607  Performance, Breach, and Excuse > Excuse of Condition/Discharge of Duty > Accord and satisfaction
            56050608  Performance, Breach, and Excuse > Excuse of Condition/Discharge of Duty > Novation

########################################################################
# TORTS
########################################################################

AB=61  Negligence
------------------------------------------------------------
  Duty (to whom owed; special relationships; landowner duties to
  trespassers/licensees/invitees; negligence per se); breach
  (reasonable person standard; custom; res ipsa loquitur); actual
  causation (but-for; substantial factor for multiple sufficient
  causes); proximate causation (foreseeability;
  superseding/intervening causes); damages (personal injury;
  property; economic); defenses: contributory negligence;
  comparative negligence (pure vs. modified); assumption of risk;
  last clear chance; special plaintiff rules (eggshell skull).

  Valid codes:
    61020000  Negligence
        61020100  Negligence > Duty
            61020101  Negligence > Duty > In general
            61020102  Negligence > Duty > Foreseeable plaintiffs
            61020103  Negligence > Duty > Foreseeable and unreasonable risk
            61020104  Negligence > Duty > Affirmative duties to act
        61020200  Negligence > Standard of Due Care
            61020201  Negligence > Standard of Due Care > Duty of reasonable prudent person in prevailing circumstances
            61020202  Negligence > Standard of Due Care > Particular standards of care
            61020203  Negligence > Standard of Due Care > Negligent infliction of emotional distress
        61020300  Negligence > Breach
            61020301  Negligence > Breach > Falling below the standard of care
            61020302  Negligence > Breach > Negligence per se
            61020303  Negligence > Breach > Custom
            61020304  Negligence > Breach > Res ipsa loquitur
        61020400  Negligence > Causation
            61020401  Negligence > Causation > Cause in fact (actual cause)
            61020402  Negligence > Causation > Proximate (legal) cause
        61020500  Negligence > Damages
        61020600  Negligence > Defenses
            61020601  Negligence > Defenses > Assumption of risk
            61020602  Negligence > Defenses > Contributory negligence
            61020603  Negligence > Defenses > Comparative negligence

AB=62  Other Torts
------------------------------------------------------------
  Defamation (libel vs. slander; publication; defamation per se;
  public vs. private figure; actual malice standard; opinion vs.
  fact); invasion of privacy (intrusion upon seclusion, false light,
  appropriation of name/likeness, public disclosure of private
  facts); malicious prosecution; abuse of process; misrepresentation
  (fraudulent vs. negligent; elements); interference with contract
  or prospective economic advantage; nuisance (public vs. private;
  remedies). Multi-CC note: AB=62 spans CC05 and CC06 -- all 62xx
  codes are in scope.

  Valid codes:
    62050000  Other Torts
        62050100  Other Torts > Nuisance
            62050101  Other Torts > Nuisance > Public
            62050102  Other Torts > Nuisance > Private
        62050200  Other Torts > Misrepresentation
        62050300  Other Torts > Economic Torts
            62050301  Other Torts > Economic Torts > Interference with contractual relations
            62050302  Other Torts > Economic Torts > Interference with prospective advantage
            62050303  Other Torts > Economic Torts > Injurious falsehood (trade libel)
        62050400  Other Torts > Defamation, Privacy, and Reputation Torts
            62050401  Other Torts > Defamation, Privacy, and Reputation Torts > Defamation
            62050402  Other Torts > Defamation, Privacy, and Reputation Torts > Invasion of privacy
            62050403  Other Torts > Defamation, Privacy, and Reputation Torts > Malicious prosecution
            62050404  Other Torts > Defamation, Privacy, and Reputation Torts > Abuse of process
            62050405  Other Torts > Defamation, Privacy, and Reputation Torts > Wrongful institution of civil proceedings
    62060000  Other Considerations
        62060100  Other Considerations > Vicarious Liability for Acts of Others
            62060101  Other Considerations > Vicarious Liability for Acts of Others > Independent contractor and nondelegable duties
        62060200  Other Considerations > Joint Tortfeasors
            62060201  Other Considerations > Joint Tortfeasors > Joint and several liability
            62060202  Other Considerations > Joint Tortfeasors > Satisfaction and release
            62060203  Other Considerations > Joint Tortfeasors > Contribution and indemnity
            62060204  Other Considerations > Joint Tortfeasors > Apportionment of damages
        62060300  Other Considerations > Wrongful Death and Survival Actions
        62060400  Other Considerations > Loss of Consortium

AB=63  Strict Liability and Products Liability
------------------------------------------------------------
  Strict liability for abnormally dangerous activities (Restatement
  factors; non-delegable duty); wild/domesticated animals. Products
  liability: manufacturing defect (deviation from design); design
  defect (consumer-expectation test; risk-utility/reasonable
  alternative design test); failure to warn (inadequate
  instructions; learned intermediary doctrine); who can be held
  strictly liable (seller in commercial chain; occasional sellers
  excluded); bystander recovery; defenses (comparative fault;
  assumption of risk; misuse; sophisticated user). Multi-CC note:
  AB=63 spans CC03 and CC04 -- all 63xx codes are in scope.

  Valid codes:
    63030000  Products Liability
        63030100  Products Liability > Strict Products Liability
        63030200  Products Liability > Negligence Theory
        63030300  Products Liability > Warranty Theory
            63030301  Products Liability > Warranty Theory > Express warranties
            63030302  Products Liability > Warranty Theory > Implied warranties
        63030400  Products Liability > Defenses
    63040000  Strict Liability
        63040100  Strict Liability > Abnormally Dangerous Activities
        63040200  Strict Liability > Possession of Animals
        63040300  Strict Liability > Defenses

AB=64  Intentional Torts
------------------------------------------------------------
  Battery (harmful or offensive contact; intent; transferred
  intent); assault (apprehension of imminent contact); false
  imprisonment (confinement; awareness/harm); intentional infliction
  of emotional distress (extreme and outrageous conduct; severe
  distress); trespass to land; trespass to chattels; conversion.
  Defenses: consent; self-defense; defense of others; defense of
  property (Katko limits on force); necessity (public vs. private);
  authority.

  Valid codes:
    64010000  Intentional Torts
        64010100  Intentional Torts > Intentional Torts to the Person
            64010101  Intentional Torts > Intentional Torts to the Person > Assault
            64010102  Intentional Torts > Intentional Torts to the Person > Battery
            64010103  Intentional Torts > Intentional Torts to the Person > False imprisonment
            64010104  Intentional Torts > Intentional Torts to the Person > Intentional infliction of emotional distress
        64010200  Intentional Torts > Intentional Torts to Property
            64010201  Intentional Torts > Intentional Torts to Property > Trespass to land
            64010202  Intentional Torts > Intentional Torts to Property > Trespass to chattel
            64010203  Intentional Torts > Intentional Torts to Property > Conversion
        64010300  Intentional Torts > Transferred Intent
        64010400  Intentional Torts > Defenses to Intentional Torts
        64010500  Intentional Torts > Privileges

########################################################################
# CRIMINAL LAW AND PROCEDURE
########################################################################

AB=71  Inchoate Crimes
------------------------------------------------------------
  Solicitation (elements; no defense of impossibility; merger into
  completed crime). Conspiracy (agreement; specific intent;
  plurality requirement; overt act in majority jurisdictions;
  Pinkerton co-conspirator liability; Wharton Rule; scope of
  liability for co-conspirators acts; withdrawal). Attempt (specific
  intent to commit target crime; substantial step vs. proximity
  test; legal vs. factual impossibility; abandonment/renunciation as
  defense). Merger doctrine.

  Valid codes:
    71040000  Inchoate Offenses
        71040100  Inchoate Offenses > Solicitation
        71040200  Inchoate Offenses > Conspiracy
        71040300  Inchoate Offenses > Attempt
        71040400  Inchoate Offenses > Defenses

AB=72  General Principles
------------------------------------------------------------
  Actus reus (voluntary act requirement; omission liability when
  legal duty exists). Mens rea (MPC levels: purpose, knowledge,
  recklessness, negligence; common law equivalents; transferred
  intent; strict liability crimes; mistake of fact and mistake of
  law). Causation (actual/but-for; proximate/legal; year-and-a-day
  rule). Concurrence of actus reus and mens rea.
  Accomplice/accessory liability (principal, accessory before/after
  the fact; Pinkerton; withdrawal from conspiracy). Defenses:
  insanity (M Naghten, irresistible impulse, MPC substantial
  capacity); voluntary and involuntary intoxication; self-defense
  and defense of others (proportionality; initial aggressor; retreat
  vs. stand-your-ground); defense of property (Katko limits);
  duress; necessity; entrapment (subjective vs. objective test);
  consent. Multi-CC note: AB=72 spans CC01, CC05, and CC06 -- all
  72xx codes are in scope.

  Valid codes:
    72010000  General Principles
        72010100  General Principles > Sources of Criminal Law
            72010101  General Principles > Sources of Criminal Law > Common law
            72010102  General Principles > Sources of Criminal Law > Modern law
            72010103  General Principles > Sources of Criminal Law > Model Penal Code
        72010200  General Principles > Classification of Crimes
        72010300  General Principles > Elements of Crimes
            72010301  General Principles > Elements of Crimes > Actus reus
            72010302  General Principles > Elements of Crimes > Mens rea
            72010303  General Principles > Elements of Crimes > Causation
        72010400  General Principles > Merger Doctrine
    72050000  Parties to Crime
        72050100  Parties to Crime > Principals
        72050200  Parties to Crime > Accomplices
        72050300  Parties to Crime > Accessories
        72050400  Parties to Crime > Scope of liability
    72060000  Defenses
        72060100  Defenses > Excuse Defenses
            72060101  Defenses > Excuse Defenses > Responsibility
            72060102  Defenses > Excuse Defenses > Infancy
            72060103  Defenses > Excuse Defenses > Mistake
            72060104  Defenses > Excuse Defenses > Impossibility
            72060105  Defenses > Excuse Defenses > Entrapment
            72060106  Defenses > Excuse Defenses > Consent
        72060200  Defenses > Justification Defenses
            72060201  Defenses > Justification Defenses > Self-defense
            72060202  Defenses > Justification Defenses > Imperfect self-defense
            72060203  Defenses > Justification Defenses > Defense of others
            72060204  Defenses > Justification Defenses > Defense of dwelling
            72060205  Defenses > Justification Defenses > Defense of property
            72060206  Defenses > Justification Defenses > Duress
            72060207  Defenses > Justification Defenses > Necessity

AB=73  Other Crimes
------------------------------------------------------------
  Crimes against persons: assault and battery; mayhem; kidnapping
  (asportation; false imprisonment distinction); rape and sexual
  assault. Property crimes: larceny (trespassory taking and carrying
  away of personal property of another with intent to permanently
  deprive); embezzlement (lawful possession, conversion); false
  pretenses (title passes; false representation of existing fact);
  robbery (larceny plus force/fear); extortion/blackmail; receipt of
  stolen property; forgery and uttering. Crimes against habitation:
  burglary (common law: breaking and entering, dwelling house, of
  another, at nighttime, with intent to commit felony therein;
  modern expansions); arson (common law; modern). Possession
  offenses. Multi-CC note: AB=73 spans CC02 and CC03 -- all 73xx
  codes are in scope.

  Valid codes:
    73020000  Crimes against the Person
        73020200  Crimes against the Person > Assault
        73020300  Crimes against the Person > Battery
        73020400  Crimes against the Person > False imprisonment
        73020500  Crimes against the Person > Kidnapping
        73020600  Crimes against the Person > Mayhem
        73020700  Crimes against the Person > Rape
    73030000  Crimes against Property
        73030100  Crimes against Property > Larceny
        73030200  Crimes against Property > Larceny by trick
        73030300  Crimes against Property > False pretenses
        73030400  Crimes against Property > Robbery
        73030500  Crimes against Property > Embezzlement
        73030600  Crimes against Property > Extortion
        73030700  Crimes against Property > Forgery
        73030800  Crimes against Property > Possession offenses
            73030801  Crimes against Property > Possession offenses > Receipt of stolen property
            73030802  Crimes against Property > Possession offenses > Controlled substances
            73030803  Crimes against Property > Possession offenses > Firearms
        73030900  Crimes against Property > Arson
        73031000  Crimes against Property > Burglary

AB=74  Homicide
------------------------------------------------------------
  Common law murder: malice aforethought (four types: intent to
  kill, intent to cause serious bodily harm, depraved-heart
  recklessness, felony murder). First-degree vs. second-degree
  murder (premeditation and deliberation; enumerated felonies).
  Felony murder rule: inherently dangerous felony; merger doctrine;
  killing by co-felon vs. killing by victim or police (agency theory
  vs. proximate cause theory). Voluntary manslaughter: heat of
  passion; adequate provocation; cooling time; reasonable person
  standard; imperfect self-defense. Involuntary manslaughter:
  criminal negligence (gross deviation); unlawful act / misdemeanor-
  manslaughter rule. Causation issues in homicide.

  Valid codes:
        74020100  Crimes against the Person > Homicide
            74020101  Crimes against the Person > Homicide > Murder
            74020102  Crimes against the Person > Homicide > Manslaughter

AB=75  Constitutional Protection of Accused Persons (Criminal Procedure)
------------------------------------------------------------
  THIS IS CRIMINAL PROCEDURE (subject 7, prefix 75) -- NOT
  Constitutional Law. Every 75xx node is a constitutional doctrine
  applied in a CRIMINAL PROSECUTION. Routing rule: right asserted by
  a suspect or defendant against police/prosecution = 75xx. Same
  doctrine raised outside criminal process = 44xx (ConLaw).
  Fourth Amendment (7507xx): searches and seizures; warrant
  requirement (probable cause; particularity; neutral magistrate);
  warrant exceptions: plain view, exigent circumstances,
  automobile/vehicle, search incident to arrest, consent, Terry stop
  and frisk (reasonable suspicion), administrative/inventory
  searches; standing to challenge (personal Fourth Amendment
  rights).
  Fifth/Sixth Amendments -- Interrogation and Identification
  (7508xx): Miranda rights (custody + interrogation; warnings;
  waiver; invocation of right to silence or counsel; public safety
  exception); statements obtained in violation; non-testimonial
  identification procedures (lineups, show-ups, photo arrays; right
  to counsel at post-charge lineup); Confrontation Clause as a TRIAL
  RIGHT of the accused (NOT the hearsay bar -- that is 33040400);
  double jeopardy (same offense test -- Blockburger; attachment of
  jeopardy; collateral estoppel; dual sovereignty exception).
  Sixth Amendment -- Other Trial Rights (7509xx): right to counsel
  (when attaches; critical stages; waiver; ineffective assistance --
  Strickland two-prong test); speedy trial (Barker v. Wingo
  factors); public trial; right to jury trial (seriousness
  threshold; size; unanimity; waiver); fair trial / impartial jury;
  Brady disclosure obligations (material exculpatory/impeachment
  evidence).
  Exclusionary Rule (75100000): fruit of the poisonous tree
  doctrine; independent source exception; inevitable discovery
  exception; attenuation doctrine; good faith exception (Leon);
  standing requirement (personal violation).
  Post-Trial Rights (7511xx): Eighth Amendment cruel and unusual
  punishment; proportionality review; death penalty procedures
  (aggravating factors; categorical exclusions); sentencing
  (Apprendi/Blakely -- facts that increase maximum sentence must go
  to jury); right to appeal; habeas corpus.
  Other Considerations (7512xx): ex post facto laws raised by an
  ACCUSED (as limit on legislation generally = 44040602);
  retroactivity of new constitutional rules (Teague v. Lane);
  competency to stand trial; Fourteenth Amendment identification
  procedures.

  Valid codes:
    75070000  Fourth Amendment
        75070100  Fourth Amendment > Arrest and Detention
        75070200  Fourth Amendment > Searches and Seizures
            75070201  Fourth Amendment > Searches and Seizures > Warrant requirement
            75070202  Fourth Amendment > Searches and Seizures > Exceptions to warrant requirement
    75080000  Fifth and Sixth Amendments—Statements, Confessions, and Identifications
        75080100  Fifth and Sixth Amendments—Statements, Confessions, and Identifications > Statements and Confessions
            75080101  Fifth and Sixth Amendments—Statements, Confessions, and Identifications > Statements and Confessions > Voluntary statements
            75080102  Fifth and Sixth Amendments—Statements, Confessions, and Identifications > Statements and Confessions > Waiver
        75080200  Fifth and Sixth Amendments—Statements, Confessions, and Identifications > Identifications
        75080300  Fifth and Sixth Amendments—Statements, Confessions, and Identifications > Right to Confrontation
        75080400  Fifth and Sixth Amendments—Statements, Confessions, and Identifications > Double Jeopardy
            75080401  Fifth and Sixth Amendments—Statements, Confessions, and Identifications > Double Jeopardy > Attachment
            75080402  Fifth and Sixth Amendments—Statements, Confessions, and Identifications > Double Jeopardy > Underlying Offense
            75080403  Fifth and Sixth Amendments—Statements, Confessions, and Identifications > Double Jeopardy > Separate Sovereignties Doctrine
            75080404  Fifth and Sixth Amendments—Statements, Confessions, and Identifications > Double Jeopardy > Retrial after Attachment
            75080405  Fifth and Sixth Amendments—Statements, Confessions, and Identifications > Double Jeopardy > Effect on Sentencing
    75090000  Sixth Amendment—Other Rights of the Accused
        75090100  Sixth Amendment—Other Rights of the Accused > Right to Jury Trial
        75090200  Sixth Amendment—Other Rights of the Accused > Right to Speedy Trial
        75090300  Sixth Amendment—Other Rights of the Accused > Right to Public Trial
        75090400  Sixth Amendment—Other Rights of the Accused > Right to Counsel
        75090500  Sixth Amendment—Other Rights of the Accused > Right to Fair Trial
        75090600  Sixth Amendment—Other Rights of the Accused > Rights during Discovery
    75100000  Exclusionary Rule
    75110000  Post-Trial Rights
        75110100  Post-Trial Rights > Eighth Amendment
        75110200  Post-Trial Rights > Rights during Sentencing
        75110300  Post-Trial Rights > Appeal
        75110400  Post-Trial Rights > Writ of Habeas Corpus
    75120000  Other Considerations
        75120100  Other Considerations > Ex Post Facto Crimes
        75120200  Other Considerations > Retroactivity of Later Decisions
        75120300  Other Considerations > Fourteenth Amendment Identifications
        75120400  Other Considerations > Competency

########################################################################
# REAL PROPERTY
########################################################################

AB=81  Rights in Land
------------------------------------------------------------
  Easements: appurtenant vs. in gross; express creation (grant or
  reservation); implied easements (prior use; necessity);
  prescriptive easement (adverse possession analog); scope of
  easement; termination (unity of title, abandonment, expiration,
  misuse, estoppel, condemnation). Licenses (revocable; estoppel).
  Covenants running with land (privity of estate; touch and concern;
  notice); equitable servitudes (no privity required; injunctive
  relief). Adverse possession (actual, open/notorious, exclusive,
  continuous, hostile/under claim of right; disability tolling;
  tacking). Zoning and land use (variances; special exceptions;
  nonconforming uses; regulatory taking distinction). Water rights;
  lateral and subjacent support; private nuisance.

  Valid codes:
    81020000  Non-Possessory Rights and Interests in Land
        81020100  Non-Possessory Rights and Interests in Land > Easements
            81020101  Non-Possessory Rights and Interests in Land > Easements > Nature and Type
            81020102  Non-Possessory Rights and Interests in Land > Easements > Creation
            81020103  Non-Possessory Rights and Interests in Land > Easements > Scope
            81020104  Non-Possessory Rights and Interests in Land > Easements > Transferability
            81020105  Non-Possessory Rights and Interests in Land > Easements > Termination and Modification
        81020200  Non-Possessory Rights and Interests in Land > Profits
        81020300  Non-Possessory Rights and Interests in Land > Licenses
        81020400  Non-Possessory Rights and Interests in Land > Real Covenants
            81020401  Non-Possessory Rights and Interests in Land > Real Covenants > Running with the land
            81020402  Non-Possessory Rights and Interests in Land > Real Covenants > Termination
        81020500  Non-Possessory Rights and Interests in Land > Equitable Servitudes / Restrictive Covenants
            81020501  Non-Possessory Rights and Interests in Land > Equitable Servitudes / Restrictive Covenants > Implied from common scheme
            81020502  Non-Possessory Rights and Interests in Land > Equitable Servitudes / Restrictive Covenants > Running with the land
            81020503  Non-Possessory Rights and Interests in Land > Equitable Servitudes / Restrictive Covenants > Equitable defenses
            81020504  Non-Possessory Rights and Interests in Land > Equitable Servitudes / Restrictive Covenants > Termination
        81020600  Non-Possessory Rights and Interests in Land > Fixtures
            81020601  Non-Possessory Rights and Interests in Land > Fixtures > Definition
            81020602  Non-Possessory Rights and Interests in Land > Fixtures > Ownership
            81020603  Non-Possessory Rights and Interests in Land > Fixtures > Removal
        81020700  Non-Possessory Rights and Interests in Land > Zoning
            81020701  Non-Possessory Rights and Interests in Land > Zoning > Nonconforming use
            81020702  Non-Possessory Rights and Interests in Land > Zoning > Variances and special exceptions
        81020800  Non-Possessory Rights and Interests in Land > Takings
            81020801  Non-Possessory Rights and Interests in Land > Takings > Actual Takings
            81020802  Non-Possessory Rights and Interests in Land > Takings > Regulatory
        81020900  Non-Possessory Rights and Interests in Land > Support Rights
            81020901  Non-Possessory Rights and Interests in Land > Support Rights > Lateral
            81020902  Non-Possessory Rights and Interests in Land > Support Rights > Subjacent

AB=82  Ownership
------------------------------------------------------------
  Present estates: fee simple absolute; fee simple determinable
  (possibility of reverter); fee simple subject to condition
  subsequent (right of entry/power of termination); fee simple
  subject to executory limitation; fee tail; life estate (waste
  doctrine: voluntary, permissive, ameliorative). Future interests:
  reversion; remainder (vested vs. contingent; vested subject to
  open/class gifts; acceleration); executory interest (shifting vs.
  springing); Rule Against Perpetuities (common law: no interest
  valid unless must vest within lives in being plus 21 years; wait-
  and-see and USRAP reforms). Concurrent ownership: joint tenancy
  (four unities: time, title, interest, possession; right of
  survivorship; severance methods); tenancy in common (undivided
  interest; no survivorship; alienable/devisable/descendible);
  tenancy by the entirety (spouses; creditor protection); partition
  (voluntary or judicial). Landlord-tenant: periodic tenancy,
  tenancy for years, tenancy at will, tenancy at sufferance;
  landlord duties (implied warranty of habitability; covenant of
  quiet enjoyment; constructive eviction); tenant duties (waste;
  rent; repair); assignment vs. sublease (privity of contract vs.
  privity of estate); eviction (actual vs. constructive).

  Valid codes:
    82010000  Nature and Ownership of Land
        82010100  Nature and Ownership of Land > Present Possessory Interests in Land
            82010101  Nature and Ownership of Land > Present Possessory Interests in Land > Fee simple absolute
            82010102  Nature and Ownership of Land > Present Possessory Interests in Land > Defeasible fees
            82010103  Nature and Ownership of Land > Present Possessory Interests in Land > Life estates
        82010200  Nature and Ownership of Land > Future Interests
            82010201  Nature and Ownership of Land > Future Interests > Contingent and vested remainders
            82010202  Nature and Ownership of Land > Future Interests > Reversions
            82010203  Nature and Ownership of Land > Future Interests > Executory interests
            82010204  Nature and Ownership of Land > Future Interests > Possibility of reverter
            82010205  Nature and Ownership of Land > Future Interests > Power of termination
        82010300  Nature and Ownership of Land > Concurrent Estates
            82010301  Nature and Ownership of Land > Concurrent Estates > Joint tenancy
            82010302  Nature and Ownership of Land > Concurrent Estates > Tenancy in common
            82010303  Nature and Ownership of Land > Concurrent Estates > Rights and duties of co-tenants
            82010304  Nature and Ownership of Land > Concurrent Estates > Partition and severance
        82010400  Nature and Ownership of Land > Landlord and Tenant
            82010401  Nature and Ownership of Land > Landlord and Tenant > Types of tenancies
            82010402  Nature and Ownership of Land > Landlord and Tenant > Duties and remedies
            82010403  Nature and Ownership of Land > Landlord and Tenant > Retaliatory evictions
            82010404  Nature and Ownership of Land > Landlord and Tenant > Assignments and subletting
            82010405  Nature and Ownership of Land > Landlord and Tenant > Termination, including surrender and mitigation
        82010500  Nature and Ownership of Land > Problems with Interests in Land
            82010501  Nature and Ownership of Land > Problems with Interests in Land > Waste
            82010502  Nature and Ownership of Land > Problems with Interests in Land > Gifts to classes
            82010503  Nature and Ownership of Land > Problems with Interests in Land > Rule Against Perpetuities
            82010504  Nature and Ownership of Land > Problems with Interests in Land > Restraints on alienation

AB=83  Mortgages
------------------------------------------------------------
  Creation and nature of mortgage interest; lien theory vs. title
  theory states; rights and duties of mortgagor and mortgagee during
  mortgage period; transfer of mortgaged property: subject to
  mortgage vs. assumption (personal liability; novation); transfer
  of the mortgage note (assignment; holder in due course
  protections); foreclosure (judicial sale; power of sale; strict
  foreclosure); equity of redemption and statutory right of
  redemption; deficiency judgments (anti-deficiency statutes);
  priority among mortgages (recording; purchase-money mortgage
  priority); modification and discharge (satisfaction; deed in
  lieu).

  Valid codes:
    83050000  Mortgages and Security Devices
        83050100  Mortgages and Security Devices > Types of Security Interests
            83050101  Mortgages and Security Devices > Types of Security Interests > Mortgage
            83050102  Mortgages and Security Devices > Types of Security Interests > Purchase-money mortgage
            83050103  Mortgages and Security Devices > Types of Security Interests > Future-advance mortgage
            83050104  Mortgages and Security Devices > Types of Security Interests > Installment land-sale contract
            83050105  Mortgages and Security Devices > Types of Security Interests > Equitable mortgage
            83050106  Mortgages and Security Devices > Types of Security Interests > Deed of trust
            83050107  Mortgages and Security Devices > Types of Security Interests > Liens
        83050200  Mortgages and Security Devices > Mortgage Theories
            83050201  Mortgages and Security Devices > Mortgage Theories > Lien theory
            83050202  Mortgages and Security Devices > Mortgage Theories > Title theory
            83050203  Mortgages and Security Devices > Mortgage Theories > Intermediate theory
        83050300  Mortgages and Security Devices > Pre-Foreclosure Rights and Obligations
            83050301  Mortgages and Security Devices > Pre-Foreclosure Rights and Obligations > Duty to pay principal and interest
            83050302  Mortgages and Security Devices > Pre-Foreclosure Rights and Obligations > Enforcement of Contract Provisions
            83050303  Mortgages and Security Devices > Pre-Foreclosure Rights and Obligations > Possession and title
        83050400  Mortgages and Security Devices > Transfers of Interest
            83050401  Mortgages and Security Devices > Transfers of Interest > Transfers by mortgagor
            83050402  Mortgages and Security Devices > Transfers of Interest > Transfers by mortgagee
        83050500  Mortgages and Security Devices > Discharge of the Mortgage
            83050501  Mortgages and Security Devices > Discharge of the Mortgage > Payment, including prepayment
            83050502  Mortgages and Security Devices > Discharge of the Mortgage > Deed in lieu of foreclosure
        83050600  Mortgages and Security Devices > Foreclosure
            83050601  Mortgages and Security Devices > Foreclosure > Procedure
            83050602  Mortgages and Security Devices > Foreclosure > Right to Redemption
            83050603  Mortgages and Security Devices > Foreclosure > Parties and priorities
            83050604  Mortgages and Security Devices > Foreclosure > Proceeds

AB=84  Titles
------------------------------------------------------------
  Delivery and acceptance of deeds (present intent to transfer;
  physical delivery; acceptance presumed; conditional
  delivery/escrow); types of deeds: general warranty (six
  covenants), special warranty, bargain-and-sale, quitclaim; breach
  of warranty covenants. Recording acts: notice statute (subsequent
  BFP without notice prevails); race-notice statute (subsequent BFP
  who records first prevails); race statute (first to record wins
  regardless of notice); shelter rule; wild deeds; what constitutes
  notice (actual, record/constructive, inquiry). Title insurance;
  title abstracts; marketable title (what it means; encumbrances;
  curing defects).

  Valid codes:
    84040000  Titles, Deeds, and Conveyancing
        84040100  Titles, Deeds, and Conveyancing > Adverse Possession
            84040101  Titles, Deeds, and Conveyancing > Adverse Possession > Requirements
            84040102  Titles, Deeds, and Conveyancing > Adverse Possession > Mistaken boundaries
            84040103  Titles, Deeds, and Conveyancing > Adverse Possession > Title acquired
        84040200  Titles, Deeds, and Conveyancing > Conveyance by Deed
            84040201  Titles, Deeds, and Conveyancing > Conveyance by Deed > Requirements for valid deed
            84040202  Titles, Deeds, and Conveyancing > Conveyance by Deed > Statute of Frauds
            84040203  Titles, Deeds, and Conveyancing > Conveyance by Deed > Delivery and acceptance
            84040204  Titles, Deeds, and Conveyancing > Conveyance by Deed > Types of deeds
            84040205  Titles, Deeds, and Conveyancing > Conveyance by Deed > Covenants of title
            84040206  Titles, Deeds, and Conveyancing > Conveyance by Deed > Estoppel by deed
            84040207  Titles, Deeds, and Conveyancing > Conveyance by Deed > After-acquired title
            84040208  Titles, Deeds, and Conveyancing > Conveyance by Deed > Forged instruments
        84040300  Titles, Deeds, and Conveyancing > Conveyance by Operation of Law and Will
        84040400  Titles, Deeds, and Conveyancing > Recording Acts
            84040401  Titles, Deeds, and Conveyancing > Recording Acts > Common law rule
            84040402  Titles, Deeds, and Conveyancing > Recording Acts > Types of statutes
            84040403  Titles, Deeds, and Conveyancing > Recording Acts > Bona fide purchaser
            84040404  Titles, Deeds, and Conveyancing > Recording Acts > Types of notice
            84040405  Titles, Deeds, and Conveyancing > Recording Acts > Indexes
            84040406  Titles, Deeds, and Conveyancing > Recording Acts > Priorities

AB=85  Contracts for Land
------------------------------------------------------------
  Statute of frauds for land sale contracts; part performance
  exception (payment, possession, improvements); equitable
  conversion (risk of loss shifts to buyer at contract formation;
  majority vs. minority rules); implied covenant of marketable title
  in land contracts; time-is-of-the-essence clauses; remedies for
  breach of land contract (specific performance; compensatory
  damages; rescission); fixtures (what becomes part of realty;
  landlord-tenant vs. seller-buyer disputes).

  Valid codes:
    85030000  Real Property Contracts
        85030100  Real Property Contracts > Land-Sale Contracts
            85030101  Real Property Contracts > Land-Sale Contracts > Creation
            85030102  Real Property Contracts > Land-Sale Contracts > Essential terms
            85030103  Real Property Contracts > Land-Sale Contracts > Time for performance
        85030200  Real Property Contracts > Options and Rights of First Refusal
        85030300  Real Property Contracts > Marketable Title
        85030400  Real Property Contracts > Risk of Loss and Equitable Conversion

########################################################################
# CIVIL PROCEDURE
########################################################################

AB=91  Jury Trials
------------------------------------------------------------
  7th Amendment right to jury trial in federal civil cases: applies
  to legal claims (damages); does not apply to equitable claims
  (injunction, specific performance, accounting); Beacon
  Theatres/Dairy Queen merger of law and equity (jury trial right
  preserved when legal and equitable claims tried together; legal
  issues tried to jury first). Jury selection: voir dire; challenges
  for cause (unlimited); peremptory challenges (limited; Batson v.
  Kentucky prohibits race-based and J.E.B. prohibits sex-based
  peremptory challenges). Scope of right; waiver by failure to
  demand.

  Valid codes:
    91090000  Trial
        91090100  Trial > Right to Jury Trial
        91090200  Trial > Demand for Jury Trial
        91090300  Trial > Jury Selection
        91090400  Trial > Jury Instructions

AB=92  Motions
------------------------------------------------------------
  Rule 12(b) pre-answer motions: 12(b)(1) lack of subject-matter
  jurisdiction (never waived); 12(b)(2) lack of personal
  jurisdiction (waived if not raised early); 12(b)(3) improper
  venue; 12(b)(4)/(5) insufficient process/service; 12(b)(6) failure
  to state a claim (Twombly/Iqbal plausibility standard); 12(b)(7)
  failure to join required party. Rule 12(c) judgment on the
  pleadings; Rule 12(e) more definite statement; Rule 12(f) motion
  to strike. Rule 56 summary judgment: no genuine dispute of
  material fact; movant burden of showing absence of dispute;
  nonmovant must go beyond pleadings; Celotex/Anderson/Matsushita
  trilogy.

  Valid codes:
    92080000  Motions
        92080100  Motions > Pretrial Motions
            92080101  Motions > Pretrial Motions > Motion for judgment on the pleadings
            92080102  Motions > Pretrial Motions > Motion for more definite statement
            92080103  Motions > Pretrial Motions > Motion to strike
            92080104  Motions > Pretrial Motions > Motions to dismiss
            92080105  Motions > Pretrial Motions > Summary judgment motion
        92080200  Motions > Trial and Post-Trial Motions
            92080201  Motions > Trial and Post-Trial Motions > Motion for Judgment as a Matter of Law
            92080202  Motions > Trial and Post-Trial Motions > Renewed Motion for Judgment as a Matter of Law
            92080203  Motions > Trial and Post-Trial Motions > Motion for relief from judgment or order
            92080204  Motions > Trial and Post-Trial Motions > Motion for new trial
            92080205  Motions > Trial and Post-Trial Motions > Remittitur/additur

AB=93  Appealability and Review
------------------------------------------------------------
  Final judgment rule (28 U.S.C. 1291): entire case must be
  resolved. Exceptions allowing interlocutory appeal: 1292(a) --
  injunctions as of right; 1292(b) -- certified question (district
  court + court of appeals must agree); collateral order doctrine
  (Cohen -- conclusive, separable, effectively unreviewable);
  mandamus (extraordinary writ for clear usurpation of power); Rule
  54(b) partial judgment in multi-claim/party cases. Standards of
  review: de novo (questions of law; summary judgment; Rule
  12(b)(6)); clearly erroneous (factual findings by judge under Rule
  52(a)); abuse of discretion (discovery rulings; evidentiary
  rulings; class certification). Harmless error (Rule 61); plain
  error for unpreserved issues.

  Valid codes:
    93110000  Appeal and Review
        93110100  Appeal and Review > Interlocutory Review
            93110101  Appeal and Review > Interlocutory Review > Final judgment rule
        93110200  Appeal and Review > Finality of Judgment
        93110300  Appeal and Review > Scope of Review

AB=94  Jurisdiction and Venue
------------------------------------------------------------
  Subject-matter jurisdiction -- federal question: 28 U.S.C. 1331;
  arising under federal law; well-pleaded complaint rule; no amount
  in controversy. Subject-matter jurisdiction -- diversity: 28
  U.S.C. 1332; complete diversity rule (Strawbridge); citizenship of
  individuals (domicile); corporations (state of incorporation AND
  principal place of business -- nerve center test); LLCs and
  partnerships (citizenship of each member); amount in controversy
  over $75,000 (legal certainty test; aggregation rules).
  Supplemental jurisdiction: 28 U.S.C. 1367; same case or
  controversy (common nucleus of operative fact); discretionary
  decline (novel state law, predominance, dismissal of anchor claim,
  exceptional circumstances). Removal: 28 U.S.C. 1441; removable if
  district court would have original jurisdiction; forum-defendant
  rule (defendant cannot remove diversity case if citizen of forum
  state); 30-day deadline; procedure (notice + prompt state court
  notice); remand for defects. Personal jurisdiction: traditional
  bases (presence/tag jurisdiction, domicile, consent); long-arm
  statutes; constitutional minimum contacts (International Shoe --
  purposeful availment; foreseeability; relatedness to forum for
  specific jurisdiction; general jurisdiction only where at home);
  stream of commerce split (Asahi/J. McIntyre); Pennoyer physical
  service still valid. USE 94xx NOT 44xx for personal jurisdiction
  questions. Notice and service of process (Rule 4; waiver; methods;
  immunity from service). Venue: 28 U.S.C. 1391 (residence of
  defendants; substantial events/omissions; fallback); transfer for
  convenience (1404) vs. transfer to cure defect (1406); forum non
  conveniens. Multi-CC note: AB=94 spans CC01-05 -- all 94xx codes
  are in scope.

  Valid codes:
    94010000  Federal Subject-Matter Jurisdiction
        94010100  Federal Subject-Matter Jurisdiction > Diversity Jurisdiction
        94010200  Federal Subject-Matter Jurisdiction > Federal-Question Jurisdiction
        94010300  Federal Subject-Matter Jurisdiction > Supplemental Jurisdiction
    94020000  Personal Jurisdiction
        94020100  Personal Jurisdiction > Specific and General Jurisdiction
        94020200  Personal Jurisdiction > Traditional Bases for Personal Jurisdiction
            94020201  Personal Jurisdiction > Traditional Bases for Personal Jurisdiction > Consent
            94020202  Personal Jurisdiction > Traditional Bases for Personal Jurisdiction > Service
            94020203  Personal Jurisdiction > Traditional Bases for Personal Jurisdiction > Domicile
        94020300  Personal Jurisdiction > Modern Due Process or Constitutional Tests
            94020301  Personal Jurisdiction > Modern Due Process or Constitutional Tests > Long-arm statutes
            94020302  Personal Jurisdiction > Modern Due Process or Constitutional Tests > Minimum contacts test
            94020303  Personal Jurisdiction > Modern Due Process or Constitutional Tests > Substantial business
    94030000  Removal and Remand
        94030100  Removal and Remand > Removal to Federal Court
        94030200  Removal and Remand > Remand to State Court
    94040000  Notice and Service of Process
        94040100  Notice and Service of Process > Due Process Notice Requirements
        94040200  Notice and Service of Process > Service of Process
        94040300  Notice and Service of Process > Waiver of Service
    94050000  Venue
        94050100  Venue > Venue
        94050200  Venue > Transfer
        94050300  Venue > Forum non conveniens

AB=95  Pretrial Procedures
------------------------------------------------------------
  Pleadings: Rule 8(a) short and plain statement; Twombly/Iqbal
  plausibility standard (not mere conclusory allegations); Rule 9(b)
  heightened pleading for fraud/mistake; Rule 11 good-faith
  certification (sanctions for frivolous claims). Amended and
  supplemental pleadings: Rule 15 (freely granted; relation back to
  original filing date when same transaction or same mistake as to
  party identity). Joinder: Rule 19 required/necessary parties
  (complete relief; prejudice); Rule 20 permissive joinder (same
  transaction or occurrence; common question); Rule 14
  impleader/third-party practice; Rule 22 interpleader. Class
  actions (Rule 23): certification requirements -- 23(a):
  numerosity, commonality, typicality, adequacy of representation;
  23(b) types: mandatory class (23(b)(1)/(2)) vs. opt-out class
  (23(b)(3) predominance and superiority); notice requirements;
  settlement approval (fairness hearing). Intervention (Rule 24): of
  right vs. permissive. Discovery (Rules 26-37): mandatory
  disclosures; scope (relevant, proportional); depositions;
  interrogatories; requests for production; physical/mental
  examinations (good cause); requests for admissions; work-product
  doctrine (ordinary vs. opinion work product; substantial need
  exception for ordinary); expert disclosures (retained vs. non-
  retained); ESI; sanctions for discovery abuse (Rule 37;
  spoliation).

  Valid codes:
    95070000  Pretrial Procedures
        95070100  Pretrial Procedures > Pleadings
            95070101  Pretrial Procedures > Pleadings > Complaint
            95070102  Pretrial Procedures > Pleadings > Answer
            95070103  Pretrial Procedures > Pleadings > Counterclaims
            95070104  Pretrial Procedures > Pleadings > Crossclaims
            95070105  Pretrial Procedures > Pleadings > Other pleadings
        95070200  Pretrial Procedures > Amendment of Pleadings
        95070300  Pretrial Procedures > Multiple Parties and Claims
            95070301  Pretrial Procedures > Multiple Parties and Claims > Joinder of claims
            95070302  Pretrial Procedures > Multiple Parties and Claims > Joinder of parties
            95070303  Pretrial Procedures > Multiple Parties and Claims > Class actions
        95070400  Pretrial Procedures > Discovery
            95070401  Pretrial Procedures > Discovery > Initial disclosures
            95070402  Pretrial Procedures > Discovery > Devices
            95070403  Pretrial Procedures > Discovery > Scope of discovery
            95070404  Pretrial Procedures > Discovery > E-Discovery
            95070405  Pretrial Procedures > Discovery > Privileges
            95070406  Pretrial Procedures > Discovery > Inadvertent disclosure
            95070407  Pretrial Procedures > Discovery > Sanctions
        95070500  Pretrial Procedures > Rule 11
        95070600  Pretrial Procedures > Pretrial Conferences and Orders
        95070700  Pretrial Procedures > Disposition without Trial
            95070701  Pretrial Procedures > Disposition without Trial > Voluntary dismissal
            95070702  Pretrial Procedures > Disposition without Trial > Involuntary dismissal
            95070703  Pretrial Procedures > Disposition without Trial > Summary judgment
            95070704  Pretrial Procedures > Disposition without Trial > Default judgment
            95070705  Pretrial Procedures > Disposition without Trial > Preliminary injunctions, permanent injunctions, and temporary restraining orders

AB=96  Law Applied by Federal Courts (Erie)
------------------------------------------------------------
  Erie Railroad v. Tompkins: federal courts in diversity apply state
  substantive law and federal procedural law (overruling Swift v.
  Tyson). Substance vs. procedure distinction: outcome-determinative
  test (Guaranty Trust); Byrd balancing (strong federal interests);
  Hanna v. Plumer two-track analysis -- if direct collision between
  FRCP and state law, FRCP applies if valid under Rules Enabling
  Act; if no direct collision, apply outcome-determinative/Byrd
  balancing. Choice of law in diversity: Klaxon -- federal court
  applies the choice-of-law rules of the forum state. Federal common
  law: exists in limited areas (admiralty, U.S. government
  interests, interstate disputes, foreign relations).

  Valid codes:
    96060000  State Law Applied in Federal Courts
        96060100  State Law Applied in Federal Courts > Erie Doctrine
        96060200  State Law Applied in Federal Courts > Federal Common Law

AB=97  Verdicts and Judgments
------------------------------------------------------------
  Rule 50 judgment as matter of law (JMOL): during trial, no legally
  sufficient evidentiary basis for reasonable jury to find for
  party; renewed JMOL (formerly JNOV) -- must be renewed within 28
  days after judgment. Rule 59 new trial: errors of law at trial;
  against weight of evidence; excessive or inadequate damages;
  remittitur (court reduces verdict) and additur (court increases
  verdict -- limited in federal court). Rule 60(b) relief from final
  judgment: mistake/inadvertence/surprise/excusable neglect; newly
  discovered evidence; fraud/misrepresentation; void judgment;
  satisfied/discharged/reversed; any other reason justifying relief.
  Default judgment (Rule 55): entry of default; application for
  default judgment; setting aside default. Claim preclusion / res
  judicata: same claim (transaction test); final judgment on the
  merits; same parties or those in privity; bars claims that were or
  could have been raised. Issue preclusion / collateral estoppel:
  same issue; actually litigated and decided; necessarily
  determined; same party against whom asserted; mutuality erosion
  (offensive nonmutual collateral estoppel -- Parklane Hosiery).

  Valid codes:
    97100000  Judgments and Verdicts
        97100100  Judgments and Verdicts > Types of Jury Verdicts
        97100200  Judgments and Verdicts > Judicial Findings and Conclusions
        97100300  Judgments and Verdicts > Issue and Claim Preclusion
        97100400  Judgments and Verdicts > Defaults
        97100500  Judgments and Verdicts > Dismissals

========================================================================
END OF REFERENCE  |  593 valid codes  |  36 subtopics
========================================================================