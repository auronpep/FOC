import fs from "node:fs/promises";
import path from "node:path";
import { FileBlob, SpreadsheetFile } from "@oai/artifact-tool";

const WORKBOOK = "C:/Users/JesusLovesMe/Documents/Mixed tag.xlsx";
const OUTLINE = "C:/FOC/Workspace/OUTLINE_CODES_COMPLETE.md";
const WORKDIR = "C:/FOC/Workspace/tasks/mixed_tag_outline_map";

const SUBJECT_BY_DIGIT = {
  3: "Evidence",
  4: "Constitutional Law",
  5: "Contracts",
  6: "Torts",
  7: "Criminal Law and Procedure",
  8: "Real Property",
  9: "Civil Procedure",
};

const STOPWORDS = new Set(
  "a an and are as at be because been by can could did do does for from had has have he her here him his if in into is it its may might must no nor not of on only or other she should so than that the their them there these they this to under unless was were when which while who will with would".split(
    " ",
  ),
);

function normalize(value) {
  return value == null ? "" : String(value).replace(/\s+/g, " ").trim();
}

function csvEscape(value) {
  return `"${String(value ?? "").replace(/"/g, '""')}"`;
}

function parseCsv(text) {
  const rows = [];
  let row = [];
  let cell = "";
  let quoted = false;
  for (let i = 0; i < text.length; i++) {
    const char = text[i];
    const next = text[i + 1];
    if (quoted) {
      if (char === '"' && next === '"') {
        cell += '"';
        i++;
      } else if (char === '"') {
        quoted = false;
      } else {
        cell += char;
      }
    } else if (char === '"') {
      quoted = true;
    } else if (char === ",") {
      row.push(cell);
      cell = "";
    } else if (char === "\n") {
      row.push(cell);
      rows.push(row);
      row = [];
      cell = "";
    } else if (char !== "\r") {
      cell += char;
    }
  }
  if (cell || row.length) {
    row.push(cell);
    rows.push(row);
  }
  const [headers, ...data] = rows;
  return data
    .filter((row) => row.some((cell) => cell !== ""))
    .map((row) => Object.fromEntries(headers.map((header, index) => [header, row[index] ?? ""])));
}

