## Description: <br>
Production-grade Playwright testing toolkit for AI coding agents that generates tests, fixes flaky failures, migrates Cypress and Selenium suites, syncs with TestRail, runs BrowserStack workflows, and reports results. <br>

This skill is ready for commercial/non-commercial use. <br>

## Publisher: <br>
[alirezarezvani](https://clawhub.ai/user/alirezarezvani) <br>

### License/Terms of Use: <br>
MIT-0 <br>


## Use Case: <br>
Developers and QA engineers use this skill to create, review, debug, migrate, and report Playwright end-to-end test suites, including optional TestRail and BrowserStack workflows. <br>

### Deployment Geography for Use: <br>
Global <br>

## Known Risks and Mitigations: <br>
Risk: The skill can create, edit, run, and report on Playwright tests, which may change project files or exercise application workflows. <br>
Mitigation: Review generated tests and commands before execution, run them against local or staging environments, and avoid state-changing templates against production data. <br>
Risk: Optional TestRail and BrowserStack workflows can share test data externally or modify third-party testing records. <br>
Mitigation: Use scoped service credentials, prefer test or staging projects, and require explicit confirmation before external writes, posts, or result syncs. <br>


## Reference(s): <br>
- [Playwright Pro README](README.md) <br>
- [Golden Rules](reference/golden-rules.md) <br>
- [Locator Strategies](reference/locators.md) <br>
- [Assertion Patterns](reference/assertions.md) <br>
- [Fixture Architecture](reference/fixtures.md) <br>
- [Common Pitfalls](reference/common-pitfalls.md) <br>
- [Flaky Test Diagnosis](reference/flaky-tests.md) <br>
- [Template Index](templates/README.md) <br>
- [Cypress Migration Mapping](skills/migrate/cypress-mapping.md) <br>
- [Selenium Migration Mapping](skills/migrate/selenium-mapping.md) <br>


## Skill Output: <br>
**Output Type(s):** [Markdown, Code, Shell commands, Configuration, Guidance, API Calls] <br>
**Output Format:** [Markdown with inline code, shell commands, generated test files, configuration snippets, and integration summaries] <br>
**Output Parameters:** [1D] <br>
**Other Properties Related to Output:** [May create or modify Playwright tests, configuration, CI snippets, reports, and optional TestRail or BrowserStack records when the agent applies its guidance.] <br>

## Skill Version(s): <br>
2.1.1 (source: server release metadata) <br>

## Ethical Considerations: <br>
Users should evaluate whether this skill is appropriate for their environment, review any generated or modified files before relying on them, and apply their organization's safety, security, and compliance requirements before deployment. <br>
