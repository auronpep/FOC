#!/usr/bin/env node

const childProcess = require("child_process");
const fs = require("fs");
const mysql = require("/home/u211961595/domains/barmatrix.app/nodejs/node_modules/mysql2/promise");

const APP_ROOT = "/home/u211961595/domains/barmatrix.app/nodejs";

function usage() {
  throw new Error(
    "Usage: remote_cq_update_runner.cjs <rollback|apply|verify> [sqlPath] <expectedPath> [outputPath]",
  );
}

function findAppPid() {
  const user = process.env.USER || "";
  try {
    const output = childProcess.execFileSync(
      "pgrep",
      ["-u", user, "-f", `lsnode:${APP_ROOT}`],
      { encoding: "utf8" },
    );
    const pid = output.trim().split(/\s+/).filter(Boolean)[0];
    if (pid) return pid;
  } catch {
    // Fall through to ps parsing.
  }

  const output = childProcess.execFileSync("ps", ["-u", user, "-o", "pid=,args="], {
    encoding: "utf8",
  });
  const line = output.split(/\r?\n/).find((entry) => entry.includes(`lsnode:${APP_ROOT}`));
  if (!line) {
    throw new Error(`Could not find running app process for ${APP_ROOT}`);
  }
  return line.trim().split(/\s+/)[0];
}

function parseEnvText(text) {
  const parsed = {};
  for (const rawLine of text.split(/\r?\n/)) {
    const line = rawLine.trim();
    if (!line || line.startsWith("#")) continue;
    const match = /^([A-Za-z_][A-Za-z0-9_]*)=(.*)$/.exec(line);
    if (!match) continue;
    let value = match[2].trim();
    if (
      (value.startsWith('"') && value.endsWith('"')) ||
      (value.startsWith("'") && value.endsWith("'"))
    ) {
      value = value.slice(1, -1);
    }
    parsed[match[1]] = value;
  }
  return parsed;
}

function readAppEnv() {
  const pid = findAppPid();
  const raw = fs.readFileSync(`/proc/${pid}/environ`, "utf8");
  const env = {};
  for (const entry of raw.split("\0")) {
    if (!entry) continue;
    const equalsAt = entry.indexOf("=");
    if (equalsAt === -1) continue;
    env[entry.slice(0, equalsAt)] = entry.slice(equalsAt + 1);
  }

  const envFiles = [
    env.BARMATRIX_ENV_FILE,
    "/home/u211961595/secrets/barmatrix-api.env",
    `${process.env.HOME || "/home/u211961595"}/secrets/barmatrix-api.env`,
  ].filter(Boolean);
  for (const envFile of envFiles) {
    if (fs.existsSync(envFile)) {
      const fromFile = parseEnvText(fs.readFileSync(envFile, "utf8"));
      for (const [key, value] of Object.entries(fromFile)) {
        if (!env[key]) env[key] = value;
      }
    }
  }

  const missing = ["DATABASE_HOST", "DATABASE_NAME", "DATABASE_USER"].filter(
    (key) => !env[key],
  );
  if (!env.BARMATRIX_DB_KEY && !env.DATABASE_PASSWORD) {
    missing.push("BARMATRIX_DB_KEY or DATABASE_PASSWORD");
  }
  if (missing.length) {
    throw new Error(`Missing app DB env: ${missing.join(", ")}`);
  }
  return { pid, env };
}

async function connect() {
  const { pid, env } = readAppEnv();
  const connection = await mysql.createConnection({
    host: env.DATABASE_HOST,
    port: Number(env.DATABASE_PORT || 3306),
    user: env.DATABASE_USER,
    password: env.BARMATRIX_DB_KEY || env.DATABASE_PASSWORD,
    database: env.DATABASE_NAME,
    multipleStatements: true,
    charset: "utf8mb4",
  });
  return {
    connection,
    envSummary: {
      appPid: pid,
      database: env.DATABASE_NAME,
      host: env.DATABASE_HOST,
      port: Number(env.DATABASE_PORT || 3306),
    },
  };
}

async function tableCounts(connection, ids) {
  const [baseRows] = await connection.query(`
    SELECT
      (SELECT COUNT(*) FROM questions) AS questions,
      (SELECT COUNT(*) FROM answer_choices) AS answer_choices,
      (SELECT COUNT(*) FROM question_tags) AS question_tags
  `);
  const counts = { ...baseRows[0] };
  if (ids.length) {
    const placeholders = ids.map(() => "?").join(",");
    const [targetRows] = await connection.query(
      `
        SELECT
          (SELECT COUNT(*) FROM questions WHERE question_id IN (${placeholders})) AS target_questions,
          (SELECT COUNT(*) FROM answer_choices WHERE question_id IN (${placeholders})) AS target_choices
      `,
      [...ids, ...ids],
    );
    counts.target_questions = targetRows[0].target_questions;
    counts.target_choices = targetRows[0].target_choices;
  }
  return counts;
}

