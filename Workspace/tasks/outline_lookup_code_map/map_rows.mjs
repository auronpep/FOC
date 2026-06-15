import fs from "node:fs/promises";
import { FileBlob, SpreadsheetFile } from "@oai/artifact-tool";

const workbookPath = "C:/Users/JesusLovesMe/Documents/outline lookup.xlsx";
const outlinePath = "C:/FOC/Workspace/OUTLINE_CODES_COMPLETE.md";
const qbankIndexPath = "C:/FOC/Workspace/tasks/outline_lookup_code_map/qbank_index.json";
const outputDir = "C:/FOC/Workspace/tasks/outline_lookup_code_map";

const subjectByFirstDigit = {
  "3": "Evidence",
  "4": "Constitutional Law",
  "5": "Contracts",
  "6": "Torts",
  "7": "Criminal Law and Procedure",
  "8": "Real Property",
  "9": "Civil Procedure",
};

const subjectToDigit = {
  "Evidence": "3",
  "Constitutional Law": "4",
  "Contracts": "5",
  "Torts": "6",
  "Criminal Law": "7",
  "Criminal Law and Procedure": "7",
  "Criminal": "7",
  "Real Property": "8",
  "Civil Procedure": "9",
};

const subtopicHints = [
  ["Presentation of Evidence", "31"],
  ["Relevancy and Excluding Relevant Evidence", "32"],
  ["Hearsay and Circumstances of Its Admissibility", "33"],
  ["Writings, Recordings, and Photographs", "34"],
  ["Privileges and Other Policy Exclusions", "35"],
  ["Relations Between Federal and State Governments", "41"],
  ["Separation of Powers", "42"],
  ["Judicial Review", "43"],
  ["Individual Rights", "44"],
  ["Remedies", "51"],
  ["Contract Content and Meaning", "52"],
  ["Third-Party Rights", "53"],
  ["Defenses to Enforceability", "54"],
  ["Formation of Contracts", "55"],
  ["Performance, Breach, and Discharge", "56"],
  ["Negligence", "61"],
  ["Other Torts", "62"],
  ["Strict Liability and Products Liability", "63"],
  ["Intentional Torts", "64"],
  ["Inchoate Crimes", "71"],
  ["General Principles", "72"],
  ["Other Crimes", "73"],
  ["Homicide", "74"],
  ["Constitutional Protection of Accused Persons", "75"],
  ["Rights in Land", "81"],
  ["Ownership", "82"],
  ["Mortgages", "83"],
  ["Titles", "84"],
  ["Contracts for Land", "85"],
  ["Jury Trials", "91"],
  ["Motions", "92"],
  ["Appealability and Review", "93"],
  ["Jurisdiction and Venue", "94"],
  ["Pretrial Procedures", "95"],
  ["Law Applied by Federal Courts", "96"],
  ["Verdicts and Judgments", "97"],
];

