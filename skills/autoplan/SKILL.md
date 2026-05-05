---
name: "autoplan"
description: "Runs a multi-angle plan review and consolidates the result. Invoke when the user wants an automatic full-plan review instead of one review pass." 
---

# Autoplan

Run a structured review pipeline across strategy, design, engineering, and DX concerns.

## When To Use

Use this skill when the user:
- asks to review a full plan automatically
- wants one command that pressure-tests a proposal from multiple angles
- wants a consolidated recommendation instead of separate review passes

## Goal

Take a plan, spec, or proposal and produce:
- major risks
- unresolved assumptions
- missing scope or over-scope
- engineering and DX concerns
- a final go / revise recommendation

## Workflow

1. Read the source plan or proposal.
2. Determine which lenses apply: product, design, engineering, DX.
3. Review each lens in sequence, not in parallel summaries.
4. Record findings and decisions as you go.
5. Surface the highest-confidence conflicts at the end.
6. Finish with a recommendation and next action.

## Review Lenses

- Strategy: is this the right problem and scope?
- Design: are states, interactions, and UX expectations clear enough?
- Engineering: is the architecture executable, testable, and safe?
- DX: is the developer workflow understandable and maintainable?

## Output

Deliver a concise review package with:
- executive summary
- findings by lens
- open questions
- recommended revisions
- final verdict: proceed, revise, or stop

## Operating Notes

- Prefer real evidence from the plan and nearby code over generic advice.
- Do not auto-expand scope just because more work is possible.
- If one lens does not apply, say why it was skipped.
- Keep the final result decision-oriented, not essay-shaped.

## Source

Adapted for TraeStack skill discovery.
