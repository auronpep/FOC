import fs from "node:fs/promises";

import os from "node:os";
import path from "node:path";
import { fileURLToPath } from "node:url";

const HERE = path.dirname(fileURLToPath(import.meta.url));
const WORKSPACE = path.resolve(HERE, "..", "..");

const qbankDir = path.join(WORKSPACE, "QBank");
const outputDir = HERE;

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
    // Repo-relative POSIX path: an absolute one bakes in the machine that
    // generated the index and makes every regeneration a full-file diff.
    file: path.relative(WORKSPACE, file).split(path.sep).join('/'),
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
console.log(JSON.stringify({
  files: files.length,
  indexedInternalIds: Object.keys(byInternalId).length,
  samples: Object.values(byInternalId).slice(0, 5),
}, null, 2));
