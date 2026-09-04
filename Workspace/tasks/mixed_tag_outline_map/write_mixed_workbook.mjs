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
if (mappings.length !== 164) {
  throw new Error(`Expected 164 mappings, found ${mappings.length}`);
}

const validCodes = await parseOfficialCodes();
const invalidMappings = mappings.filter((row) => row.code !== "unsure" && !validCodes.has(String(row.code)));
if (invalidMappings.length) {
  throw new Error(`Mapping contains invalid official codes: ${JSON.stringify(invalidMappings.slice(0, 5))}`);
}

const input = await FileBlob.load(workbookPath);
const workbook = await SpreadsheetFile.importXlsx(input);
const sheet = workbook.worksheets.getItem("Sheet1");
const values = sheet.getRange("A1:G165").values;

const expectedHeaders = [
  "BARMATRIX Q#",
  "Question",
  "Answer Explanation",
  "subject_display",
  "topic",
  "subtopic",
  "Outline_code",
];

for (let i = 0; i < expectedHeaders.length; i++) {
  if (normalize(values[0][i]) !== expectedHeaders[i]) {
    throw new Error(`Unexpected header at column ${i + 1}: ${JSON.stringify(values[0][i])}`);
  }
}

const rowMismatches = [];
for (let i = 0; i < mappings.length; i++) {
  const excelRow = i + 2;
  const workbookQid = normalize(values[i + 1][0]);
  const mappedQid = normalize(mappings[i].qid);
  if (workbookQid !== mappedQid || mappings[i].excelRow !== excelRow) {
    rowMismatches.push({ excelRow, workbookQid, mappedQid, mappedExcelRow: mappings[i].excelRow });
  }
}
if (rowMismatches.length) {
  throw new Error(`Workbook rows do not match mapping rows: ${JSON.stringify(rowMismatches.slice(0, 10))}`);
}

const outputValues = mappings.map((row) => [String(row.code)]);
const codeRange = sheet.getRange("G2:G165");
codeRange.values = outputValues;
codeRange.format.numberFormat = "@";

const stamp = new Date().toISOString().replace(/[:.]/g, "-");
const backupPath = workbookPath.replace(/\.xlsx$/i, `.backup-${stamp}.xlsx`);
await fs.copyFile(workbookPath, backupPath);

const exported = await SpreadsheetFile.exportXlsx(workbook);
await exported.save(workbookPath);

const verifyInput = await FileBlob.load(workbookPath);
const verifyWorkbook = await SpreadsheetFile.importXlsx(verifyInput);
const verifySheet = verifyWorkbook.worksheets.getItem("Sheet1");
const verifyValues = verifySheet.getRange("A1:G165").values;

const mismatches = [];
const invalidCodes = [];
const unsureRows = [];
const uniqueCodes = new Set();
let nonblankCodes = 0;

for (let i = 0; i < mappings.length; i++) {
  const excelRow = i + 2;
  const qid = normalize(verifyValues[i + 1][0]);
  const code = normalize(verifyValues[i + 1][6]);
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

const inspect = await verifyWorkbook.inspect({
  kind: "table",
  range: "Sheet1!A1:G20",
  include: "values,formulas",
  tableMaxRows: 20,
  tableMaxCols: 7,
});
await fs.writeFile(path.join(outputDir, "mixed_verify_top_rows.ndjson"), inspect.ndjson);

const preview = await verifyWorkbook.render({
  sheetName: "Sheet1",
  range: "A1:G35",
  scale: 1,
  format: "png",
});
await fs.writeFile(path.join(outputDir, "mixed_verify_top_rows.png"), new Uint8Array(await preview.arrayBuffer()));

const summary = {
  workbookPath,
  backupPath,
  mappingRows: mappings.length,
  workbookDataRows: verifyValues.length - 1,
  nonblankCodes,
  unsureRows: unsureRows.length,
  unsureRowDetails: unsureRows,
  uniqueCodes: uniqueCodes.size,
  mismatches: mismatches.length,
  invalidCodes: invalidCodes.length,
  invalidCodeSamples: invalidCodes.slice(0, 10),
  sampleRows: [2, 3, 57, 100, 165].map((row) => ({
    excelRow: row,
    qid: normalize(verifyValues[row - 1]?.[0]),
    outlineCode: normalize(verifyValues[row - 1]?.[6]),
  })),
};

await fs.writeFile(path.join(outputDir, "mixed_write_verify_summary.json"), JSON.stringify(summary, null, 2));
console.log(JSON.stringify(summary, null, 2));
