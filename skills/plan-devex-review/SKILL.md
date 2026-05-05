---
name: "plan-devex-review"
description: "Reviews a plan from the developer-experience angle, covering onboarding, docs, API or CLI ergonomics, errors, upgrade path, and time to hello world. Invoke when the user wants a developer-facing plan improved before implementation." 
---

# Plan Devex Review

Improve the plan so developers can adopt, understand, and trust the thing before anyone builds it.

## When To Use
- the user wants a plan reviewed for onboarding, docs, CLI or API ergonomics, SDK shape, or developer workflow quality
- a plan has developer-facing scope and you need to catch adoption friction before implementation starts
- the team wants explicit decisions on time to hello world, magical moments, debugging, upgrades, or tooling support
- the request is about improving how developers experience the product, not just whether the architecture works

## Core Rules
- review and improve the plan, not the implementation
- identify the target developer persona before making DX judgments
- ground the review in the actual getting-started path, docs, commands, and error surfaces that exist today
- ask the user to resolve meaningful DX tradeoffs instead of silently choosing them
- cover onboarding, interface design, error handling, docs, upgrades, tooling, community, and measurement loops
- leave the plan with concrete DX decisions, explicit deferrals, and a believable adoption story

## Workflow
1. Classify the product type and identify the primary developer persona.
2. Trace the current developer journey, estimate time to hello world, and find the first major friction points.
3. Review the plan across the major DX passes: getting started, API or CLI design, errors, docs, upgrades, tooling, ecosystem, and feedback loops.
4. Write the missing DX decisions back into the plan, escalating only the tradeoffs that need user input.
5. Summarize the before-and-after DX posture, unresolved decisions, and the most useful next review.

## Output
- developer persona and adoption context
- current versus target time to hello world and biggest friction points
- prioritized DX gaps grouped by review pass
- concrete plan changes, decisions, and explicit deferrals
- recommended next step such as `plan-eng-review`, `plan-design-review`, or post-ship `devex-review`
