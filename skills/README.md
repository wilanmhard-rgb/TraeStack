# TraeStack Skills

- Skill count: `50`
- Delivery summary: `skills/DELIVERY-SUMMARY.md`
- Recommended Trae-native starters: `office-hours`, `investigate`, `review`, `qa`, `ship`
- Recommended second-tier skills: `autoplan`, `browse`, `plan-ceo-review`, `plan-eng-review`, `land-and-deploy`
- Recommended third-tier skills: `devex-review`, `design-review`, `setup-deploy`, `open-traestack-browser`, `document-release`
- Recommended fourth-tier skills: `setup-browser-cookies`, `scrape`, `skillify`, `context-save`, `context-restore`
- Recommended fifth-tier skills: `qa-only`, `canary`, `health`, `careful`, `freeze`
- Recommended sixth-tier skills: `guard`, `unfreeze`, `learn`, `landing-report`, `traestack-upgrade`
- Recommended seventh-tier skills: `setup-gbrain`, `pair-agent`, `benchmark`, `benchmark-models`, `retro`
- Recommended eighth-tier skills: `cso`, `design-consultation`, `design-shotgun`, `design-html`, `plan-design-review`
- Recommended ninth-tier skills: `traestack`, `codex`, `plan-devex-review`, `plan-tune`, `make-pdf`
- Routing guide: `skills/ROUTING.md`
- Chinese navigation: `skills/NAVIGATION.zh-CN.md`

