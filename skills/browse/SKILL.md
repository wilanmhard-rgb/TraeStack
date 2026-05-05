---
name: "browse"
description: "Uses a browser to inspect pages, verify flows, and capture evidence. Invoke when the user asks to open a site, inspect UI, or validate browser behavior." 
---

# Browse

Use the browser as a verification tool, not just a screenshot tool.

## When To Use

Use this skill when the user:
- wants a page opened or inspected
- asks to verify a live or local web flow
- needs screenshots, UI evidence, or browser-based validation
- wants interaction testing instead of code-only analysis

## Core Tasks

- open a page
- inspect visible state
- click through a flow
- capture screenshots
- watch for console or network problems
- compare before and after behavior

## Workflow

1. Open the target URL or local app.
2. Inspect the page structure and main interactive elements.
3. Reproduce the requested flow.
4. Capture evidence while testing.
5. Report what worked, what failed, and what changed.

## Evidence Standard

Good browser work includes:
- exact URL or route tested
- interaction steps taken
- screenshots or textual evidence
- console or network errors if relevant
- clear statement of observed behavior

## Operating Notes

- Prefer direct verification over guessing from page source.
- When testing a bug or regression, compare before and after actions.
- If auth or environment blocks the flow, state the missing prerequisite clearly.
- Use this skill alongside `qa` for full testing, or standalone for focused browser inspection.

## Source

Adapted for TraeStack skill discovery.
