const fs = require("fs");
const os = require("os");
const path = require("path");

function fail(message, exitCode = 1) {
  console.error(message);
  process.exit(exitCode);
}

function takeOption(args, name) {
  const index = args.indexOf(name);
  if (index === -1) {
    return null;
  }
  if (index + 1 >= args.length) {
    fail(`Missing value for ${name}`);
  }
  const value = args[index + 1];
  args.splice(index, 2);
  return value;
}

function requireFirst(paths) {
  const errors = [];
  for (const candidate of paths) {
    if (!candidate) {
      continue;
    }
    try {
      return require(candidate);
    } catch (error) {
      errors.push(`${candidate}: ${error.message}`);
    }
  }
  fail(`Unable to load node-pty. Tried:\n${errors.join("\n")}`);
}

const args = process.argv.slice(2);
const separator = args.indexOf("--");
if (separator === -1) {
  fail("Usage: node invoke-codex-pty.js --transcript <path> --cwd <dir> -- <codex exec args...>");
}

const wrapperArgs = args.slice(0, separator);
const codexArgs = args.slice(separator + 1);
const transcriptPath = takeOption(wrapperArgs, "--transcript");
const cwd = takeOption(wrapperArgs, "--cwd") || process.cwd();

if (wrapperArgs.length > 0) {
  fail(`Unknown wrapper arguments: ${wrapperArgs.join(" ")}`);
}
if (!transcriptPath) {
  fail("Missing --transcript <path>");
}
if (codexArgs.length === 0) {
  fail("Missing Codex arguments after --");
}

const appData = process.env.APPDATA || path.join(os.homedir(), "AppData", "Roaming");
const npmModules = path.join(appData, "npm", "node_modules");
const pty = requireFirst([
  process.env.NODE_PTY_MODULE,
  path.join(npmModules, "openclaw", "node_modules", "@lydell", "node-pty"),
  path.join(npmModules, "@google", "gemini-cli", "node_modules", "node-pty"),
  path.join(npmModules, "@google", "gemini-cli", "node_modules", "@lydell", "node-pty"),
]);

const codexJs = process.env.CODEX_JS || path.join(npmModules, "@openai", "codex", "bin", "codex.js");
if (!fs.existsSync(codexJs)) {
  fail(`Codex launcher not found: ${codexJs}`);
}

fs.mkdirSync(path.dirname(transcriptPath), { recursive: true });
const stream = fs.createWriteStream(transcriptPath, { flags: "a" });
stream.on("error", (error) => {
  // Without a listener a stream error becomes an uncaughtException and kills
  // the wrapper mid-session. Losing the transcript should not end the run.
  process.stderr.write(`Transcript write failed (${transcriptPath}): ${error.message}
`);
});

const env = { ...process.env, TERM: process.env.TERM || "xterm-256color" };
let term;
try {
  term = pty.spawn(process.execPath, [codexJs, ...codexArgs], {
    name: "xterm-256color",
    cols: Number(process.env.CODEX_PTY_COLS || 120),
    rows: Number(process.env.CODEX_PTY_ROWS || 40),
    cwd,
    env,
  });
} catch (error) {
  stream.end();
  fail(`Failed to spawn Codex PTY: ${error.message}`);
}

term.onData((data) => {
  stream.write(data);
});

term.onExit(({ exitCode, signal }) => {
  if (signal) {
    stream.write(`\nCodex PTY exited from signal ${signal}\n`);
  }
  stream.end(() => {
    process.exit(exitCode ?? (signal ? 1 : 0));
  });
});
