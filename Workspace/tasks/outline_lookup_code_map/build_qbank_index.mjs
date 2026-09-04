import fs from "node:fs/promises";
import path from "node:path";

const qbankDir = "C:/FOC/Workspace/QBank";
const outputDir = "C:/FOC/Workspace/tasks/outline_lookup_code_map";

async function walk(dir) {
  const out = [];
  for (const entry of await fs.readdir(dir, { withFileTypes: true })) {
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) out.push(...await walk(full));
    else if (entry.isFile() && entry.name.endsWith(".md")) out.push(full);
  }
  return out;
}

function field(text, name) {
  const re = new RegExp(`^${name}:\\s*(.*)$`, "mi");
  const m = text.match(re);
  return m ? m[1].trim() : "";
}

const files = await walk(qbankDir);
const byInternalId = {};
const byQuestion = {};

for (const file of files) {
  const text = await fs.readFile(file, "utf8");
  const internalId = field(text, "internal_id");
  if (!internalId) continue;
  const qid = field(text, "BARMATRIX Q#") || path.basename(file, ".md");
  const row = {
    file,
    qid,
    internal_id: internalId,
    subject_display: field(text, "subject_display"),
    topic: field(text, "topic"),
    subtopic: field(text, "subtopic"),
    difficulty: field(text, "difficulty"),
    L2: field(text, "L2"),
    call: field(text, "Call of Question"),
    correct_answer: field(text, "Correct Answer"),
    lb_rule_reference: field(text, "lb_rule_reference"),
  };
  byInternalId[internalId] = row;
  byQuestion[qid] = row;
}

await fs.writeFile(`${outputDir}/qbank_index.json`, JSON.stringify({ count: Object.keys(byInternalId).length, byInternalId, byQuestion }, null, 2));
// `field()` returns "" when a name is absent, so a QBank layout change can
// silently empty a column. Report coverage rather than failing quietly.
const indexed = Object.values(byInternalId);
const fieldCoverage = {};
for (const key of Object.keys(indexed[0] ?? {})) {
  if (key === "file") continue;
  fieldCoverage[key] = indexed.filter((row) => String(row[key] ?? "").length > 0).length;
}
const emptyFields = Object.entries(fieldCoverage).filter(([, n]) => n === 0).map(([k]) => k);
if (emptyFields.length) {
  console.warn(`WARNING: no QBank file supplied a value for: ${emptyFields.join(', ')} -- these columns are empty in the generated index.`);
}

console.log(JSON.stringify({
  files: files.length,
  indexedInternalIds: indexed.length,
  fieldCoverage,
  samples: indexed.slice(0, 5),
}, null, 2));