const exactPhraseMap = [
  [/reliance damages/i, "51060102"],
  [/consequential damages/i, "51060103"],
  [/incidental damages/i, "51060104"],
  [/liquidated damages/i, "51060105"],
  [/expectation damages/i, "51060101"],
  [/lost profits|certainty/i, "51060101"],
  [/specific performance/i, "51060304"],
  [/restitution/i, "51060400"],
  [/mitigat/i, "51060107"],
  [/buyer.*seller.*remed|seller.*buyer.*remed/i, "51040000"],
  [/gap.?filler/i, "52040100"],
  [/interpretation/i, "52040200"],
  [/parol evidence/i, "52040300"],
  [/source.?law|ucc|uniform commercial code/i, "55010101"],
  [/common law/i, "55010102"],
  [/bilateral/i, "55010201"],
  [/unilateral/i, "55010202"],
  [/types of agreements/i, "55010200"],
  [/covenant/i, "56050101"],
  [/express condition|condition precedent|condition subsequent/i, "56050102"],
  [/anticipatory repudiation/i, "56050403"],
  [/perfect tender/i, "56050402"],
  [/material.*minor|minor.*material/i, "56050401"],
  [/impossibility/i, "56050601"],
  [/impracticability/i, "56050602"],
  [/frustration/i, "56050603"],
  [/waiver/i, "56050604"],
  [/estoppel/i, "56050605"],
  [/accord/i, "56050607"],
  [/novation/i, "56050608"],
  [/rational basis/i, "44040305"],
  [/strict scrutiny/i, "44040303"],
  [/intermediate scrutiny/i, "44040304"],
  [/fundamental right/i, "44040301"],
  [/establishing discrimination|discriminatory purpose|discriminatory intent/i, "44040302"],
  [/equal protection/i, "44040300"],
  [/fundamental right/i, "44040300"],
  [/free exercise|establishment clause|religion/i, "44040501"],
  [/free speech|speech|expression/i, "44040502"],
  [/press/i, "44040503"],
  [/association/i, "44040504"],
  [/dormant commerce/i, "41010100"],
  [/commerce clause|commerce power/i, "42010103"],
  [/channels of commerce|instrumentalities of commerce|substantial effects/i, "42010103"],
  [/dormant commerce/i, "41010100"],
  [/state action/i, "44010000"],
  [/substantive due process/i, "44040202"],
  [/procedural due process|notice.*hearing/i, "44040203"],
  [/property interest|at.?will public employee|continued employment/i, "44040203"],
  [/takings/i, "44040604"],
  [/bill of attainder/i, "44040601"],
  [/ex post facto/i, "44040602"],
  [/contracts clause/i, "44040603"],
  [/appointment/i, "42010204"],
  [/removal power|removal/i, "42010204"],
  [/agency authority|delegation|major questions/i, "42010108"],
  [/congressional investigation|congressional subpoena|valid legislative purpose|investigatory power/i, "42010105"],
  [/bicameralism|presentment|legislative veto|committee approval/i, "42010302"],
  [/executive privilege/i, "42010207"],
  [/executive immunity/i, "42010208"],
  [/veto/i, "42010205"],
  [/pardon/i, "42010206"],
  [/war power/i, "42010102"],
  [/taxing|spending/i, "42010101"],
  [/necessary and proper/i, "42010104"],
  [/statute of frauds/i, "54030400"],
  [/mistake.*lack of mutual assent|lack of mutual assent.*mistake/i, "54030600"],
  [/lack of capacity|capacity/i, "54030100"],
  [/illegality/i, "54030200"],
  [/unconscion/i, "54030300"],
  [/ambiguity/i, "54030500"],
  [/duress/i, "54030700"],
  [/misrepresentation|fraud/i, "54030800"],
  [/undue influence/i, "54030900"],
  [/public policy/i, "54031000"],
  [/third.?party beneficiary/i, "53010000"],
  [/assignment|delegation/i, "53020000"],
  [/offer/i, "55020101"],
  [/acceptance/i, "55020102"],
  [/bargain|consideration/i, "55020201"],
  [/illusory/i, "55020202"],
  [/requirement.*output|output.*requirement/i, "55020203"],
  [/preexisting duty/i, "55020204"],
  [/sufficiency of consideration/i, "55020205"],
  [/promissory estoppel/i, "55020300"],
  [/implied.?in.?fact/i, "55020400"],
  [/implied.?in.?law/i, "55020500"],
  [/specific jurisdiction|general jurisdiction/i, "94020100"],
  [/consent/i, "94020201"],
  [/service of process/i, "94040200"],
  [/domicile/i, "94020203"],
  [/minimum contacts/i, "94020302"],
  [/personal jurisdiction/i, "94020000"],
  [/diversity jurisdiction/i, "94010100"],
  [/federal.?question/i, "94010200"],
  [/supplemental jurisdiction/i, "94010300"],
  [/subject.?matter jurisdiction/i, "94010000"],
  [/removal/i, "94030100"],
  [/remand/i, "94030200"],
  [/venue transfer|transfer/i, "94050200"],
  [/forum non conveniens/i, "94050300"],
  [/venue/i, "94050100"],
  [/erie|choice of law|state law prediction/i, "96010000"],
  [/summary judgment/i, "92080105"],
  [/judgment as a matter of law|directed verdict/i, "92080201"],
  [/renewed.*judgment as a matter of law|renewed.*jmol/i, "92080202"],
  [/new trial/i, "92080204"],
  [/relief from judgment/i, "92080203"],
  [/motion to dismiss/i, "92080104"],
  [/more definite statement/i, "92080102"],
  [/motion to strike/i, "92080103"],
  [/claim preclusion|issue preclusion|res judicata|collateral estoppel/i, "97100300"],
  [/dismissal with prejudice|dismissals/i, "97100500"],
  [/bench trial findings|judicial findings|findings and conclusions/i, "97100200"],
  [/actual cause|cause in fact|but.?for|substantial factor|alternative liability/i, "61020401"],
  [/proximate|foreseeable harm|scope of liability/i, "61020402"],
  [/actual harm|actual loss|damages/i, "61020500"],
  [/affirmative aid|created? a risk|creates a risk|duty to aid|duty to rescue/i, "61020104"],
  [/hidden plaintiff|unforeseeable plaintiff/i, "61020102"],
  [/affirmative duty|duty to act|rescue/i, "61020104"],
  [/foreseeable plaintiff/i, "61020102"],
  [/unreasonable risk/i, "61020103"],
  [/negligence per se/i, "61020302"],
  [/res ipsa/i, "61020304"],
  [/custom/i, "61020303"],
  [/breach/i, "61020301"],
  [/reasonable prudent|standard of care/i, "61020201"],
  [/assumption of risk/i, "61020601"],
  [/contributory negligence/i, "61020602"],
  [/comparative negligence/i, "61020603"],
  [/defamation|actual malice/i, "62050401"],
  [/privacy|public disclosure/i, "62050402"],
  [/malicious prosecution/i, "62050403"],
  [/abuse of process/i, "62050404"],
  [/nuisance/i, "62050100"],
  [/misrepresentation/i, "62050200"],
  [/interference/i, "62050300"],
  [/design defect|manufacturing defect|failure to warn|learned intermediary|products liability/i, "63030100"],
  [/livestock|wild.?animal|domestic animal|possession of animals|animal/i, "63040200"],
  [/abnormally dangerous/i, "63040100"],
  [/strict liability.*defense|plaintiff conduct/i, "63040300"],
  [/battery/i, "64010102"],
  [/assault/i, "64010101"],
  [/false imprisonment/i, "64010103"],
  [/intentional infliction/i, "64010104"],
  [/trespass to land/i, "64010201"],
  [/trespass to chattels|trespass to chattel/i, "64010202"],
  [/conversion/i, "64010203"],
  [/defense of others|self-defense|self defense|privilege/i, "64010500"],
  [/kidnapping/i, "73020500"],
  [/rape/i, "73020700"],
  [/conspiracy/i, "71040200"],
  [/attempt/i, "71040300"],
  [/solicitation/i, "71040100"],
  [/impossibility.*attempt|legal impossibility/i, "71040400"],
  [/murder/i, "74020101"],
  [/manslaughter/i, "74020102"],
  [/homicide/i, "74020100"],
  [/larceny by trick/i, "73030200"],
  [/false pretenses/i, "73030300"],
  [/larceny/i, "73030100"],
  [/criminal assault/i, "73020200"],
  [/criminal battery/i, "73020300"],
  [/robbery/i, "73030400"],
  [/burglary/i, "73031000"],
  [/arson/i, "73030900"],
  [/embezzlement/i, "73030500"],
  [/forgery/i, "73030700"],
  [/receipt of stolen property/i, "73030801"],
  [/mistake/i, "72060103"],
  [/entrapment/i, "72060105"],
  [/infancy/i, "72060102"],
  [/necessity/i, "72060207"],
  [/duress/i, "72060206"],
  [/search|seizure|warrant|fourth amendment/i, "75070000"],
  [/act of production|self.?incrimination|voluntarily created documents|compelled production/i, "75080100"],
  [/miranda|confession|statement/i, "75080100"],
  [/identification/i, "75080200"],
  [/confrontation/i, "75080300"],
  [/double jeopardy/i, "75080400"],
  [/right to counsel|entitled to counsel|absence of counsel|effective assistance|plea bargaining|formal plea offers/i, "75090400"],
  [/speedy trial/i, "75090200"],
  [/jury trial/i, "75090100"],
  [/public trial/i, "75090300"],
  [/exclusionary rule|fruit of the poisonous tree/i, "75100000"],
  [/eighth amendment/i, "75110100"],
  [/brady|giglio|impeach.*government witness|exculpatory|prosecutor.*credibility|personal belief|outside the record|prosecutorial misconduct/i, "75090500"],
  [/sentencing/i, "75110200"],
  [/appeal/i, "75110300"],
  [/habeas/i, "75110400"],
  [/competency/i, "75120400"],
  [/roles.*judge.*jury|judge.*jury/i, "31010101"],
  [/burden of production|burden of persuasion/i, "31010102"],
  [/presumptions|inferences/i, "31010103"],
  [/materiality|probative value/i, "31010104"],
  [/offers of proof/i, "31010105"],
  [/judicial notice/i, "31010106"],
  [/preliminary questions/i, "31010107"],
  [/rule of completeness/i, "31010108"],
  [/nonresponsive/i, "31010203"],
  [/common objections/i, "31010202"],
  [/mode.*order.*witness|order.*witness/i, "31010401"],
  [/form.*scope.*examination/i, "31010402"],
  [/lay opinion/i, "31010403"],
  [/competency/i, "31010404"],
  [/personal knowledge/i, "31010405"],
  [/truthfulness/i, "31010406"],
  [/refreshing recollection/i, "31010407"],
  [/prior inconsistent/i, "31010502"],
  [/bias/i, "31010503"],
  [/conviction of crime/i, "31010504"],
  [/opinion.*reputation|reputation.*opinion/i, "31010505"],
  [/character evidence/i, "32020400"],
  [/habit|routine practice/i, "32020500"],
  [/hearsay exemption|opposing party|party opponent/i, "33040202"],
  [/prior statement of witness/i, "33040201"],
  [/non.?hearsay purpose|effect on listener/i, "33040203"],
  [/present sense impression|excited utterance|business records|public records|dying declaration|statement against interest/i, "33040300"],
  [/confrontation clause/i, "33040400"],
  [/hearsay/i, "33040101"],
  [/best evidence|original writing|duplicate/i, "34010000"],
  [/spousal privilege/i, "35030201"],
  [/marital communications/i, "35030202"],
  [/physician/i, "35030203"],
  [/psychotherapist/i, "35030204"],
  [/attorney.?client/i, "35030205"],
  [/clergy|penitent/i, "35030206"],
  [/work.?product|work product/i, "95070405"],
  [/attorney.?client privilege|privilege/i, "95070405"],
  [/subsequent remedial/i, "35030301"],
  [/settlement|compromise/i, "35030302"],
  [/plea/i, "35030303"],
  [/liability insurance/i, "35030304"],
  [/medical expenses/i, "35030305"],
  [/easement.*nature|nature.*easement|easement nature|type/i, "81020101"],
  [/easement.*creation|creation.*easement|implication|necessity|prescription|prescriptive|estoppel/i, "81020102"],
  [/easement.*scope|scope.*easement|dominant|servient|negative easement/i, "81020103"],
  [/easement.*transfer|transferability/i, "81020104"],
  [/easement.*termination|termination.*easement/i, "81020105"],
  [/profit/i, "81020200"],
  [/license/i, "81020300"],
  [/real covenant|running with the land/i, "81020401"],
  [/equitable servitude|restrictive covenant|common scheme/i, "81020500"],
  [/fixture/i, "81020600"],
  [/zoning/i, "81020700"],
  [/support right|lateral|subjacent/i, "81020900"],
  [/adverse possession/i, "84040100"],
  [/valid deed|requirements for valid deed/i, "84040201"],
  [/deed.*statute of frauds/i, "84040202"],
  [/delivery.*acceptance|acceptance.*delivery/i, "84040203"],
  [/types of deeds|quitclaim|warranty deed/i, "84040204"],
  [/covenants of title/i, "84040205"],
  [/estoppel by deed/i, "84040206"],
  [/after.?acquired title/i, "84040207"],
  [/forged/i, "84040208"],
  [/recording act|bona fide purchaser|notice statute|race-notice|race notice|types of notice|priorities/i, "84040400"],
  [/notice of appeal/i, "93110101"],
  [/final judgment/i, "93110101"],
  [/finality/i, "93110200"],
  [/scope of review|standard of review/i, "93110300"],
  [/civil jury mechanics|federal civil jury|jury must|unanimous unless/i, "91090000"],
  [/compulsory counterclaim|counterclaim/i, "95070103"],
  [/crossclaim/i, "95070104"],
  [/joinder of claims|join claims/i, "95070301"],
  [/joinder of parties|join parties|necessary party|required party|permissive party/i, "95070302"],
  [/class action/i, "95070303"],
  [/derivative suit|derivative complaint|representative action/i, "95070303"],
  [/consulting expert|expert discovery|scope of discovery|discoverable/i, "95070403"],
  [/initial disclosure/i, "95070401"],
  [/e-discovery|electronically stored/i, "95070404"],
  [/discovery sanction/i, "95070407"],
  [/inadvertent disclosure/i, "95070406"],
  [/contribution|indemnity/i, "62060203"],
  [/joint and several/i, "62060201"],
  [/satisfaction and release/i, "62060202"],
  [/apportionment/i, "62060204"],
];