function normalizeHash(value) {
  return String(value || "").toLowerCase();
}

async function verifyExpected(connection, expected) {
  const ids = expected.map((entry) => entry.question_id);
  const placeholders = ids.map(() => "?").join(",");
  const [questionRows] = await connection.query(
    `
      SELECT
        question_id,
        external_id,
        SHA2(COALESCE(fact_pattern, ''), 256) AS fact_pattern_sha256,
        SHA2(COALESCE(question_stem, ''), 256) AS question_stem_sha256,
        SHA2(COALESCE(call_of_question, ''), 256) AS call_sha256,
        LEFT(question_stem, 180) AS question_stem_sample
      FROM questions
      WHERE question_id IN (${placeholders})
    `,
    ids,
  );
  const [choiceRows] = await connection.query(
    `
      SELECT
        question_id,
        GROUP_CONCAT(
          CONCAT(letter, ':', SHA2(COALESCE(choice_text, ''), 256), ':', IF(is_correct = 1, '1', '0'))
          ORDER BY letter
          SEPARATOR '|'
        ) AS choice_hashes,
        COUNT(*) AS choice_count
      FROM answer_choices
      WHERE question_id IN (${placeholders})
      GROUP BY question_id
    `,
    ids,
  );

  const questions = new Map(questionRows.map((row) => [row.question_id, row]));
  const choices = new Map(choiceRows.map((row) => [row.question_id, row]));
  const failures = [];

  for (const expectedRow of expected) {
    const actualQuestion = questions.get(expectedRow.question_id);
    const actualChoices = choices.get(expectedRow.question_id);
    if (!actualQuestion) {
      failures.push({ fileName: expectedRow.fileName, question_id: expectedRow.question_id, issue: "missing_question" });
      continue;
    }
    const mismatches = [];
    for (const field of ["external_id", "fact_pattern_sha256", "question_stem_sha256", "call_sha256"]) {
      const actual = field.endsWith("_sha256")
        ? normalizeHash(actualQuestion[field])
        : String(actualQuestion[field] || "");
      const wanted = field.endsWith("_sha256")
        ? normalizeHash(expectedRow[field])
        : String(expectedRow[field] || "");
      if (actual !== wanted) mismatches.push(field);
    }
    if (String(actualChoices?.choice_hashes || "").toLowerCase() !== String(expectedRow.choice_hashes || "").toLowerCase()) {
      mismatches.push("choice_hashes");
    }
    if (mismatches.length) {
      failures.push({
        fileName: expectedRow.fileName,
        question_id: expectedRow.question_id,
        mismatches,
        question_stem_sample: actualQuestion.question_stem_sample,
      });
    }
  }

  return {
    checked: expected.length,
    matched: expected.length - failures.length,
    failures,
    samples: questionRows.slice(0, 5).map((row) => ({
      question_id: row.question_id,
      external_id: row.external_id,
      question_stem_sample: row.question_stem_sample,
    })),
  };
}

async function main() {
  const mode = process.argv[2];
  if (!["rollback", "apply", "verify"].includes(mode)) usage();

  const sqlPath = mode === "verify" ? undefined : process.argv[3];
  const expectedPath = mode === "verify" ? process.argv[3] : process.argv[4];
  const outputPath = mode === "verify" ? process.argv[4] : process.argv[5];
  if (!expectedPath) usage();

  const expected = JSON.parse(fs.readFileSync(expectedPath, "utf8"));
  const ids = expected.map((entry) => entry.question_id);
  const { connection, envSummary } = await connect();
  try {
    const before = await tableCounts(connection, ids);
    let after = before;
    if (mode === "rollback" || mode === "apply") {
      if (!sqlPath) usage();
      const sql = fs.readFileSync(sqlPath, "utf8");
      await connection.query(sql);
      after = await tableCounts(connection, ids);
    }

    const verification =
      mode === "verify" || mode === "apply" ? await verifyExpected(connection, expected) : undefined;

    const result = {
      mode,
      ok: !verification || verification.failures.length === 0,
      env: envSummary,
      targetCount: ids.length,
      countsStable: JSON.stringify(before) === JSON.stringify(after),
      before,
      after,
      verification,
    };

    const json = JSON.stringify(result, null, 2);
    if (outputPath) fs.writeFileSync(outputPath, `${json}\n`);
    console.log(json);
    if (!result.ok) process.exitCode = 1;
  } finally {
    await connection.end();
  }
}

main().catch((error) => {
  console.error(JSON.stringify({ ok: false, error: error.message }, null, 2));
  process.exit(1);
});
