import fs from "node:fs/promises";
import { FileBlob, SpreadsheetFile } from "@oai/artifact-tool";

const workbookPath = "C:/Users/JesusLovesMe/Documents/outline lookup.xlsx";
const outlinePath = "C:/FOC/Workspace/OUTLINE_CODES_COMPLETE.md";
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

const subjectHints = [
  ["contracts", "5"],
  ["contract", "5"],
  ["presentation", "31"],
  ["relevancy", "32"],
  ["hearsay", "33"],
  ["writings", "34"],
  ["privileges", "35"],
  ["constitutional", "4"],
  ["conlaw", "4"],
  ["torts", "6"],
  ["tort", "6"],
  ["negligence", "61"],
  ["strict_liability", "63"],
  ["products_liability", "63"],
  ["intentional_torts", "64"],
  ["criminal", "7"],
  ["crim", "7"],
  ["homicide", "74"],
  ["property", "8"],
  ["real_property", "8"],
  ["mortgages", "83"],
  ["civil_procedure", "9"],
  ["civpro", "9"],
  ["jury_trials", "91"],
  ["motions", "92"],
  ["appealability", "93"],
  ["jurisdiction_venue", "94"],
  ["pretrial", "95"],
  ["erie", "96"],
  ["verdicts_judgments", "97"],
];

const stopwords = new Set([
  "a", "an", "and", "are", "as", "at", "bar", "be", "by", "for", "from",
  "in", "into", "is", "it", "its", "law", "legal", "of", "on", "or", "the",
  "to", "under", "with", "within", "questions", "question", "batch", "node",
  "q", "poe", "calmap", "roles", "role",
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
    .replace(/_questions_batch_\d+/g, "")
    .replace(/_batch_\d+/g, "")
    .replace(/_node_[a-z0-9]+/g, "")
    .replace(/_[rq]\d+$/g, "")
    .replace(/_/g, " ")
    .trim();
}

function parseOutline(markdown) {
  const rows = [];
  let currentAB = null;
  let currentSubtopic = null;
  let inCodes = false;
  for (const line of markdown.split(/\r?\n/)) {
    const ab = line.match(/^AB=(\d{2})\s+(.+?)\s*$/);
    if (ab) {
      currentAB = ab[1];
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
      tokenSet: new Set(tokens(`${path} ${currentSubtopic} ${subjectByFirstDigit[code[0]] ?? ""}`)),
    });
  }
  return rows;
}

function prefixHint(status) {
  const lower = String(status).toLowerCase();
  for (const [hint, prefix] of subjectHints) {
    if (lower.includes(hint)) return prefix;
  }
  return null;
}

function score(status, codeRow) {
  const text = normalizeStatus(status);
  const statusTokens = tokens(text);
  const statusSet = new Set(statusTokens);
  let s = 0;
  const matches = [];
  for (const token of statusSet) {
    if (codeRow.tokenSet.has(token)) {
      s += token.length >= 8 ? 4 : token.length >= 5 ? 3 : 2;
      matches.push(token);
    }
  }
  const pathLower = codeRow.path.toLowerCase();
  const normalizedLower = text.toLowerCase();
  for (const phrase of [
    "lost profits",
    "expectation damages",
    "buyer seller remedies",
    "judge jury",
    "burden production",
    "burden persuasion",
    "judicial notice",
    "preliminary questions",
    "prior inconsistent statement",
    "habit routine practice",
    "subsequent remedial measures",
    "offers compromise",
    "character evidence",
    "present sense impression",
    "excited utterance",
    "business records",
    "public records",
    "best evidence",
    "attorney client",
    "spousal immunity",
    "specific performance",
    "liquidated damages",
    "statute frauds",
    "parol evidence",
    "third party beneficiary",
    "anticipatory repudiation",
    "substantial performance",
    "personal jurisdiction",
    "subject matter jurisdiction",
    "summary judgment",
    "directed verdict",
    "claim preclusion",
    "issue preclusion",
  ]) {
    if (normalizedLower.includes(phrase) && pathLower.includes(phrase)) s += 10;
  }
  const hint = prefixHint(status);
  if (hint) {
    if (hint.length === 2 && codeRow.ab === hint) s += 8;
    else if (hint.length === 1 && codeRow.firstDigit === hint) s += 6;
    else s -= 12;
  }
  const depth = codeRow.code.endsWith("00") ? (codeRow.code.endsWith("0000") ? 0 : 1) : 2;
  s += depth;
  return { score: s, matches };
}

const input = await FileBlob.load(workbookPath);
const workbook = await SpreadsheetFile.importXlsx(input);
const sheet = workbook.worksheets.getItem("Sheet1");
const values = sheet.getRange("A1:B3738").values;

const markdown = await fs.readFile(outlinePath, "utf8");
const codeRows = parseOutline(markdown);

const statusCounts = new Map();
for (let i = 1; i < values.length; i++) {
  const status = values[i][0];
  if (!status) continue;
  const base = String(status).split("::")[0];
  statusCounts.set(base, (statusCounts.get(base) ?? 0) + 1);
}

const unique = [...statusCounts.entries()].map(([base, count]) => {
  const candidates = codeRows
    .map((row) => ({ row, ...score(base, row) }))
    .sort((a, b) => b.score - a.score || b.matches.length - a.matches.length)
    .slice(0, 5)
    .map((c) => ({
      code: c.row.code,
      path: c.row.path,
      subject: c.row.subject,
      subtopic: c.row.subtopic,
      score: c.score,
      matches: c.matches.join("|"),
    }));
  const top = candidates[0];
  const runner = candidates[1];
  const confidence =
    top && top.score >= 18 && (!runner || top.score - runner.score >= 5)
      ? "high"
      : top && top.score >= 12
        ? "review"
        : "low";
  return {
    base,
    count,
    normalized: normalizeStatus(base),
    suggestedCode: top?.code ?? "",
    suggestedPath: top?.path ?? "",
    confidence,
    topScore: top?.score ?? 0,
    margin: runner ? top.score - runner.score : top?.score ?? 0,
    candidates,
  };
});

unique.sort((a, b) => a.confidence.localeCompare(b.confidence) || a.base.localeCompare(b.base));

await fs.writeFile(`${outputDir}/outline_catalog.json`, JSON.stringify(codeRows.map(({ tokenSet, ...r }) => r), null, 2));
await fs.writeFile(`${outputDir}/unique_status_candidates.json`, JSON.stringify(unique, null, 2));
await fs.writeFile(
  `${outputDir}/unique_status_candidates.csv`,
  [
    "base,count,normalized,suggestedCode,suggestedPath,confidence,topScore,margin",
    ...unique.map((u) =>
      [u.base, u.count, u.normalized, u.suggestedCode, u.suggestedPath, u.confidence, u.topScore, u.margin]
        .map((v) => `"${String(v ?? "").replace(/"/g, '""')}"`)
        .join(",")
    ),
  ].join("\n")
);

const summary = {
  workbookRows: values.length - 1,
  uniqueStatusBases: unique.length,
  outlineCodeRows: codeRows.length,
  confidenceCounts: unique.reduce((acc, u) => {
    acc[u.confidence] = (acc[u.confidence] ?? 0) + 1;
    return acc;
  }, {}),
  samples: unique.slice(0, 20),
};

console.log(JSON.stringify(summary, null, 2));
