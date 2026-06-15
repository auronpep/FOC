import fs from "node:fs/promises";
import { FileBlob, SpreadsheetFile } from "@oai/artifact-tool";

const workbookPath = "C:/Users/JesusLovesMe/Documents/outline lookup.xlsx";
const outlineCatalogPath = "C:/FOC/Workspace/tasks/outline_lookup_code_map/outline_catalog.json";
const mappingPath = "C:/FOC/Workspace/tasks/outline_lookup_code_map/row_mappings.json";
const outputDir = "C:/FOC/Workspace/tasks/outline_lookup_code_map";

const mappings = JSON.parse(await fs.readFile(mappingPath, "utf8"));
const outlineRows = JSON.parse(await fs.readFile(outlineCatalogPath, "utf8"));
const validCodes = new Set(outlineRows.map((r) => r.code));

const input = await FileBlob.load(workbookPath);
const workbook = await SpreadsheetFile.importXlsx(input);
const sheet = workbook.worksheets.getItem("Sheet1");
const values = sheet.getRange("A1:B3738").values;

const mismatches = [];
const invalidCodes = [];
let placeholders = 0;
let nonblankCodes = 0;
const uniqueCodes = new Set();

for (let i = 0; i < mappings.length; i++) {
  const excelRow = i + 2;
  const status = values[i + 1][0] ?? "";
  const code = String(values[i + 1][1] ?? "");
  const expected = String(mappings[i].selectedCode);
  if (status !== mappings[i].status || code !== expected) {
    mismatches.push({ excelRow, status, code, expected, expectedStatus: mappings[i].status });
  }
  if (code) {
    nonblankCodes += 1;
    uniqueCodes.add(code);
  }
  if (code === "00000000") {
    placeholders += 1;
  } else if (!validCodes.has(code)) {
    invalidCodes.push({ excelRow, status, code });
  }
}

const inspect = await workbook.inspect({
  kind: "table",
  range: "Sheet1!A1:B15",
  include: "values,formulas",
  tableMaxRows: 15,
  tableMaxCols: 2,
});
await fs.writeFile(`${outputDir}/verify_top_rows.ndjson`, inspect.ndjson);

const preview = await workbook.render({
  sheetName: "Sheet1",
  range: "A1:B40",
  scale: 1,
  format: "png",
});
await fs.writeFile(`${outputDir}/verify_top_rows.png`, new Uint8Array(await preview.arrayBuffer()));

const summary = {
  workbookPath,
  dataRows: values.length - 1,
  mappingRows: mappings.length,
  nonblankCodes,
  placeholders,
  placeholderRows: mappings.filter((m) => m.selectedCode === "00000000").map((m) => ({ excelRow: m.excelRow, status: m.status })),
  uniqueCodes: uniqueCodes.size,
  mismatches: mismatches.length,
  invalidCodes: invalidCodes.length,
  invalidCodeSamples: invalidCodes.slice(0, 10),
  sampleRows: [2, 98, 323, 941, 3738].map((row) => ({
    excelRow: row,
    status: values[row - 1]?.[0] ?? "",
    outlineCode: values[row - 1]?.[1] ?? "",
  })),
};

await fs.writeFile(`${outputDir}/verify_summary.json`, JSON.stringify(summary, null, 2));
console.log(JSON.stringify(summary, null, 2));
process.exit(0);
