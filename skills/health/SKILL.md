---
name: "health"
description: "Builds a code-health dashboard from the project's own quality tools. Invoke when the user wants a health check, quality scorecard, CI-style summary, or trend view without auto-fixing issues."
---

# Health

Run the project's own quality checks and summarize the result as one dashboard.

## When To Use
- the user asks for a repo health check
- the team wants a CI-style summary before shipping or after a risky change
- code quality needs a weighted score instead of scattered tool output
- you want trends across lint, tests, type checks, and related quality signals

## Core Rules
- run the project's configured tools instead of inventing substitute checks
- report raw failures clearly; do not silently compress away the real output
- skipped tools are not failures if the project does not use them
- this skill reports and prioritizes; it does not fix

## Workflow
1. Detect or load the repo's health stack.
2. Run each tool and capture exit status, duration, and useful output.
3. Score each category and compute the composite result.
4. Compare with recent history when available.
5. Present the dashboard plus the highest-impact follow-up actions.

## Output
- a code-health dashboard
- category scores and overall score
- notable failures or warnings with actionable context
- trend notes and prioritized recommendations
