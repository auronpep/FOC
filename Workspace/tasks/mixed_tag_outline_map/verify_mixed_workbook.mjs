import fs from "node:fs/promises";
import { FileBlob, SpreadsheetFile } from "@oai/artifact-tool";

import os from "node:os";
import path from "node:path";
import { fileURLToPath } from "node:url";

const HERE = path.dirname(fileURLToPath(import.meta.url));
const WORKSPACE = path.resolve(HERE, "..", "..");
const SPREADSHEET_WORK = path.join(WORKSPACE, ".codex_spreadsheet_work");
const DOCUMENTS = path.join(os.homedir(), "Documents");

const workbookPath = process.env.MIXED_WORKBOOK ?? path.join(DOCUMENTS, "Mixed tag.xlsx");
const outlinePath = path.join(WORKSPACE, "OUTLINE_CODES_COMPLETE.md");
const mappingPath = path.join(HERE, "mixed_row_mappings.json");
const outputDir = HERE;

function normalize(value) {
  return value == null ? "" : String(value).replace(/\s+/g, " ").trim();
}

async function parseOfficialCodes() {
  const text = await fs.readFile(outlinePath, "utf8");
  const codes = new Set();
  let inValidBlock = false;

  for (const line of text.split(/\r?\n/)) {
    if (/^\s*Valid codes:\s*$/i.test(line)) {
      inValidBlock = true;
      continue;
    }
    if (inValidBlock && (/^AB=\d{2}\s+/.test(line) || /^#+/.test(line) || /^=+$/.test(line))) {
      inValidBlock = false;
      continue;
    }
    if (!inValidBlock) {
      continue;
    }

    const match = line.match(/^\s*([0-9]{8})\b/);
    if (match) {
      codes.add(match[1]);
    }
  }

  return codes;
}

const mappings = JSON.parse(await fs.readFile(mappingPath, "utf8"));
const validCodes = await parseOfficialCodes();
const input = await FileBlob.load(workbookPath);
const workbook = await SpreadsheetFile.importXlsx(input);
const sheet = workbook.worksheets.getItem("Sheet1");
const values = sheet.getRange("A1:G165").values;

const mismatches = [];
const invalidCodes = [];
const unsureRows = [];
const uniqueCodes = new Set();
let nonblankCodes = 0;

for (let i = 0; i < mappings.length; i++) {
  const excelRow = i + 2;
  const qid = normalize(values[i + 1]?.[0]);
  const code = normalize(values[i + 1]?.[6]);
  const expected = String(mappings[i].code);

  if (qid !== normalize(mappings[i].qid) || code !== expected) {
    mismatches.push({ excelRow, qid, code, expected, expectedQid: mappings[i].qid });
  }
  if (code) {
    nonblankCodes += 1;
    uniqueCodes.add(code);
  }
  if (code === "unsure") {
    unsureRows.push({ excelRow, qid });
  } else if (!validCodes.has(code)) {
    invalidCodes.push({ excelRow, qid, code });
  }
}

const summary = {
  workbookPath,
  mappingRows: mappings.length,
  workbookDataRows: values.length - 1,
  officialCodes: validCodes.size,
  nonblankCodes,
  unsureRows: unsureRows.length,
  uniqueCodes: uniqueCodes.size,
  mismatches: mismatches.length,
  invalidCodes: invalidCodes.length,
  invalidCodeSamples: invalidCodes.slice(0, 10),
  sampleRows: [2, 3, 57, 100, 165].map((row) => ({
    excelRow: row,
    qid: normalize(values[row - 1]?.[0]),
    outlineCode: normalize(values[row - 1]?.[6]),
  })),
};

await fs.writeFile(path.join(outputDir, "mixed_readback_verify_summary.json"), JSON.stringify(summary, null, 2));
console.log(JSON.stringify(summary, null, 2));

if (summary.workbookDataRows !== 164 || summary.nonblankCodes !== 164 || summary.mismatches || summary.invalidCodes) {
  process.exit(1);
}
