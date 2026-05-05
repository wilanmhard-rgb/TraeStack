---
name: "review"
description: "Reviews a diff for bugs, regressions, and missing tests. Invoke when the user asks for code review, PR review, or diff validation." 
---

# Review

Review changes like a pre-merge gate.

## When To Use

Use this skill when the user:
- asks for code review
- wants a PR or diff checked before merge
- asks whether a change is safe to land
- wants bug, risk, and test-gap analysis

## Review Standard

Prioritize:
- correctness bugs
- regressions
- security issues
- missing error handling
- missing or weak tests
- contract or migration risks

## Workflow

1. Identify the base branch and current diff.
2. Read the changed files, not just the summary.
3. Look for behavior changes, not style nits.
4. Check whether tests cover the risky paths.
5. Report findings ordered by severity.
6. If no findings, say that explicitly and note remaining risk or test gaps.

## Output Format

Findings first. Keep summaries short.

Each finding should include:
- severity
- affected file or area
- what breaks
- why it matters
- what to test or change

## Operating Notes

- Do not lead with praise or high-level summary.
- Avoid low-confidence speculation in the main findings list.
- Use concrete evidence from the diff, nearby code, diagnostics, or tests.
- Mention missing tests only when they materially affect confidence.

## Source

Adapted for TraeStack skill discovery.
