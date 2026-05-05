# Core Skill Routing

Use these core skills first when the request matches:

- `office-hours`: idea validation, product brainstorming, narrowing scope before implementation
- `investigate`: debugging, regressions, stack traces, unexplained failures
- `review`: code review, diff review, pre-merge risk assessment
- `qa`: smoke testing, user-flow verification, bug finding with evidence
- `ship`: release preparation, branch readiness, pre-PR handoff

## Advanced Skills

- `autoplan`: multi-lens automatic plan review
- `browse`: browser-based inspection and evidence capture
- `plan-ceo-review`: strategy and scope review of a plan
- `plan-eng-review`: engineering feasibility and testability review
- `land-and-deploy`: merge-to-production verification workflow

## Third-Tier Skills

- `devex-review`: audit onboarding, docs, CLI ergonomics, and time to hello world
- `design-review`: critique visual quality, hierarchy, interaction polish, and UI consistency
- `setup-deploy`: detect deploy details and write reusable deployment configuration
- `open-traestack-browser`: launch and verify a visible browser session for browser-driven work
- `document-release`: sync README, CHANGELOG, and contributor docs with shipped changes

## Fourth-Tier Skills

- `setup-browser-cookies`: import authenticated browser state for follow-up browser tasks
- `scrape`: extract structured read-only data from a page as JSON
- `skillify`: turn a successful scrape into a reusable browser skill
- `context-save`: checkpoint the current working state for later handoff
- `context-restore`: recover a saved checkpoint and resume quickly

## Fifth-Tier Skills

- `qa-only`: run browser QA and produce evidence without applying fixes
- `canary`: monitor a deployed app for post-release regressions and live issues
- `health`: run the repo's quality tools and summarize them as a weighted dashboard
- `careful`: add destructive-command guardrails before risky operations
- `freeze`: restrict edits to a chosen directory during focused or high-risk work

## Sixth-Tier Skills

- `guard`: combine risky-command warnings with a hard edit boundary in one safety mode
- `unfreeze`: clear the active edit boundary and reopen repo-wide edits
- `learn`: inspect, search, prune, and export project memory across sessions
- `landing-report`: show VERSION queue pressure and likely landing collisions before `ship`
- `traestack-upgrade`: upgrade TraeStack safely and summarize what changed

## Seventh-Tier Skills

- `setup-gbrain`: set up durable gbrain memory, MCP registration, and repo trust policy
- `pair-agent`: let another agent attach to your running browser session
- `benchmark`: measure page performance and regressions against a baseline
- `benchmark-models`: compare multiple model providers on the same prompt
- `retro`: generate an engineering retrospective from commits, sessions, and shipping data

## Eighth-Tier Skills

- `cso`: run a read-only security audit across secrets, supply chain, CI/CD, integrations, and LLM risk
- `design-consultation`: turn product context into an opinionated design system and durable visual guidance
- `design-shotgun`: generate multiple design directions and converge through structured visual feedback
- `design-html`: turn approved designs or plans into working Pretext-native HTML or components
- `plan-design-review`: improve a plan's UI and UX decisions before implementation begins

## Ninth-Tier Skills

- `traestack`: route top-level browser dogfooding, QA, screenshots, and related browser workflows to the right specialized path
- `codex`: get a read-only second opinion from Codex in review, challenge, or consult mode
- `plan-devex-review`: improve a plan's onboarding, docs, API or CLI ergonomics, and time to hello world before implementation
- `plan-tune`: inspect or adjust question-tuning preferences and the developer profile behind them
- `make-pdf`: turn markdown into a polished PDF artifact with preview, cover, TOC, or watermark options

## Suggested Mapping

- "Is this worth building?" -> `office-hours`
- "Why is this broken?" -> `investigate`
- "Review my changes" -> `review`
- "Test this app" -> `qa`
- "Help me ship this" -> `ship`
- "Review this whole plan automatically" -> `autoplan`
- "Open this site and inspect it" -> `browse`
- "Challenge this plan strategically" -> `plan-ceo-review`
- "Review this plan technically" -> `plan-eng-review`
- "Merge and verify deploy" -> `land-and-deploy`
- "Audit the developer experience" -> `devex-review`
- "Critique or polish the UI" -> `design-review`
- "Configure deploy metadata" -> `setup-deploy`
- "Open the visible TraeStack browser" -> `open-traestack-browser`
- "Update docs after shipping" -> `document-release`
- "Import browser login state" -> `setup-browser-cookies`
- "Scrape this page into JSON" -> `scrape`
- "Turn that scrape into a reusable skill" -> `skillify`
- "Save my current progress" -> `context-save`
- "Resume saved work" -> `context-restore`
- "Run QA but don't fix anything" -> `qa-only`
- "Watch production after deploy" -> `canary`
- "Show repo health" -> `health`
- "Guard risky commands" -> `careful`
- "Lock edits to one directory" -> `freeze`
- "Turn on max safety mode" -> `guard`
- "Remove the edit boundary" -> `unfreeze`
- "What have we learned on this project?" -> `learn`
- "Show the landing queue" -> `landing-report`
- "Upgrade TraeStack" -> `traestack-upgrade`
- "Set up gbrain on this machine" -> `setup-gbrain`
- "Share this browser with another agent" -> `pair-agent`
- "Benchmark this page" -> `benchmark`
- "Compare models on the same prompt" -> `benchmark-models`
- "Write a weekly engineering retro" -> `retro`
- "Run a security audit on this repo" -> `cso`
- "Help define the design system" -> `design-consultation`
- "Show me several design directions" -> `design-shotgun`
- "Turn this mockup into working HTML" -> `design-html`
- "Review this plan from a design perspective" -> `plan-design-review`
- "Run the main TraeStack browser workflow" -> `traestack`
- "Get a Codex second opinion" -> `codex`
- "Review this plan for developer experience" -> `plan-devex-review`
- "Stop asking me that question" -> `plan-tune`
- "Export this markdown as a PDF" -> `make-pdf`

## Notes

- The rest of the skills remain available under `skills/`.
- Start with the core five when the request is clearly about brainstorming, debugging, review, QA, or shipping.
- Use advanced, third-tier, fourth-tier, fifth-tier, sixth-tier, seventh-tier, eighth-tier, and ninth-tier skills when the user is asking for broader planning, browser setup, structured extraction, reporting-only QA, post-deploy monitoring, safety guardrails, session handoff, repo memory, landing visibility, tool maintenance, cross-agent collaboration, benchmarking, retrospectives, security audits, design-system work, browser entrypoint routing, Codex second opinions, question tuning, or PDF generation.
- Chinese navigation is available at `skills/NAVIGATION.zh-CN.md`.
