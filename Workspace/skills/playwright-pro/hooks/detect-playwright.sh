#!/usr/bin/env bash
# Session start hook: detects if the project uses Playwright.
# Outputs context hint for Claude if playwright.config exists.

set -euo pipefail

# Check for Playwright config in current directory or common locations
PW_CONFIG=""
for config in playwright.config.ts playwright.config.js playwright.config.mjs; do
    if [[ -f "$config" ]]; then
        PW_CONFIG="$config"
        break
    fi
done

if [[ -z "$PW_CONFIG" ]]; then
    exit 0
fi

# Count existing test files
# grep exits 1 on no matches, which under `set -euo pipefail` killed this
# hook whenever a project had a config but no test files yet. Let find do
# the exclusion instead; wc always exits 0.
TEST_COUNT=$(find . \( -name "*.spec.ts" -o -name "*.spec.js" -o -name "*.test.ts" -o -name "*.test.js" \) -not -path "*/node_modules/*" 2>/dev/null | wc -l | tr -d ' ')

echo "🎭 Playwright detected ($PW_CONFIG) — $TEST_COUNT test files found. Use /pw: commands for testing workflows."
