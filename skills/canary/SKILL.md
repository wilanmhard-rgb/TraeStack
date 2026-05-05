---
name: "canary"
description: "Monitors a deployed app for post-release regressions using browser checks and baselines. Invoke when the user wants post-deploy monitoring, live verification, or a canary pass after shipping."
---

# Canary

Watch a freshly deployed app for early regressions before users discover them first.

## When To Use
- the user wants post-deploy verification
- a release just went out and needs live monitoring
- the team wants baseline-vs-current checks on key pages
- a deployment is risky enough to justify repeated checks instead of a single smoke test

## Core Rules
- compare against a known baseline when possible
- alert on changes and regressions, not on every imperfection
- include evidence for alerts such as screenshots, console deltas, and timing changes
- stay read-only unless the user explicitly pivots into investigation or fixes

## Workflow
1. Identify the target URL, key pages, and whether a baseline already exists.
2. Capture a baseline or quick reference state if needed.
3. Revisit the important pages on a timed loop or single-pass schedule.
4. Watch for new failures, new console errors, and clear performance regressions.
5. Finish with a canary verdict and any next action such as investigate, continue monitoring, or rollback.

## Output
- deployment health verdict
- per-page monitoring summary
- alerts with evidence and severity
- a recommendation such as healthy, degraded, investigate now, or rollback
