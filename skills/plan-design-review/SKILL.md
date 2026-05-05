---
name: "plan-design-review"
description: "Reviews a product plan for UI and UX completeness, adds missing design decisions, and can use mockups to make gaps concrete. Invoke when the user wants a plan improved before implementation from a designer's perspective." 
---

# Plan Design Review

Improve the plan itself so implementation has real design decisions to follow instead of vague placeholders.

## When To Use
- the user wants a plan reviewed for UX, information hierarchy, states, responsiveness, or design-system fit
- a feature plan describes what the system does but not what the user actually sees
- the team wants design gaps fixed before engineering starts building UI
- approved or exploratory mockups should be used to sharpen plan-level design choices

## Core Rules
- review the plan, not the code, and write improvements back into the plan artifact when appropriate
- if the plan has real UI scope, evaluate it visually as well as textually whenever design tooling is available
- rate design completeness dimension by dimension and explain what would make each weak area complete
- ask the user to resolve meaningful design choices instead of silently deciding subjective tradeoffs
- cover hierarchy, states, journey, AI-slop risk, design-system alignment, responsiveness, accessibility, and unresolved decisions
- leave the plan more specific, more implementable, and more honest about what is still deferred

## Workflow
1. Detect UI scope, existing design-system context, and any prior review or mockup artifacts.
2. Score the plan's current design completeness and name the biggest gaps.
3. Generate or use visual references when helpful, then review the plan across the major design passes.
4. Update the plan with concrete decisions, missing states, hierarchy, responsive behavior, and explicit deferrals.
5. Summarize the final score, unresolved decisions, and the most useful next review or design skill.

## Output
- initial versus final design-completeness assessment
- concrete plan gaps grouped by design pass
- decisions added, deferred, or escalated to the user
- visual-reference status if mockups were used
- recommended next step such as `design-shotgun`, `design-html`, or `plan-eng-review`
