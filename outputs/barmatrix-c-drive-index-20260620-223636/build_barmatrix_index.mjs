import fs from "node:fs/promises";
import { createReadStream } from "node:fs";
import path from "node:path";
import readline from "node:readline";
import { SpreadsheetFile, Workbook } from "@oai/artifact-tool";

const outputDir = "C:\\FOC\\outputs\\barmatrix-c-drive-index-20260620-223636";
const outputXlsx = path.join(outputDir, "barmatrix_c_drive_index.xlsx");

const workbook = Workbook.create();

const intColumns = new Set([
  "files",
  "folder_rows",
  "size_bytes",
  "errors",
  "skipped_reparse_or_excluded",
  "direct_file_count",
  "direct_folder_count",
  "direct_size_bytes",
  "seconds",
  "size_bytes",
]);

function parseValue(header, value) {
  if (value === "") return "";
  if (intColumns.has(header)) return Number(value);
  return value;
}

function colName(index) {
  let n = index + 1;
  let s = "";
  while (n > 0) {
    const r = (n - 1) % 26;
    s = String.fromCharCode(65 + r) + s;
    n = Math.floor((n - 1) / 26);
  }
  return s;
}

function setHeaderStyle(sheet, cols) {
  const last = colName(cols - 1);
  sheet.getRange(`A1:${last}1`).format = {
    fill: "#1F4E78",
    font: { bold: true, color: "#FFFFFF" },
    wrapText: true,
  };
  sheet.freezePanes.freezeRows(1);
}

function setColumnWidths(sheet, widths) {
  widths.forEach((width, idx) => {
    sheet.getRange(`${colName(idx)}1`).format.columnWidth = width;
  });
}

async function readTsvRows(tsvPath) {
  const text = await fs.readFile(tsvPath, "utf8");
  const lines = text.trimEnd().split(/\r?\n/);
  if (lines.length === 0 || lines[0] === "") return { headers: [], rows: [] };
  const headers = lines[0].split("\t");
  const rows = lines.slice(1).map((line) => {
    const fields = line.split("\t");
    return headers.map((header, idx) => parseValue(header, fields[idx] ?? ""));
  });
  return { headers, rows };
}

async function writeTsvSheet(tsvPath, sheetName, widths) {
  console.log(JSON.stringify({ phase: "sheet-start", sheetName, tsvPath }));
  const sheet = workbook.worksheets.add(sheetName);
  const stream = createReadStream(tsvPath, { encoding: "utf8" });
  const rl = readline.createInterface({ input: stream, crlfDelay: Infinity });
  let headers = null;
  let rowIndex = 0;
  let batch = [];

  function flush() {
    if (batch.length === 0) return;
    sheet.getRangeByIndexes(rowIndex, 0, batch.length, headers.length).values = batch;
    rowIndex += batch.length;
    batch = [];
  }

  for await (const line of rl) {
    if (headers === null) {
      headers = line.split("\t");
      batch.push(headers);
      continue;
    }
    const fields = line.split("\t");
    batch.push(headers.map((header, idx) => parseValue(header, fields[idx] ?? "")));
    if (batch.length >= 50000) flush();
  }
  flush();

  if (!headers) return { sheet, rows: 0, cols: 0 };
  setHeaderStyle(sheet, headers.length);
  if (widths) setColumnWidths(sheet, widths);
  console.log(JSON.stringify({ phase: "sheet-done", sheetName, rows: rowIndex - 1 }));
  return { sheet, rows: rowIndex - 1, cols: headers.length };
}

const scope = await readTsvRows(path.join(outputDir, "scope.tsv"));
const rootSummary = await readTsvRows(path.join(outputDir, "root_summary.tsv"));
const totals = rootSummary.rows.reduce(
  (acc, row) => {
    const [root, reason, files, folderRows, sizeBytes, errors, skipped, seconds] = row;
    acc.files += files || 0;
    acc.folderRows += folderRows || 0;
    acc.sizeBytes += sizeBytes || 0;
    acc.errors += errors || 0;
    acc.skipped += skipped || 0;
    acc.seconds += seconds || 0;
    return acc;
  },
  { files: 0, folderRows: 0, sizeBytes: 0, errors: 0, skipped: 0, seconds: 0 },
);

const summary = workbook.worksheets.add("Summary");
console.log(JSON.stringify({ phase: "summary-start" }));
summary.getRange("A1:B12").values = [
  ["BarMatrix C Drive Folder/File Index", ""],
  ["Scan mode", "Read-only filesystem enumeration"],
  ["Indexed roots", rootSummary.rows.length],
  ["Folder rows", totals.folderRows],
  ["File rows", totals.files],
  ["Total size bytes", totals.sizeBytes],
  ["Total size GB", Number((totals.sizeBytes / 1024 ** 3).toFixed(2))],
  ["Enumeration errors", totals.errors],
  ["Skipped reparse/excluded paths", totals.skipped],
  ["Scan seconds", Number(totals.seconds.toFixed(2))],
  ["Output workbook", outputXlsx],
  ["Note", "Reparse points are listed but not followed; the workbook output folder was excluded from the C:\\FOC scan."],
];
summary.getRange("A1:B1").merge();
summary.getRange("A1:B1").format = {
  fill: "#17365D",
  font: { bold: true, color: "#FFFFFF", size: 14 },
};
summary.getRange("A2:A12").format = { font: { bold: true }, fill: "#D9EAF7" };
summary.getRange("B3:B10").format.numberFormat = "#,##0";
summary.getRange("B7").format.numberFormat = "#,##0.00";
summary.getRange("A1:B12").format.borders = { preset: "outside", style: "thin", color: "#9EADBD" };
setColumnWidths(summary, [32, 120]);
console.log(JSON.stringify({ phase: "summary-done" }));

await writeTsvSheet(path.join(outputDir, "scope.tsv"), "Scope", [42, 44, 12]);
await writeTsvSheet(path.join(outputDir, "root_summary.tsv"), "Root Summary", [42, 42, 12, 14, 16, 10, 18, 10]);
await writeTsvSheet(path.join(outputDir, "folders.tsv"), "Folders", [42, 86, 72, 32, 16, 17, 17, 28, 28, 30, 26, 16, 70]);

const manifest = JSON.parse(await fs.readFile(path.join(outputDir, "scan_manifest.json"), "utf8"));
let partNumber = 1;
for (const partPath of manifest.FileParts ?? []) {
  await writeTsvSheet(partPath, `Files ${String(partNumber).padStart(3, "0")}`, [42, 100, 86, 44, 14, 14, 28, 28, 30]);
  partNumber += 1;
}

await writeTsvSheet(path.join(outputDir, "errors.tsv"), "Errors", [42, 92, 26, 90]);

const inspect = await workbook.inspect({
  kind: "sheet",
  include: "name",
  maxChars: 4000,
});
console.log(inspect.ndjson);
console.log(JSON.stringify({ phase: "render-start" }));

const preview = await workbook.render({
  sheetName: "Summary",
  range: "A1:B12",
  scale: 1,
  format: "png",
});
await fs.writeFile(path.join(outputDir, "summary_preview.png"), new Uint8Array(await preview.arrayBuffer()));
console.log(JSON.stringify({ phase: "render-done" }));

console.log(JSON.stringify({ phase: "export-start" }));
const xlsx = await SpreadsheetFile.exportXlsx(workbook);
await xlsx.save(outputXlsx);
console.log(JSON.stringify({ outputXlsx, totals, fileSheets: partNumber - 1 }));
