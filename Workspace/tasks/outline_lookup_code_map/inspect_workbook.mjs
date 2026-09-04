import { FileBlob, SpreadsheetFile } from "@oai/artifact-tool";

import os from "node:os";
import path from "node:path";
import { fileURLToPath } from "node:url";

const HERE = path.dirname(fileURLToPath(import.meta.url));
const WORKSPACE = path.resolve(HERE, "..", "..");

const inputPath = process.env.OUTLINE_WORKBOOK ?? path.join(os.homedir(), "Documents", "outline lookup.xlsx");

const input = await FileBlob.load(inputPath);
const workbook = await SpreadsheetFile.importXlsx(input);

const sheetInfo = await workbook.inspect({
  kind: "workbook,sheet,table",
  maxChars: 12000,
  tableMaxRows: 12,
  tableMaxCols: 20,
  tableMaxCellChars: 160,
});

console.log(sheetInfo.ndjson);
