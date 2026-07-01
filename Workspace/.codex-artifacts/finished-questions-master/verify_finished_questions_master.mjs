import { FileBlob, SpreadsheetFile } from "@oai/artifact-tool";

const workbookPath = "C:\\FOC\\Workspace\\outputs\\finished-questions-master\\finished_questions_master.xlsx";
const input = await FileBlob.load(workbookPath);
const workbook = await SpreadsheetFile.importXlsx(input);

for (const check of [
  { kind: "sheet", include: "id,name", maxChars: 3000 },
  { kind: "table", range: "Summary!A1:C20", include: "values", tableMaxRows: 20, tableMaxCols: 3, maxChars: 5000 },
  { kind: "table", range: "QuestionQA!A1:Q6", include: "values", tableMaxRows: 6, tableMaxCols: 17, maxChars: 12000 },
  {
    kind: "match",
    searchTerm: "CQ22294.md|CQ22729_updated.md|CQ14032.md",
    options: { useRegex: true, maxResults: 12 },
    maxChars: 12000,
  },
]) {
  const result = await workbook.inspect(check);
  console.log(result.ndjson);
}
