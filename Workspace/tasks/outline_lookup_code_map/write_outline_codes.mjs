import fs from "node:fs/promises";
import { FileBlob, SpreadsheetFile } from "@oai/artifact-tool";

import os from "node:os";
import path from "node:path";
import { fileURLToPath } from "node:url";

const HERE = path.dirname(fileURLToPath(import.meta.url));
const WORKSPACE = path.resolve(HERE, "..", "..");

const workbookPath = process.env.OUTLINE_WORKBOOK ?? path.join(os.homedir(), "Documents", "outline lookup.xlsx");
const mappingPath = path.join(HERE, "row_mappings.json");

const mappings = JSON.parse(await fs.readFile(mappingPath, "utf8"));
if (mappings.length !== 3737) {
  throw new Error(`Expected 3737 mappings, found ${mappings.length}`);
}

const input = await FileBlob.load(workbookPath);
const workbook = await SpreadsheetFile.importXlsx(input);
const sheet = workbook.worksheets.getItem("Sheet1");
const values = sheet.getRange("A1:B3738").values;

if (values[0][0] !== "Status" || values[0][1] !== "Outline Code") {
  throw new Error(`Unexpected headers: ${JSON.stringify(values[0])}`);
}

if (values.length < mappings.length + 1) {
  throw new Error(
    `Workbook has ${values.length - 1} data row(s); expected at least ${mappings.length} to match the mapping file.`,
  );
}

for (let i = 0; i < mappings.length; i++) {
  const excelRow = i + 2;
  const status = values[i + 1][0] ?? "";
  if (status !== mappings[i].status || mappings[i].excelRow !== excelRow) {
    throw new Error(`Row mismatch at Excel row ${excelRow}: workbook=${JSON.stringify(status)} mapping=${JSON.stringify(mappings[i].status)}`);
  }
}

const outputValues = mappings.map((m) => [String(m.selectedCode)]);
const codeRange = sheet.getRange("B2:B3738");
codeRange.values = outputValues;
codeRange.format.numberFormat = "@";

const stamp = new Date().toISOString().replace(/[:.]/g, "-");
const backupPath = workbookPath.replace(/\.xlsx$/i, `.backup-${stamp}.xlsx`);
await fs.copyFile(workbookPath, backupPath);

const exported = await SpreadsheetFile.exportXlsx(workbook);
await exported.save(workbookPath);

console.log(JSON.stringify({
  wrote: workbookPath,
  backup: backupPath,
  rowsWritten: outputValues.length,
  placeholders: mappings.filter((m) => m.selectedCode === "00000000").map((m) => ({ excelRow: m.excelRow, status: m.status, note: m.note })),
}, null, 2));
