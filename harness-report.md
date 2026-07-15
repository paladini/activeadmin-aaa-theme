# Harness Score Report

**Maturity level:** L0 · Unharnessed
**Score:** 21/108 (19%)

## Dimensions

| Dimension | Score | % |
|---|---|---|
| Context & Guides | 2/20 | 10% |
| Skills & Commands | 0/17 | 0% |
| Hooks & Guardrails | 0/14 | 0% |
| Sensors & Feedback | 2/20 | 10% |
| CI Feedback | 0/14 | 0% |
| Hygiene & Safety | 17/23 | 74% |

## Checks

| | Check | Points | Evidence |
|---|---|---|---|
| ❌ | [CTX-01](https://paladini.github.io/harness-score/guide/measure-and-improve#ctx-01) Agent context file present (AGENTS.md) | 0/4 | No AGENTS.md (or CLAUDE.md) at repository root. |
| ❌ | [CTX-02](https://paladini.github.io/harness-score/guide/measure-and-improve#ctx-02) Agent context file is substantive | 0/3 | No agent context file to evaluate. |
| ❌ | [CTX-03](https://paladini.github.io/harness-score/guide/measure-and-improve#ctx-03) Cursor rules directory in use | 0/4 | No .mdc files under .cursor/rules/. |
| ❌ | [CTX-04](https://paladini.github.io/harness-score/guide/measure-and-improve#ctx-04) Rules have valid frontmatter | 0/3 | No rules found to validate. |
| ❌ | [CTX-05](https://paladini.github.io/harness-score/guide/measure-and-improve#ctx-05) Rules are scoped, not all always-on | 0/2 | No rules found. |
| ❌ | [CTX-06](https://paladini.github.io/harness-score/guide/measure-and-improve#ctx-06) No bloated rules (≤500 lines each) | 0/2 | No rules found. |
| ✅ | [CTX-07](https://paladini.github.io/harness-score/guide/measure-and-improve#ctx-07) README present | 1/1 | README.md found at repository root. |
| ✅ | [CTX-08](https://paladini.github.io/harness-score/guide/measure-and-improve#ctx-08) No legacy .cursorrules file | 1/1 | No deprecated .cursorrules file. |
| ❌ | [SKL-01](https://paladini.github.io/harness-score/guide/measure-and-improve#skl-01) At least one agent skill defined | 0/4 | No SKILL.md under .cursor/skills/ or .agents/skills/. |
| ❌ | [SKL-02](https://paladini.github.io/harness-score/guide/measure-and-improve#skl-02) Skills declare name and description | 0/3 | No skills found to validate. |
| ❌ | [SKL-03](https://paladini.github.io/harness-score/guide/measure-and-improve#skl-03) Slash commands defined | 0/3 | No markdown files under .cursor/commands/. |
| ❌ | [SKL-04](https://paladini.github.io/harness-score/guide/measure-and-improve#skl-04) Skill descriptions are trigger-worthy | 0/2 | No skills found. |
| ❌ | [AGT-01](https://paladini.github.io/harness-score/guide/measure-and-improve#agt-01) Custom subagent defined | 0/3 | No markdown files under .cursor/agents/. |
| ❌ | [AGT-02](https://paladini.github.io/harness-score/guide/measure-and-improve#agt-02) Subagents declare name and description | 0/2 | No subagents found to validate. |
| ❌ | [HKS-01](https://paladini.github.io/harness-score/guide/measure-and-improve#hks-01) Hooks configuration present and valid JSON | 0/4 | No .cursor/hooks.json in repository. |
| ❌ | [HKS-02](https://paladini.github.io/harness-score/guide/measure-and-improve#hks-02) Hooks use known events and a version field | 0/2 | No parseable hooks configuration. |
| ❌ | [HKS-03](https://paladini.github.io/harness-score/guide/measure-and-improve#hks-03) Gate hook guards risky operations | 0/4 | No parseable hooks configuration. |
| ❌ | [HKS-04](https://paladini.github.io/harness-score/guide/measure-and-improve#hks-04) Feedback hook observes agent output | 0/2 | No parseable hooks configuration. |
| ❌ | [HKS-05](https://paladini.github.io/harness-score/guide/measure-and-improve#hks-05) Hook scripts exist in the repository | 0/2 | No parseable hooks configuration. |
| ❌ | [SNS-01](https://paladini.github.io/harness-score/guide/measure-and-improve#sns-01) Test runner configured | 0/6 | No test runner configuration or test script detected. |
| ❌ | [SNS-02](https://paladini.github.io/harness-score/guide/measure-and-improve#sns-02) Linter configured | 0/5 | No linter configuration detected. |
| ❌ | [SNS-03](https://paladini.github.io/harness-score/guide/measure-and-improve#sns-03) Type checking in place | 0/4 | No type-checker configuration for detected ecosystem(s): node, ruby. |
| ❌ | [SNS-04](https://paladini.github.io/harness-score/guide/measure-and-improve#sns-04) Formatter configured | 0/3 | No formatter configuration detected. |
| ✅ | [SNS-05](https://paladini.github.io/harness-score/guide/measure-and-improve#sns-05) Test files actually exist | 2/2 | Found 2 test file(s), e.g. spec/dummy/test/test_helper.rb. |
| ❌ | [CI-01](https://paladini.github.io/harness-score/guide/measure-and-improve#ci-01) CI pipeline configured | 0/4 | No CI configuration detected (GitHub Actions, GitLab CI, CircleCI…). |
| ❌ | [CI-02](https://paladini.github.io/harness-score/guide/measure-and-improve#ci-02) CI runs the test suite | 0/4 | No CI configuration to inspect. |
| ❌ | [CI-03](https://paladini.github.io/harness-score/guide/measure-and-improve#ci-03) CI runs lint / type checks | 0/3 | No CI configuration to inspect. |
| ❌ | [CI-04](https://paladini.github.io/harness-score/guide/measure-and-improve#ci-04) Pre-commit checks installed | 0/3 | No pre-commit hook tooling detected. |
| ✅ | [HYG-01](https://paladini.github.io/harness-score/guide/measure-and-improve#hyg-01) .gitignore present | 2/2 | .gitignore found at repository root. |
| ❌ | [HYG-02](https://paladini.github.io/harness-score/guide/measure-and-improve#hyg-02) .gitignore covers environment files | 0/3 | .gitignore has no .env pattern. |
| ✅ | [HYG-03](https://paladini.github.io/harness-score/guide/measure-and-improve#hyg-03) No unprotected .env files in the tree | 4/4 | No real .env files in the tree (templates like .env.example are fine). |
| ✅ | [HYG-04](https://paladini.github.io/harness-score/guide/measure-and-improve#hyg-04) MCP configuration free of credentials | 4/4 | No .cursor/mcp.json in repository (nothing to leak). |
| ✅ | [HYG-05](https://paladini.github.io/harness-score/guide/measure-and-improve#hyg-05) License present | 2/2 | Found LICENSE. |
| ✅ | [HYG-06](https://paladini.github.io/harness-score/guide/measure-and-improve#hyg-06) No credential signatures in harness files | 2/2 | Scanned 1 harness file(s); no credential signatures. |
| ✅ | [HYG-07](https://paladini.github.io/harness-score/guide/measure-and-improve#hyg-07) Dependency lockfile committed | 3/3 | Found package-lock.json. |
| ❌ | [HYG-08](https://paladini.github.io/harness-score/guide/measure-and-improve#hyg-08) MCP config uses env interpolation for credentials | 0/3 | No .cursor/mcp.json in repository. |

## Recommended improvements

- **CTX-01** — Create an AGENTS.md at the repository root describing what the project is, how to build/test it, and the conventions agents must follow. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#ctx-01))
- **CTX-02** — Flesh out AGENTS.md: add sections for project overview, build & test commands, architecture, and conventions (aim for 20+ meaningful lines with headings). ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#ctx-02))
- **CTX-03** — Add at least one rule under .cursor/rules/ as an .mdc file — start with a short always-on rule stating the project's non-negotiables. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#ctx-03))
- **CTX-04** — Give every .mdc rule a frontmatter block with a description and either alwaysApply: true or a globs: pattern so Cursor knows when to load it. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#ctx-04))
- **CTX-05** — Scope rules with globs: (e.g. "src/api/**") instead of making everything alwaysApply: true — always-on rules consume context on every request. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#ctx-05))
- **CTX-06** — Split rules longer than 500 lines into focused, glob-scoped rules or move procedural content into a skill — huge rules crowd out task context. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#ctx-06))
- **SKL-01** — Create .cursor/skills/<skill-name>/SKILL.md packaging a procedural workflow the agent should follow on demand (deploys, releases, migrations…). ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#skl-01))
- **SKL-02** — Add frontmatter with name: and description: to every SKILL.md — the agent decides whether to load a skill from those two fields alone. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#skl-02))
- **SKL-03** — Add markdown files under .cursor/commands/ for workflows you trigger intentionally (e.g. /release, /review) — commands are explicit, repeatable entry points. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#skl-03))
- **SKL-04** — Write skill descriptions of 40+ characters that say when to use the skill ("Use when…"), not just what it is — vague descriptions never trigger. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#skl-04))
- **AGT-01** — Create .cursor/agents/<agent-name>.md defining a purpose-built subagent the primary agent can delegate to for a specific job (planning, review, release…). ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#agt-01))
- **AGT-02** — Add frontmatter with name: and description: to every subagent definition — the parent agent decides whether to delegate from those two fields alone. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#agt-02))
- **HKS-01** — Create .cursor/hooks.json ({"version": 1, "hooks": {…}}) — hooks are the only harness layer that can observe and control the agent loop deterministically. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#hks-01))
- **HKS-02** — Declare "version": 1 and register handlers only on documented events (beforeShellExecution, afterFileEdit, preToolUse, …) — typos in event names fail silently. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#hks-02))
- **HKS-03** — Register a hook on beforeShellExecution / beforeMCPExecution / preToolUse that returns allow/deny/ask — e.g. block destructive shell commands or scan for secrets before they execute. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#hks-03))
- **HKS-04** — Register a hook on afterFileEdit / postToolUse / stop — e.g. auto-format edited files or run a quick lint so the agent sees failures immediately. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#hks-04))
- **HKS-05** — Commit the scripts referenced by hooks.json (e.g. ./.cursor/hooks/guard.sh) — a hook pointing at a missing script fails open on every machine but yours. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#hks-05))
- **SNS-01** — Wire up a test runner (vitest/jest, pytest, go test, cargo test…) with a standard entry point — tests are the strongest feedback sensor an agent can run on its own work. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#sns-01))
- **SNS-02** — Add a linter config (eslint/biome, ruff, golangci-lint, clippy.toml, rubocop…) — linters give the agent instant, deterministic feedback on every edit. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#sns-02))
- **SNS-03** — Enable static type checking (tsconfig.json with strict: true, mypy/pyright for Python) — typed code is dramatically more harnessable: the compiler catches agent mistakes for free. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#sns-03))
- **SNS-04** — Add an auto-formatter (prettier/biome, black or ruff format, gofmt/rustfmt are built-in) — formatting noise in diffs hides real agent mistakes from review. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#sns-04))
- **CI-01** — Add a CI workflow (.github/workflows/ci.yml) — CI is the harness sensor that catches what slipped past local checks, on every push. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#ci-01))
- **CI-02** — Make CI execute the test suite (npm test, pytest, go test…) so no agent-authored change can merge without the sensors firing. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#ci-02))
- **CI-03** — Add lint and typecheck steps to CI — cheap computational sensors belong on every push ("keep quality left"). ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#ci-03))
- **CI-04** — Add pre-commit tooling (husky + lint-staged, pre-commit, lefthook) so fast checks run before a commit exists — the earliest possible feedback loop. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#ci-04))
- **HYG-02** — Add ".env" and ".env.*" to .gitignore so an agent can never stage credentials by accident. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#hyg-02))
- **HYG-08** — Reference credential-shaped values in .cursor/mcp.json via ${ENV_VAR} interpolation instead of literals — this rewards deliberate, safe tool-access configuration, not just the absence of a leak. ([guide](https://paladini.github.io/harness-score/guide/measure-and-improve#hyg-08))

**To reach L1:** context ≥ 40%
