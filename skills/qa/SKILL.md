---
name: "qa"
description: "Tests an app like a user and records bugs with evidence. Invoke when the user asks to QA a site, verify flows, or test and fix breakage." 
---

# QA

Test the app from the outside in. Behave like a user first, then fix issues if requested.

## When To Use

Use this skill when the user:
- asks to QA a website or app
- wants smoke testing after implementation
- asks whether a feature or deploy works
- wants bugs found with reproduction steps and evidence

## Modes

- Quick: smoke test key routes and critical flows.
- Standard: test primary flows and common states.
- Exhaustive: expand into edge cases, responsive states, and regressions.

## Workflow

1. Identify the target URL or local app entry point.
2. Map the main routes or flows to test.
3. Reproduce issues with exact steps.
4. Capture evidence such as screenshots, console errors, and outputs.
5. If asked to fix, implement the smallest safe change.
6. Re-test the exact failing flow.

## Evidence Rules

For each bug, record:
- steps to reproduce
- expected result
- actual result
- severity
- supporting evidence

## Operating Notes

- Prefer browser-based verification when the app has a UI.
- Test the changed area first, then nearby regressions.
- Do not claim a fix is verified unless the exact path was re-tested.
- If auth, environment, or external services block testing, say exactly what is missing.

## Source

Adapted for TraeStack skill discovery.