const stopwords = new Set([
  "a", "an", "and", "are", "as", "at", "bar", "be", "by", "for", "from",
  "in", "into", "is", "it", "its", "law", "legal", "of", "on", "or", "the",
  "to", "under", "with", "within", "questions", "question", "batch", "node",
  "q", "poe", "calmap", "core", "hard", "variants", "mixed", "review",
]);

function tokens(text) {
  return String(text)
    .toLowerCase()
    .replace(/[’']/g, "")
    .replace(/[^a-z0-9]+/g, " ")
    .split(/\s+/)
    .filter((t) => t && !stopwords.has(t) && !/^\d+$/.test(t) && !/^[a-z]\d+$/.test(t));
}

function normalizeStatus(status) {
  const base = String(status).split("::")[0];
  return base
    .replace(/_questions_batch_\d+/g, " ")
    .replace(/_batch_\d+/g, " ")
    .replace(/_node_[a-z0-9]+/g, " ")
    .replace(/_[rq]\d+$/g, " ")
    .replace(/_/g, " ")
    .trim();
}

function parseOutline(markdown) {
  const rows = [];
  let currentSubtopic = null;
  let inCodes = false;
  for (const line of markdown.split(/\r?\n/)) {
    const ab = line.match(/^AB=(\d{2})\s+(.+?)\s*$/);
    if (ab) {
      currentSubtopic = ab[2].trim();
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
    if (!inCodes) continue;
    const m = line.match(/^\s*(\d{8})\s+(.+?)\s*$/);
    if (!m) continue;
    const code = m[1];
    const path = m[2].trim();
    rows.push({
      code,
      ab: code.slice(0, 2),
      firstDigit: code[0],
      subject: subjectByFirstDigit[code[0]] ?? "",
      subtopic: currentSubtopic,
      path,
      text: `${subjectByFirstDigit[code[0]] ?? ""} ${currentSubtopic} ${path}`,
      tokenSet: new Set(tokens(`${subjectByFirstDigit[code[0]] ?? ""} ${currentSubtopic} ${path}`)),
    });
  }
  return rows;
}

function subjectDigit(meta) {
  return subjectToDigit[meta?.subject_display] ?? null;
}

function abHintFromMetadata(text) {
  for (const [name, ab] of subtopicHints) {
    if (text.toLowerCase().includes(name.toLowerCase())) return ab;
  }
  return null;
}

function exactPhraseCandidate(searchText, meta, outlineByCode) {
  const requiredDigit = subjectDigit(meta);
  for (const [pattern, code] of exactPhraseMap) {
    const outlineRow = outlineByCode.get(code);
    if (!outlineRow) continue;
    if (requiredDigit && outlineRow.firstDigit !== requiredDigit) continue;
    if (pattern.test(searchText)) return code;
  }
  return null;
}

function scoreCandidate(searchText, meta, row) {
  const searchTokens = new Set(tokens(searchText));
  let score = 0;
  const matches = [];
  for (const token of searchTokens) {
    if (row.tokenSet.has(token)) {
      score += token.length >= 8 ? 5 : token.length >= 5 ? 3 : 2;
      matches.push(token);
    }
  }
  const digit = subjectDigit(meta);
  if (digit) {
    if (row.firstDigit === digit) score += 15;
    else score -= 50;
  }
  const abHint = abHintFromMetadata(searchText);
  if (abHint) {
    if (row.ab === abHint) score += 10;
    else score -= 8;
  }
  if (meta?.topic && row.path.toLowerCase().includes(meta.topic.toLowerCase())) score += 12;
  if (meta?.subtopic && row.path.toLowerCase().includes(meta.subtopic.toLowerCase())) score += 12;
  const depth = row.code.endsWith("00") ? (row.code.endsWith("0000") ? 0 : 1) : 2;
  score += depth;
  return { score, matches };
}

const input = await FileBlob.load(workbookPath);
const workbook = await SpreadsheetFile.importXlsx(input);
const sheet = workbook.worksheets.getItem("Sheet1");
const values = sheet.getRange("A1:B3738").values;

const outlineRows = parseOutline(await fs.readFile(outlinePath, "utf8"));
const validCodes = new Set(outlineRows.map((r) => r.code));
const outlineByCode = new Map(outlineRows.map((r) => [r.code, r]));
const qbank = JSON.parse(await fs.readFile(qbankIndexPath, "utf8")).byInternalId;

const rowMappings = [];
for (let i = 1; i < values.length; i++) {
  const excelRow = i + 1;
  const status = values[i][0] ?? "";
  const existingCode = values[i][1] ?? "";
  const meta = qbank[status] ?? qbank[String(status).split("::")[0]] ?? null;
  const searchText = [
    normalizeStatus(status),
    meta?.subject_display,
    meta?.topic,
    meta?.subtopic,
    meta?.lb_rule_reference,
    meta?.call,
    meta?.L2,
  ].filter(Boolean).join(" ");

  const exactCode = exactPhraseCandidate(searchText, meta, outlineByCode);
  const candidates = outlineRows
    .map((row) => ({ row, ...scoreCandidate(searchText, meta, row) }))
    .sort((a, b) => b.score - a.score || b.matches.length - a.matches.length)
    .slice(0, 5);

  let selected = exactCode ? outlineByCode.get(exactCode) : candidates[0]?.row;
  let source = exactCode ? "phrase_rule" : "score";
  let confidence = "review";
  let note = "";
  const top = candidates[0];
  const runner = candidates[1];
  const margin = top && runner ? top.score - runner.score : top?.score ?? 0;

  if (!String(status).trim() || (!meta && tokens(searchText).length === 0)) {
    selected = { code: "00000000", path: "No status/source metadata to classify", subtopic: "" };
    confidence = "low";
    note = "Blank or unclassifiable status; using no-fit placeholder.";
  } else if (!meta) {
    selected = { code: "00000000", path: "No QBank metadata found", subtopic: "" };
    confidence = "low";
    note = "No QBank metadata found for this status; using no-fit placeholder.";
  } else if (exactCode) {
    confidence = "high";
    note = "Matched from QBank metadata using explicit legal phrase rule.";
  } else if (top?.score >= 30 && margin >= 5) {
    confidence = "high";
    note = "Matched from QBank metadata/status tokens with subject-filtered score.";
  } else if (top?.score >= 22) {
    confidence = "review";
    note = "Subject-filtered score is plausible but close; review recommended.";
  } else {
    confidence = "low";
    note = "Insufficient metadata-token match; review required.";
  }

  rowMappings.push({
    excelRow,
    status,
    existingCode,
    qid: meta?.qid ?? "",
    subject: meta?.subject_display ?? "",
    topic: meta?.topic ?? "",
    subtopic: meta?.subtopic ?? "",
    lb_rule_reference: meta?.lb_rule_reference ?? "",
    selectedCode: selected?.code ?? "",
    selectedPath: selected?.path ?? "",
    selectedSubtopic: selected?.subtopic ?? "",
    confidence,
    source,
    score: top?.score ?? 0,
    margin,
    note,
    candidates: candidates.map((c) => ({
      code: c.row.code,
      path: c.row.path,
      subtopic: c.row.subtopic,
      score: c.score,
      matches: c.matches.join("|"),
    })),
  });
}

await fs.writeFile(`${outputDir}/row_mappings.json`, JSON.stringify(rowMappings, null, 2));
await fs.writeFile(
  `${outputDir}/row_mappings.csv`,
  [
    "excelRow,status,qid,subject,topic,subtopic,selectedCode,selectedPath,confidence,source,score,margin,note",
    ...rowMappings.map((r) =>
      [r.excelRow, r.status, r.qid, r.subject, r.topic, r.subtopic, r.selectedCode, r.selectedPath, r.confidence, r.source, r.score, r.margin, r.note]
        .map((v) => `"${String(v ?? "").replace(/"/g, '""')}"`)
        .join(",")
    ),
  ].join("\n")
);

const summary = {
  rows: rowMappings.length,
  qbankMatched: rowMappings.filter((r) => r.qid).length,
  confidenceCounts: rowMappings.reduce((acc, r) => {
    acc[r.confidence] = (acc[r.confidence] ?? 0) + 1;
    return acc;
  }, {}),
  missingCodes: rowMappings.filter((r) => !r.selectedCode).length,
  invalidCodes: rowMappings.filter((r) => r.selectedCode && !validCodes.has(r.selectedCode)).length,
  lowSamples: rowMappings.filter((r) => r.confidence === "low").slice(0, 20),
  reviewSamples: rowMappings.filter((r) => r.confidence === "review").slice(0, 20),
};

console.log(JSON.stringify(summary, null, 2));
