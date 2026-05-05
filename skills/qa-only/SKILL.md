---
name: "qa-only"
description: "Runs browser-based QA and produces evidence without applying fixes. Invoke when the user wants a report-only QA pass, bug list, smoke report, or browser verification without code changes."
---

# QA Only

Test the app like a user and report what is broken. Do not fix anything.

## When To Use
- the user wants QA findings only, not a test-fix loop
- a stakeholder needs a browser-based bug report with evidence
- the team wants a smoke pass before asking for fixes
- you need screenshots, repro steps, and severity without touching source code

## Core Rules
- never edit code or suggest that the report itself is a fix
- use the browser as the primary verification tool
- every important finding needs evidence such as screenshots, console output, or clear repro steps
- prioritize reproducible issues over vague polish comments

## Workflow
1. Identify the target URL, scope, and whether this is quick smoke or broader coverage.
2. Walk the main flows in the browser and check console health along the way.
3. Capture evidence for each reproducible issue as soon as it appears.
4. Group findings by severity and user impact.
5. Finish with a concise QA report, health summary, and top issues to fix next.

## Output
- a report-only QA summary
- reproducible bugs with evidence
- a simple health score or pass/fail framing
- no code changes and no fix attempts
