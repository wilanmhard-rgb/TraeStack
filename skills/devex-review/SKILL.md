---
name: "devex-review"
description: "Audits developer experience by testing onboarding, docs, and error paths. Invoke when the user wants DX review, setup-friction analysis, or docs-to-working-app validation."
---

# Devex Review

Audit the product like a new developer, not like an insider who already knows how it works.

## When To Use
- the user wants a developer-experience review
- onboarding or setup feels confusing or slow
- docs, CLI, SDK, or error messages need a reality check
- the team wants a measured TTHW (time to hello world) pass

## Core Rules
- test the real flow first; do not score from guesses
- separate `tested` evidence from `inferred` evidence
- treat the first 5 minutes as the highest-impact part of the review
- include concrete friction points, not generic DX opinions

## Workflow
1. Find the entry points: repo docs, product URL, docs URL, install command, and quickstart.
2. Walk the getting-started path end to end and record steps, blockers, and elapsed time.
3. Check API or CLI ergonomics, docs structure, error quality, and upgrade guidance.
4. Score each area with evidence and call out what makes the current experience feel slow, unclear, or fragile.
5. Recommend the smallest set of changes that most improves TTHW and developer confidence.

## Output
- a step-by-step onboarding audit
- a scored DX table with evidence sources
- the top friction points ordered by user impact
- a short follow-up plan for the next re-test
