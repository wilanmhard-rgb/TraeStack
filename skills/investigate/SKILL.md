---
name: "investigate"
description: "Debugs broken behavior with root-cause-first workflow. Invoke when the user reports errors, regressions, or unexpected behavior." 
---

# Investigate

Debug systematically. Do not patch symptoms before identifying the root cause.

## When To Use

Use this skill when the user:
- reports a bug or regression
- pastes an error, stack trace, or failing output
- says something stopped working
- asks for root cause analysis

## Core Rule

No fix without a root cause hypothesis.

## Workflow

1. Restate the symptom clearly.
2. Reproduce the issue or identify the missing repro data.
3. Trace the failing path through the code and recent changes.
4. Form one specific root cause hypothesis.
5. Validate the hypothesis with evidence.
6. Only then implement the smallest fix.
7. Verify the fix and add or update a regression test when appropriate.

## Evidence Standard

A good investigation includes:
- exact symptom
- affected file or subsystem
- why it fails
- what changed or what assumption broke
- how the fix proves the hypothesis

## Operating Notes

- Prefer `Read`, `Grep`, `SearchCodebase`, diagnostics, and targeted commands over guesswork.
- If there are multiple plausible causes, rank them and test the cheapest one first.
- If the bug cannot be reproduced, stop and ask for the next missing piece of evidence.
- Keep the blast radius small until the root cause is proven.

## Deliverable

Report findings in this order:
- root cause
- fix
- verification
- residual risk

## Source

Adapted for TraeStack skill discovery.