function tokens(text) {
  return normalize(text)
    .toLowerCase()
    .replace(/[’']/g, "")
    .replace(/[^a-z0-9]+/g, " ")
    .split(/\s+/)
    .filter((token) => token && !STOPWORDS.has(token) && !/^\d+$/.test(token));
}

function parseOutline(markdown) {
  const rows = [];
  let currentAB = "";
  let currentSubtopic = "";
  let scopeLines = [];
  let inCodes = false;
  for (const rawLine of markdown.split(/\r?\n/)) {
    const line = rawLine.rstrip ?? rawLine;
    const heading = line.match(/^AB=(\d{2})\s+(.+?)\s*$/);
    if (heading) {
      currentAB = heading[1];
      currentSubtopic = heading[2].trim();
      scopeLines = [];
      inCodes = false;
      continue;
    }
    if (/^\s*Valid codes:\s*$/.test(line)) {
      inCodes = true;
      continue;
    }
    if (inCodes && (/^AB=\d{2}\s+/.test(line) || /^#+/.test(line) || /^=+$/.test(line))) {
      inCodes = false;
    }
    if (!inCodes && currentAB && line.trim() && !/^[-#=]+$/.test(line)) {
      scopeLines.push(line.trim());
    }
    if (!inCodes) continue;
    const match = line.match(/^\s*(\d{8})\s+(.+?)\s*$/);
    if (!match) continue;
    const code = match[1];
    const outlinePath = match[2].trim();
    const haystack = `${SUBJECT_BY_DIGIT[code[0]]} ${currentSubtopic} ${scopeLines.join(" ")} ${outlinePath}`;
    rows.push({
      code,
      ab: code.slice(0, 2),
      subject: SUBJECT_BY_DIGIT[code[0]] ?? "",
      subtopic: currentSubtopic,
      path: outlinePath,
      text: haystack,
      tokenSet: new Set(tokens(haystack)),
      depth: code.endsWith("00") ? (code.endsWith("0000") ? 0 : 1) : 2,
    });
  }
  return rows;
}

const RULES = [
  // Evidence
  ["35030302", /settlement offer|offer to settle|compromise (?:a )?claim|settlement negotiations|policy to encourage settlements/i, "settlement negotiations public-policy exclusion"],
  ["34050101", /best evidence rule|contents of (?:the )?(?:check|x-ray|writing|document)|original writing|original required|oral testimony as to its contents/i, "best evidence/original writing rule"],
  ["35030202", /confidential communication received during marriage|marital communications privilege/i, "marital communications privilege"],
  ["35030201", /spousal privilege|spouse is not permitted to testify|adverse spousal/i, "spousal privilege"],
  ["35030205", /attorney-client|client's privilege|communicat(?:ion|e).*attorney|agent of the attorney/i, "attorney-client privilege"],
  ["31010407", /refresh (?:his|her|their) recollection|refreshing recollection|while testifying.*look at any document/i, "refreshing recollection"],
  ["31010504", /FRE 609|conviction.*impeach|judgment of conviction.*impeach/i, "impeachment by conviction"],
  ["31010502", /prior statements? that (?:are|were).*inconsistent|prior inconsistent statement/i, "prior inconsistent statement"],
  ["31010503", /bias or motive to lie|evidence of bias/i, "impeachment for bias"],
  ["31010402", /leading questions|hostile witness|cross-examination|direct examination/i, "form and scope of examination"],
  ["31010403", /lay opinions?|not an expert|physical and mental condition|opinion.*intoxicated/i, "lay opinion testimony"],
  ["31010101", /judge'?s function|jury'?s function|question of law.*judge|admissibility.*judge/i, "roles of judge and jury"],
  ["32020700", /authenticated|authentication|FRE 901|voice-identification|telephone number|authorship/i, "authentication and identification"],
  ["32020402", /bad character.*inadmissible|acted in a particular way on a particular occasion|character evidence/i, "prohibited character evidence use"],
  ["32020000", /logically relevant|relevant to a material issue|fact of consequence/i, "relevance"],
  ["33040203", /independent legal significance|not for the purpose of establishing the truth|not hearsay.*truth of/i, "non-hearsay purpose"],
  ["33040101", /hearsay is defined|out-of-court statement.*truth of the matter|hearsay rule/i, "hearsay rule"],
  ["33040302", /excited utterance|business record|public record|FRE 803\(6\)|FRE 803\(8\)|then existing|state of mind|present sense impression/i, "hearsay exception not requiring unavailability"],
  ["33040301", /dying declaration|statement against interest|former testimony|FRE 804|declarant.*unavailable/i, "hearsay exception requiring unavailability"],
  ["33040202", /admission is a declaration by a party|party-opponent|FRE 801\(d\)\(2\)|judicial admissions/i, "opposing-party admission"],
  // Constitutional Law
  ["44040502", /commercial speech|free speech|First Amendment right to speak|content-based|freedom of speech|expression/i, "speech/expression"],
  ["44040501", /Free Exercise Clause|Establishment Clause|religious beliefs|religion/i, "religion clauses"],
  ["44040305", /rational basis|age is not a suspect classification|social or economic interests/i, "rational basis equal protection"],
  ["44040304", /gender|intermediate scrutiny/i, "intermediate scrutiny"],
  ["44040303", /alienage is a suspect|ethnic group|suspect classification|strict scrutiny|compelling state interest/i, "strict scrutiny equal protection"],
  ["44040302", /enforced in a way|discriminatory purpose|application.*Equal Protection/i, "establishing discrimination"],
  ["44040301", /voting|marriage and procreation|fundamental right/i, "fundamental rights"],
  ["44040300", /Equal Protection Clause|invidiously discriminating|property ownership.*voter/i, "equal protection"],
  ["44040203", /deprivation of liberty without due process|property right.*due process|hearing|procedural due process/i, "procedural due process"],
  ["44040603", /impairing the obligation of contracts|Contracts Clause/i, "Contracts Clause"],
  ["44040602", /ex post facto law|criminal penalty.*before the law/i, "ex post facto"],
  ["44040604", /taking|just compensation|permanent physical occupation/i, "takings"],
  ["43080000", /standing|actual or immediately threatened injury|stockholders lack standing|state government does not have standing/i, "standing"],
  ["43010000", /federal judicial power|Article III.*jurisdiction|limits on the jurisdiction/i, "Article III judicial power"],
  ["43050000", /political controversy|political question|co-equal branch/i, "political question"],
  ["42010107", /Thirteenth Amendment|slavery|involuntary servitude|badges of servitude/i, "13th Amendment enforcement"],
  ["42010103", /Commerce Clause gives Congress|regulate interstate commerce|substantial effect/i, "Commerce Clause"],
  ["41030402", /Dormant Commerce|state.*regulate interstate commerce|undue burden on interstate commerce|discriminate against interstate commerce/i, "Dormant Commerce Clause"],
  ["41030200", /tax the federal government|intergovernmental immun/i, "intergovernmental immunity"],
  ["42010106", /Property Clause|property belonging to the United States|federal property/i, "Property Clause"],
  ["42010302", /bicameralism|presentment|committee.*legislating|legislative veto/i, "bicameralism/presentment"],
  ["44010000", /state action|agency of the state/i, "state action"],
  // Contracts
  ["55020202", /illusory promise/i, "illusory promise"],
  ["55020203", /requirements contracts|UCC §2-306|minimum requirement/i, "requirements/output contract"],
  ["55020204", /preexisting duty/i, "preexisting duty"],
  ["55020201", /consideration|bargain|given in exchange|benefit previously received/i, "bargain and exchange consideration"],
  ["55020101", /offer to the general public|advertisement.*revoked|withdrawal.*publicity/i, "offer"],
  ["55020102", /acceptance/i, "acceptance"],
  ["55020103", /definite and certain|basic terms|identify the parties|price.*subject matter/i, "definiteness"],
  ["52040300", /parol evidence rule|extrinsic evidence.*prior|complete expression/i, "parol evidence"],
  ["54030400", /Statute of Frauds|writing.*signed|oral contract.*unenforceable|contract.*within a year/i, "Statute of Frauds"],
  ["54030600", /mistake|basic assumption|mutual mistake|unilateral/i, "mistake"],
  ["54030700", /duress|exercise free will|economic duress/i, "duress"],
  ["56050102", /condition precedent|strict compliance.*condition|conditional duty/i, "express condition"],
  ["56050403", /anticipatory repudiation|unequivocal statement.*will not perform|right to an immediate action/i, "anticipatory repudiation"],
  ["56050601", /impossibility of performance/i, "impossibility"],
  ["56050603", /frustration of purpose|underlying reasons for contracting/i, "frustration of purpose"],
  ["56050604", /waiver.*assignment|waived his right/i, "waiver"],
  ["53020000", /agreement not to assign|assignment|assignor|assignee/i, "assignment/delegation"],
  ["53010000", /third-party .*beneficiary|creditor beneficiary/i, "third-party beneficiary"],
  ["51060105", /liquidated damages/i, "liquidated damages"],
  ["51060107", /mitigat/i, "mitigation"],
  ["51040000", /UCC §2-706|resell the goods|contract price.*resale|seller may resell/i, "seller remedies"],
  // Torts
  ["64010500", /privileged to (?:use force|defend)|self-defense|defense of another|consent is a complete defense|citizen.*arrest|privilege/i, "intentional tort privilege/defense"],
  ["64010102", /battery is the intentional|harmful or offensive bodily contact|criminal battery/i, "battery"],
  ["64010101", /assault|mere use of words|apprehension.*harmful/i, "assault"],
  ["64010201", /Trespass to land|tangible entry/i, "trespass to land"],
  ["64010203", /conversion|dominion and control|serious interference/i, "conversion"],
  ["62050102", /Private nuisance|use and enjoy real(?:ty| property)|plaintiff.*realty/i, "private nuisance"],
  ["62050200", /misrepresentation|false assertion of material fact|induce.*reliance/i, "misrepresentation"],
  ["62050401", /defamation|actual malice|false defamatory|slander per se|false opinion|public figure/i, "defamation"],
  ["62060202", /settlement.*deducted|payment.*deducted|satisfaction and release/i, "satisfaction and release"],
  ["62060203", /contribution|indemnity|joint tortfeasor.*fair share/i, "contribution/indemnity"],
  ["62060100", /vicarious liability|respondeat superior/i, "vicarious liability"],
  ["62060101", /independent contractor|selecting the contractor/i, "independent contractor"],
  ["63030100", /defective product|strict products liability|stream of commerce|defective when it left/i, "strict products liability"],
  ["63030400", /assumption of the risk.*defective|voluntarily encounters a known risk.*product/i, "products liability defenses"],
  ["63040200", /wild animal|wild and dangerous nature|strictly liable.*animal/i, "strict liability for animals"],
  ["63040100", /fireworks|abnormally dangerous|ultrahazardous/i, "abnormally dangerous activity"],
  ["61020302", /negligence per se|violation of a statute|statute.*protect a class/i, "negligence per se"],
  ["61020402", /proximate cause|unforeseeable intervening|foreseeable rescue|superseding cause|eggshell|full consequences|foreseeable result/i, "proximate causation"],
  ["61020401", /factual cause|cause of (?:the )?harm|but for|actual cause/i, "actual causation"],
  ["61020603", /comparative negligence|pure comparative/i, "comparative negligence"],
  ["61020203", /mental suffering.*witnessing|negligent infliction of emotional distress|zone of physical danger/i, "NIED"],
  ["61020104", /duty to (?:protect|act)|affirmative duty|creation of this risk/i, "affirmative duty"],
  ["61020304", /res ipsa loquitur|exclusive control/i, "res ipsa loquitur"],
  ["61020500", /sustained damage|damages.*negligence/i, "negligence damages"],
  // Criminal Law and Procedure
  ["72060201", /self-defense claim|harm being defended|reasonably imminent|deadly force/i, "criminal self-defense"],
  ["72060203", /defending another|defense of another/i, "defense of others"],
  ["71040200", /conspiracy|agreeing to commit a crime|withdraw.*conspiracy/i, "conspiracy"],
  ["71040300", /attempt|substantial(?:ly)? close|substantial step/i, "attempt"],
  ["74020102", /involuntary manslaughter|gross negligence|manslaughter/i, "manslaughter"],
  ["74020101", /murder|malice aforethought|felony murder/i, "murder"],
  ["73030700", /forging a check|forgery/i, "forgery"],
  ["73020700", /statutory rape|rape/i, "rape"],
  ["73020300", /Criminal battery|mens rea required for a battery conviction/i, "criminal battery"],
  ["75070202", /search a vehicle incident|plain view|consent.*search|third party.*consent|warrantless search|exigent|automobile/i, "search warrant exceptions"],
  ["75070201", /warrant requirement|search warrant|obtain a warrant/i, "search warrant requirement"],
  ["75070100", /probable cause.*arrest|motion.*probable cause/i, "arrest/probable cause"],
  ["75080100", /Miranda|custody.*interrogation|right to remain silent/i, "Miranda/confessions"],
  ["75080101", /Fifth Amendment.*self-incrimination|testimonial communication|act of production/i, "self-incrimination"],
  ["75080200", /identification procedures|lineup|showup/i, "identification"],
  ["75080300", /confront witnesses|Confrontation Clause/i, "confrontation"],
  ["75080400", /double jeopardy|placed twice in jeopardy/i, "double jeopardy"],
  ["75090400", /post-indictment lineup|presence of counsel|Sixth Amendment.*counsel|right to counsel/i, "right to counsel"],
  // Real Property
  ["85030300", /marketable title|title unmarketable|outstanding encumbrances.*marketable|easement.*unmarketable/i, "marketable title"],
  ["85030101", /land sale contract|sale contract.*land|real property.*Statute of Frauds|identify the land to be sold/i, "land-sale contract creation"],
  ["85030103", /time is of the essence|time for performance|closing date/i, "land-sale time for performance"],
  ["85030400", /equitable conversion|risk of loss/i, "equitable conversion/risk of loss"],
  ["81020600", /accession|fixture|annexed to the realty|part of the realty/i, "fixtures"],
  ["81020103", /scope of the easement|language of the grant determines the scope/i, "scope of easement"],
  ["81020105", /servient estate.*repair|easement.*repair|maintain.*easement/i, "easement duties/termination"],
  ["81020401", /restrictive covenant|common scheme|equitable servitude|running with the land/i, "real covenant"],
  ["81010102", /fee simple determinable|for so long as|possibility of reverter/i, "defeasible fee simple"],
  ["81010101", /restraint on alienation|disabling restraint|promissory restraint|forfeitural restraint/i, "fee simple restraints"],
  ["82010200", /joint tenancy|right of survivorship|tenant in common|tenancy in common/i, "concurrent ownership"],
  ["83050604", /foreclosure sale.*proceeds|proceeds are first used|deficiency/i, "foreclosure proceeds"],
  ["83050603", /foreclosure proceeding|mortgage.*priority|junior mortgages|prior interests/i, "foreclosure parties/priorities"],
  ["84040204", /quitclaim deed|warranty deed/i, "types of deeds"],
  ["84040205", /covenant of seisin|covenant against encumbrances|covenants.*breached upon delivery/i, "covenants of title"],
  ["84040402", /race.*statute|notice.*statute|recording statutes.*notice variety/i, "types of recording statutes"],
  ["84040403", /bona fide purchaser|BFP|purchaser for value/i, "bona fide purchaser"],
  ["84040406", /priority depend|recorded first|priorities/i, "recording priorities"],
  ["84040203", /delivery of (?:the )?deed|delivered to a grantee/i, "deed delivery/acceptance"],
  ["84040208", /forged instrument|forged deed/i, "forged instruments"],
  // Civil Procedure
  ["94030100", /notice of removal|case can be removed|removal within 30 days|§1446/i, "removal"],
  ["94030200", /remand the case|remand.*state court/i, "remand"],
  ["94010100", /diversity|complete diversity|amount in controversy|corporation.*principal place of business/i, "diversity jurisdiction"],
  ["94010200", /federal question|arise under federal law|no amount in controversy.*federal question/i, "federal-question jurisdiction"],
  ["94010300", /supplemental jurisdiction|same case or controversy|common nucleus/i, "supplemental jurisdiction"],
  ["94020202", /served with process|personally served|Burnham/i, "service as traditional PJ basis"],
  ["94020000", /personal jurisdiction/i, "personal jurisdiction"],
  ["94050100", /improper venue|defense of improper venue|venue/i, "venue"],
  ["94040200", /deadline for service|formal service|summons/i, "service of process"],
  ["95070101", /short and plain statement|Rule 8\(a\)|complaint contain/i, "complaint pleading"],
  ["95070200", /new party.*notice|relation back|amendment/i, "amendment of pleadings"],
  ["95070302", /impleading|Rule 14|Rule 19|party joined/i, "joinder of parties"],
  ["95070303", /class action|Rule 23|numerosity|typicality|adequate representation/i, "class actions"],
  ["95070402", /subpoena duces tecum|Rule 45|request to produce documents/i, "discovery devices"],
  ["95070403", /work-product|anticipation of litigation|substantial need|undue hardship/i, "scope/work product"],
  ["91090300", /juror|actual bias|implied bias|jury selection/i, "jury selection"],
  ["92080202", /renewed motion for judgment as a matter of law|made a motion.*during trial/i, "renewed JMOL"],
  ["92080204", /new trial|Rule 59|inadequate damages|additur/i, "motion for new trial"],
  ["93110300", /standard.*abuse of discretion|scope of review|question of law.*abuse/i, "scope of review"],
  ["96060100", /Erie|state substantive law|federal procedural law|statute of limitations/i, "Erie doctrine"],
  ["97100300", /collaterally estopped|issue preclusion|claim preclusion|same transaction/i, "issue and claim preclusion"],
];

const MANUAL_OVERRIDES = {
  20982: ["64010500", "manual review: initial aggressor/self-defense privilege in intentional torts"],
  17598: ["72060201", "manual review: criminal self-defense; imminent deadly force"],
  17339: ["61020402", "manual review: eggshell-plaintiff/full-consequences proximate cause"],
  19215: ["85030300", "manual review: land-sale marketable title at closing despite assignment"],
  21163: ["95070101", "manual review: Rule 8 complaint pleading sufficiency"],
  19797: ["33040203", "manual review: promissory note as independent legal significance, non-hearsay purpose"],
  21678: ["72010303", "manual review: criminal causation for involuntary manslaughter"],
  19318: ["54030600", "manual review: unilateral/intermediary mistake in land sale"],
  19473: ["71040200", "manual review: conspiracy liability and withdrawal"],
  21621: ["61020104", "manual review: landholder created risk imposing affirmative duty to protect children"],
  20616: ["62050102", "manual review: private nuisance from airport operation"],
  18237: ["81020500", "manual review: restrictive covenant/equitable servitude enforcement"],
  18379: ["85030300", "manual review: marketable title defeated by easement encumbrance"],
  19944: ["73020700", "manual review: statutory rape/rape offense"],
  20047: ["84040205", "manual review: deed covenants of title breach"],
  19364: ["94050100", "manual review: improper venue waived under Rule 12/Section 1406"],
  21112: ["75080101", "manual review: Fifth Amendment self-incrimination, testimonial vs physical identification"],
  19814: ["75080404", "manual review: double jeopardy retrial after reversal for insufficient evidence"],
  20765: ["33040302", "manual review: ancient document/vital-record hearsay exceptions not requiring unavailability"],
  20863: ["82010102", "manual review: fee simple determinable/defeasible fee"],
  19040: ["82010301", "manual review: joint tenancy severance and survivorship"],
  18679: ["42010107", "manual review: Thirteenth Amendment congressional enforcement power"],
  17122: ["62050401", "manual review: defamation opinion/fact distinction"],
  18687: ["75090400", "manual review: Sixth Amendment right to counsel at post-indictment lineup"],
  17456: ["61020301", "manual review: negligence breach from speeding; no intentional trespass/strict liability"],
  17338: ["56050601", "manual review: impossibility/illegality and foreseeability as excuse of duty"],
  20606: ["94050100", "manual review: venue proper districts in diversity action"],
  17077: ["82010103", "manual review: life estate and remainder after life tenant quitclaim"],
  19872: ["95070402", "manual review: Rule 35 physical examination as discovery device"],
  19569: ["95070403", "manual review: expert research discovery/scope"],
  21254: ["94040200", "manual review: service under forum long-arm rule"],
  19754: ["85030102", "manual review: land-sale contract essential terms/price definiteness"],
  18591: ["94010300", "manual review: supplemental jurisdiction/common nucleus for joined claim"],
  18055: ["95070303", "manual review: Rule 23 class action requirements"],
  21349: ["94020000", "manual review: personal jurisdiction under Rule 4(k)(1)(B) bulge service"],
  19257: ["92080204", "manual review: Rule 59 new trial for inadequate damages"],
  17983: ["33040201", "manual review: prior consistent statement to rebut recent fabrication"],
  21137: ["33040302", "manual review: business record/absence of business record exception"],
  18098: ["81020602", "manual review: fixture ownership by accession"],
  19929: ["56050601", "manual review: impossibility and foreseeable market-price burden"],
  18553: ["52040300", "manual review: parol evidence to clarify ambiguity"],
  17642: ["82010503", "manual review: Rule Against Perpetuities and defeasible interests"],
  18351: ["82010503", "manual review: Rule Against Perpetuities validity of son's future interest"],
  17019: ["82010404", "manual review: landlord-tenant assignment/sublease and rent liability"],
  18683: ["81020103", "manual review: easement scope/duties from grant terms"],
  21083: ["51060101", "manual review: seller resale/contract-resale differential as expectation damages"],
  21363: ["81020103", "manual review: scope of easement created by grant"],
  20917: ["32020402", "manual review: prohibited character/propensity evidence and relevance"],
  20085: ["56050102", "manual review: condition precedent to broker commission"],
  21737: ["64010203", "manual review: killing dog as conversion; mistake not privilege"],
  20934: ["82010504", "manual review: direct restraints on alienation"],
  21837: ["93110300", "manual review: appellate scope/standard of review"],
  19703: ["84040406", "manual review: recording act priorities and chain of title"],
  18855: ["44040303", "manual review: alienage as suspect classification strict scrutiny"],
  17428: ["84040403", "manual review: recording statute protection requires purchaser for value"],
  17847: ["56050102", "manual review: express condition and substantial performance"],
  18138: ["94030100", "manual review: removal based on diversity/corporate citizenship"],
  18373: ["44040304", "manual review: gender classification/intermediate scrutiny"],
  21496: ["43020201", "manual review: standing/justiciability to challenge Commerce Clause tax"],
  17113: ["51060304", "manual review: specific performance unavailable for personal services"],
  21405: ["62050200", "manual review: misrepresentation reliance/intent"],
  20448: ["92080202", "manual review: renewed JMOL requires earlier JMOL motion"],
  19635: ["43020201", "manual review: justiciability/abstention in constitutional challenge"],
  19216: ["56050403", "manual review: anticipatory repudiation"],
  18923: ["61020203", "manual review: negligent infliction of emotional distress/bystander recovery"],
  21694: ["41030403", "manual review: state taxation and intergovernmental/Dormant Commerce limits"],
  18824: ["62050401", "manual review: defamation/libel public figure damage rules"],
  18199: ["41030402", "manual review: Dormant Commerce Clause discrimination/burden"],
  20896: ["55020204", "manual review: preexisting duty in promise to pay extra for same service"],
  21860: ["43020201", "manual review: Article III constitutional limits on federal jurisdiction"],
  20582: ["97100300", "manual review: collateral estoppel/issue preclusion"],
  21371: ["82010301", "manual review: joint tenancy/tenancy in common ownership after simultaneous deaths"],
  19327: ["32020803", "manual review: expert testimony basis on otherwise inadmissible statement"],
  19053: ["33040301", "manual review: dying declaration/unavailable declarant exception"],
  19310: ["52040200", "manual review: trade usage to interpret contract terms"],
  17898: ["64010500", "manual review: consent privilege/defense to battery in sports"],
  19986: ["94010200", "manual review: federal question subject-matter jurisdiction"],
  20352: ["84040203", "manual review: deed delivery/acceptance; later destruction does not revoke"],
  19761: ["82010200", "manual review: future interest in devise; sparse explanation"],
};

function scoreCandidates(text, outlineRows) {
  const searchTokens = new Set(tokens(text));
  return outlineRows
    .map((row) => {
      let score = row.depth;
      const matches = [];
      for (const token of searchTokens) {
        if (row.tokenSet.has(token)) {
          score += token.length >= 9 ? 5 : token.length >= 6 ? 3 : 1;
          matches.push(token);
        }
      }
      return { row, score, matches };
    })
    .sort((a, b) => b.score - a.score || b.matches.length - a.matches.length)
    .slice(0, 5);
}

async function loadWorkbookRecords() {
  const workbook = await SpreadsheetFile.importXlsx(await FileBlob.load(WORKBOOK));
  const sheet = workbook.worksheets.getItem("Sheet1");
  const values = sheet.getUsedRange(true).values;
  const [headers, ...rows] = values;
  return rows.map((row, index) => {
    const record = { excelRow: index + 2 };
    headers.forEach((header, column) => {
      record[String(header)] = row[column] ?? "";
    });
    return record;
  });
}

async function loadSubjectMaps(validCodes) {
  const sourceMap = new Map();
  const add = (qid, code, source, note = "") => {
    const normalizedCode = normalize(code);
    if (!qid || !normalizedCode || normalizedCode === "unsure" || !validCodes.has(normalizedCode)) return;
    sourceMap.set(String(qid), { code: normalizedCode, source, note });
  };

  for (const row of parseCsv(await fs.readFile("C:/FOC/Workspace/tasks/contract_law_tag_audit.csv", "utf8"))) {
    add(row.qid, row.outline_code, "contract_law_tag_audit", row.note);
  }
  for (const row of parseCsv(await fs.readFile("C:/FOC/Workspace/.codex_spreadsheet_work/conlaw_mapping_suggestions_v2.csv", "utf8"))) {
    add(row.qid, row.proposed_code, "conlaw_mapping_suggestions_v2", row.reason);
  }
  for (const row of parseCsv(await fs.readFile("C:/FOC/Workspace/.codex_spreadsheet_work/torts_outline_mapping_review.csv", "utf8"))) {
    add(row.qid, row.outline_code, "torts_outline_mapping_review", row.reason);
  }
  const criminal = JSON.parse(await fs.readFile("C:/FOC/Workspace/.codex_spreadsheet_work/criminal_law_outline_mapping.json", "utf8"));
  for (const row of criminal.rows ?? []) {
    add(row.qid, row.outline_code, "criminal_law_outline_mapping", row.note);
  }

  const civpro = await SpreadsheetFile.importXlsx(await FileBlob.load("C:/Users/JesusLovesMe/Documents/CivPro_tag.xlsx"));
  const civValues = civpro.worksheets.getItem("Sheet1").getUsedRange(true).values;
  const civHeaders = civValues[0].map(String);
  const qCol = civHeaders.indexOf("BARMATRIX Q#");
  const cCol = civHeaders.indexOf("Outline_code");
  for (let i = 1; i < civValues.length; i++) {
    add(civValues[i][qCol], civValues[i][cCol], "CivPro_tag.xlsx", "existing workbook code");
  }
  return sourceMap;
}

function classify(record, sourceMap, outlineRows, outlineByCode, validCodes) {
  const qid = String(record["BARMATRIX Q#"]);
  const override = MANUAL_OVERRIDES[qid];
  if (override) {
    return {
      code: override[0],
      confidence: "manual",
      source: "manual_override",
      reason: override[1],
      candidates: [],
    };
  }

  const sourceHit = sourceMap.get(qid);
  if (sourceHit) {
    return {
      code: sourceHit.code,
      confidence: "high",
      source: sourceHit.source,
      reason: sourceHit.note || "exact QID source-map match",
      candidates: [],
    };
  }

  const question = normalize(record.Question);
  const explanation = normalize(record["Answer Explanation"]);
  const text = `${explanation}\n${question}`;

  for (const [code, regex, reason] of RULES) {
    if (regex.test(text) && validCodes.has(code)) {
      return {
        code,
        confidence: "high",
        source: "row_text_rule",
        reason,
        candidates: [],
      };
    }
  }

  const candidates = scoreCandidates(text, outlineRows);
  const top = candidates[0];
  const runner = candidates[1];
  const margin = top && runner ? top.score - runner.score : top?.score ?? 0;
  if (top?.score >= 24 && margin >= 5) {
    return {
      code: top.row.code,
      confidence: "review",
      source: "token_score",
      reason: `token-score fallback: ${top.row.path}`,
      candidates,
    };
  }

  return {
    code: "unsure",
    confidence: "unsure",
    source: "manual_review_needed",
    reason: "No responsible official-code match from explanation/question text.",
    candidates,
  };
}

const outlineRows = parseOutline(await fs.readFile(OUTLINE, "utf8"));
const validCodes = new Set(outlineRows.map((row) => row.code));
const outlineByCode = new Map(outlineRows.map((row) => [row.code, row]));
const sourceMap = await loadSubjectMaps(validCodes);
const records = await loadWorkbookRecords();

const mappings = records.map((record) => {
  const result = classify(record, sourceMap, outlineRows, outlineByCode, validCodes);
  const outline = outlineByCode.get(result.code);
  return {
    excelRow: record.excelRow,
    qid: String(record["BARMATRIX Q#"]),
    code: result.code,
    outlinePath: outline?.path ?? "",
    subject: outline?.subject ?? "",
    subtopic: outline?.subtopic ?? "",
    confidence: result.confidence,
    source: result.source,
    reason: result.reason,
    question: normalize(record.Question),
    explanation: normalize(record["Answer Explanation"]),
    candidates: (result.candidates ?? []).map((candidate) => ({
      code: candidate.row.code,
      path: candidate.row.path,
      score: candidate.score,
      matches: candidate.matches.join("|"),
    })),
  };
});

await fs.mkdir(WORKDIR, { recursive: true });
await fs.writeFile(path.join(WORKDIR, "mixed_row_mappings.json"), JSON.stringify(mappings, null, 2), "utf8");
await fs.writeFile(
  path.join(WORKDIR, "mixed_row_mappings.csv"),
  [
    [
      "excelRow",
      "qid",
      "code",
      "outlinePath",
      "subject",
      "subtopic",
      "confidence",
      "source",
      "reason",
      "questionSnippet",
      "explanationSnippet",
    ].join(","),
    ...mappings.map((row) =>
      [
        row.excelRow,
        row.qid,
        row.code,
        row.outlinePath,
        row.subject,
        row.subtopic,
        row.confidence,
        row.source,
        row.reason,
        row.question.slice(0, 240),
        row.explanation.slice(0, 480),
      ]
        .map(csvEscape)
        .join(","),
    ),
  ].join("\n"),
  "utf8",
);

const summary = {
  rows: mappings.length,
  sourceMapSize: sourceMap.size,
  officialCodes: validCodes.size,
  confidenceCounts: mappings.reduce((acc, row) => {
    acc[row.confidence] = (acc[row.confidence] ?? 0) + 1;
    return acc;
  }, {}),
  sourceCounts: mappings.reduce((acc, row) => {
    acc[row.source] = (acc[row.source] ?? 0) + 1;
    return acc;
  }, {}),
  unsureRows: mappings.filter((row) => row.code === "unsure").map((row) => ({ excelRow: row.excelRow, qid: row.qid, reason: row.reason })),
  reviewRows: mappings.filter((row) => row.confidence !== "high").map((row) => ({
    excelRow: row.excelRow,
    qid: row.qid,
    code: row.code,
    path: row.outlinePath,
    confidence: row.confidence,
    reason: row.reason,
    topCandidate: row.candidates[0] ?? null,
    explanation: row.explanation.slice(0, 300),
  })),
  invalidRows: mappings.filter((row) => row.code !== "unsure" && !validCodes.has(row.code)).map((row) => row.excelRow),
};
await fs.writeFile(path.join(WORKDIR, "mixed_mapping_summary.json"), JSON.stringify(summary, null, 2), "utf8");
console.log(JSON.stringify(summary, null, 2));
