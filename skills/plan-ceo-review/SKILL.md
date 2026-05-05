---
name: "plan-ceo-review"
description: "Challenges a plan from product and strategic angles. Invoke when the user wants scope, premise, or product-direction review before implementation." 
---

# Plan CEO Review

Review a plan like a product and scope gate.

## When To Use

Use this skill when the user:
- wants to pressure-test a plan before building
- asks whether the scope is right
- wants strategic review of a spec or roadmap slice
- needs premise and priority review, not low-level implementation detail

## Questions To Answer

- Is this solving the right problem?
- Are the assumptions explicit and believable?
- Is the first version too broad or too narrow?
- What part of the plan creates the most user value?
- What will look like a mistake in six months?

## Workflow

1. Restate the plan in plain language.
2. Extract assumptions and implied bets.
3. Challenge scope, sequencing, and user value.
4. Compare with at least one narrower and one broader alternative.
5. Recommend a sharper direction.

## Output

Return:
- core premise review
- scope risks
- recommended wedge
- what to defer
- final strategic recommendation

## Operating Notes

- Bias toward clarity of user value.
- Expand or shrink scope only with explicit reasoning.
- Do not drift into engineering details unless they affect strategy.
- If the plan is already implementation-ready, hand off to `plan-eng-review` after strategy is settled.

## Source

Adapted for TraeStack skill discovery.