| Skill | Source | Description |
|---|---|---|
| `traestack` | `traestack/SKILL.md` | Routes browser-driven QA, dogfooding, screenshots, responsive checks, and related browser workflows. Invoke when the user wants the top-level TraeStack browser workflow or you need to choose between browse, qa, qa-only, cookies, scrape, or benchmark. |
| `autoplan` | `autoplan/SKILL.md` | Runs a multi-angle plan review and consolidates the result. Invoke when the user wants an automatic full-plan review instead of one review pass. |
| `benchmark` | `benchmark/SKILL.md` | Measures page performance and compares it against a baseline. Invoke when the user wants a web performance audit, regression check, budget report, or saved benchmark snapshot. |
| `benchmark-models` | `benchmark-models/SKILL.md` | Runs the same prompt across multiple model providers and compares speed, cost, and quality. Invoke when the user wants to benchmark Claude, GPT, Gemini, or similar providers on the same task. |
| `browse` | `browse/SKILL.md` | Uses a browser to inspect pages, verify flows, and capture evidence. Invoke when the user asks to open a site, inspect UI, or validate browser behavior. |
| `hackernews-frontpage` | `hackernews-frontpage/SKILL.md` | Scrape the Hacker News front page (titles, points, comment counts). Invoke when the user asks for hackernews-frontpage workflows. |
| `canary` | `canary/SKILL.md` | Monitors a deployed app for post-release regressions using browser checks and baselines. Invoke when the user wants post-deploy monitoring, live verification, or a canary pass after shipping. |
| `careful` | `careful/SKILL.md` | Adds guardrails around destructive commands and risky irreversible actions. Invoke when the user wants extra safety before deletes, force pushes, resets, or other potentially destructive operations. |
| `codex` | `codex/SKILL.md` | Gets an independent second opinion from Codex in review, challenge, or consult mode. Invoke when the user wants a cross-model code review, an adversarial read, or a read-only technical consult. |
| `context-restore` | `context-restore/SKILL.md` | Loads a previously saved work checkpoint and summarizes how to resume. Invoke when the user asks to restore context, resume saved work, or recover the latest checkpoint across branches. |
| `context-save` | `context-save/SKILL.md` | Saves the current working state so a later session can resume cleanly. Invoke when the user asks to save progress, checkpoint current work, or capture decisions and next steps. |
| `cso` | `cso/SKILL.md` | Runs a security-first audit across secrets, supply chain, CI/CD, integrations, LLM attack surface, and OWASP-style risks. Invoke when the user wants a read-only security review with severity, exploit paths, and remediation. |
| `design-consultation` | `design-consultation/SKILL.md` | Turns product context into an opinionated design system with research, typography, color, layout, motion, and optional previews. Invoke when the user wants a design direction, DESIGN.md, or a coherent visual system before implementation. |
| `design-html` | `design-html/SKILL.md` | Implements an approved design as production-quality Pretext-native HTML or a frontend component, with live preview and refinement. Invoke when the user wants a mockup or plan turned into working UI code. |
| `design-review` | `design-review/SKILL.md` | Reviews live UI for hierarchy, spacing, consistency, and polish. Invoke when the user wants a design critique, UI QA pass, or visual polish review. |
| `design-shotgun` | `design-shotgun/SKILL.md` | Generates multiple visual design directions, compares them, and iterates toward an approved look. Invoke when the user wants fast design exploration, mockup variants, or a structured feedback loop before implementation. |
| `devex-review` | `devex-review/SKILL.md` | Audits developer experience by testing onboarding, docs, and error paths. Invoke when the user wants DX review, setup-friction analysis, or docs-to-working-app validation. |
| `document-release` | `document-release/SKILL.md` | Synchronizes project docs with what shipped. Invoke when the user wants a post-ship docs pass, release-note polish, or documentation consistency review. |
| `freeze` | `freeze/SKILL.md` | Restricts edits to a chosen directory so work stays within a safe boundary. Invoke when the user wants to lock edits to one path during debugging, focused work, or high-risk sessions. |
| `traestack-upgrade` | `traestack-upgrade/SKILL.md` | Upgrades TraeStack safely and explains what changed. Invoke when the user wants to update TraeStack, handle upgrade prompts, or sync a vendored copy with the latest install. |
| `guard` | `guard/SKILL.md` | Combines destructive-command warnings with a directory edit boundary. Invoke when the user wants maximum safety during risky cleanup, recovery, or tightly scoped work. |
| `health` | `health/SKILL.md` | Builds a code-health dashboard from the project's own quality tools. Invoke when the user wants a health check, quality scorecard, CI-style summary, or trend view without auto-fixing issues. |
| `investigate` | `investigate/SKILL.md` | Debugs broken behavior with root-cause-first workflow. Invoke when the user reports errors, regressions, or unexpected behavior. |
| `land-and-deploy` | `land-and-deploy/SKILL.md` | Coordinates merge, deploy, and post-deploy verification. Invoke when the user wants a full land-and-verify workflow after a branch is ready. |
| `landing-report` | `landing-report/SKILL.md` | Builds a read-only landing queue report for VERSION claims, open PRs, and sibling workspaces. Invoke when the user wants to see who is likely to land next or whether version collisions are forming. |
| `learn` | `learn/SKILL.md` | Surfaces, searches, and curates project learnings captured across sessions. Invoke when the user wants to review prior lessons, search team memory, prune stale entries, or export learnings. |
| `make-pdf` | `make-pdf/SKILL.md` | Converts markdown into a polished PDF with optional cover, TOC, watermark, and preview flow. Invoke when the user wants a markdown document exported or iterated into a publication-quality PDF. |
| `office-hours` | `office-hours/SKILL.md` | Shapes product ideas into a scoped brief. Invoke when the user wants brainstorming, idea validation, or pre-build product thinking. |
| `open-traestack-browser` | `open-traestack-browser/SKILL.md` | Launches and verifies the visible TraeStack browser workflow. Invoke when the user wants a headed browser session, live browser demo, or help attaching TraeStack browser tooling. |
| `traestack-openclaw-ceo-review` | `traestack-openclaw-ceo-review/SKILL.md` | Challenges a plan the OpenClaw way across scope expansion, hold-scope rigor, or scope reduction. Invoke when the user wants a CEO-style plan review inside the OpenClaw skill set. |
| `traestack-openclaw-investigate` | `traestack-openclaw-investigate/SKILL.md` | Runs root-cause-first debugging inside the OpenClaw skill set. Invoke when the user wants OpenClaw-style bug investigation, error triage, or systematic debugging. |
| `traestack-openclaw-office-hours` | `traestack-openclaw-office-hours/SKILL.md` | Turns an idea into a design document using the OpenClaw office-hours workflow. Invoke when the user wants OpenClaw-flavored brainstorming, idea review, or pre-build product thinking. |
| `traestack-openclaw-retro` | `traestack-openclaw-retro/SKILL.md` | Generates an engineering retrospective from commit history, work patterns, and contributor activity using the OpenClaw workflow. Invoke when the user wants an OpenClaw-style weekly retro or period comparison. |
| `pair-agent` | `pair-agent/SKILL.md` | Pairs another AI agent with your running TraeStack browser session. Invoke when the user wants to share browser access with a second local or remote agent. |
| `plan-ceo-review` | `plan-ceo-review/SKILL.md` | Challenges a plan from product and strategic angles. Invoke when the user wants scope, premise, or product-direction review before implementation. |
| `plan-design-review` | `plan-design-review/SKILL.md` | Reviews a product plan for UI and UX completeness, adds missing design decisions, and can use mockups to make gaps concrete. Invoke when the user wants a plan improved before implementation from a designer's perspective. |
| `plan-devex-review` | `plan-devex-review/SKILL.md` | Reviews a plan from the developer-experience angle, covering onboarding, docs, API or CLI ergonomics, errors, upgrade path, and time to hello world. Invoke when the user wants a developer-facing plan improved before implementation. |
| `plan-eng-review` | `plan-eng-review/SKILL.md` | Reviews a plan for architecture, execution risk, and testability. Invoke when the user wants an engineering review of a spec before coding. |
| `plan-tune` | `plan-tune/SKILL.md` | Inspects and adjusts question-tuning preferences plus the developer profile that TraeStack tracks. Invoke when the user wants to review prompts, change how often questions are asked, inspect their profile, or enable or disable question tuning. |
| `qa` | `qa/SKILL.md` | Tests an app like a user and records bugs with evidence. Invoke when the user asks to QA a site, verify flows, or test and fix breakage. |
| `qa-only` | `qa-only/SKILL.md` | Runs browser-based QA and produces evidence without applying fixes. Invoke when the user wants a report-only QA pass, bug list, smoke report, or browser verification without code changes. |
| `retro` | `retro/SKILL.md` | Builds an engineering retrospective from commit history, work patterns, and shipping signals. Invoke when the user wants a weekly retro, compare mode, or cross-project productivity summary. |
| `review` | `review/SKILL.md` | Reviews a diff for bugs, regressions, and missing tests. Invoke when the user asks for code review, PR review, or diff validation. |
| `scrape` | `scrape/SKILL.md` | Extracts structured data from a page and returns stable JSON. Invoke when the user wants to pull data from a website, list items from a page, or prototype a one-off read-only scrape. |
| `setup-browser-cookies` | `setup-browser-cookies/SKILL.md` | Imports logged-in browser cookies into the TraeStack browse session. Invoke when the user needs authenticated browsing, cookie import, or browser-session setup before QA or scraping. |
| `setup-deploy` | `setup-deploy/SKILL.md` | Captures deploy platform, production URL, and health checks for later ship workflows. Invoke when the user wants land-and-deploy configured or deployment metadata normalized. |
| `setup-gbrain` | `setup-gbrain/SKILL.md` | Sets up gbrain so the coding agent can use persistent memory and MCP tools. Invoke when the user wants local gbrain onboarding, engine setup, repo policy configuration, or brain sync wiring. |
| `ship` | `ship/SKILL.md` | Prepares code for landing by running checks and packaging the final branch state. Invoke when the user asks to ship, land, or prepare a PR. |
| `skillify` | `skillify/SKILL.md` | Turns a successful one-off scrape into a reusable browser skill. Invoke when the user wants to codify the last scrape, save a repeatable extractor, or promote a prototype into a durable skill. |
| `unfreeze` | `unfreeze/SKILL.md` | Clears the active edit boundary so work can continue across the repo again. Invoke when the user wants to remove a freeze restriction or widen the editable scope safely. |
