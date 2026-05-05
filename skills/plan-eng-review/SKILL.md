---
name: "plan-eng-review"
description: "Reviews a plan for architecture, execution risk, and testability. Invoke when the user wants an engineering review of a spec before coding." 
---

# Plan Eng Review

Review a plan as an execution document.

## When To Use

Use this skill when the user:
- wants engineering review of a plan or spec
- asks whether an architecture or implementation approach makes sense
- wants edge cases, tests, and failure paths identified before coding

## Questions To Answer

- Is the architecture executable with the current codebase?
- What components, data flows, or contracts are underspecified?
- What are the major failure paths?
- What tests are required for confidence?
- What hidden complexity is being underestimated?

## Workflow

1. Read the plan and identify the main moving parts.
2. Map them to the existing codebase when relevant.
3. Check boundaries, dependencies, and failure modes.
4. Identify required tests and validation points.
5. Recommend plan changes that reduce execution risk.

## Output

Return:
- architecture review
- execution risks
- missing edge cases
- required tests
- implementation recommendations

## Operating Notes

- Focus on behavior and delivery risk, not formatting.
- Prefer explicit interfaces and simpler execution paths.
- Call out test gaps only where they materially change confidence.
- If the plan is strategically confused, send it back to `plan-ceo-review` instead of polishing the wrong thing.

## Source

Adapted for TraeStack skill discovery.
