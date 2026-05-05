---
name: "design-shotgun"
description: "Generates multiple visual design directions, compares them, and iterates toward an approved look. Invoke when the user wants fast design exploration, mockup variants, or a structured feedback loop before implementation." 
---

# Design Shotgun

Explore multiple strong visual directions quickly, then converge with structured feedback instead of taste-by-vibes.

## When To Use
- the user wants several design directions for a screen, flow, or landing page
- an existing plan or DESIGN.md needs visual exploration before implementation
- the user says a design feels wrong but cannot yet explain the right direction
- the team wants approved mockups and saved artifacts before moving to `design-html`

## Core Rules
- generate distinctly different directions, not tiny variations of the same layout
- prefer artifact-backed feedback loops over long textual preference debates
- save design artifacts in persistent TraeStack design storage, not ad hoc repo paths or temp docs
- bias toward existing design-system and taste-memory signals unless the user explicitly wants to break from them
- summarize what changed each round so approvals remain traceable
- end with one approved direction or a clearly named unresolved decision

## Workflow
1. Gather or inherit the design brief, including user, job-to-be-done, constraints, and any existing design system.
2. Propose a small set of clearly different concepts and confirm the exploration set.
3. Generate variants, show them for comparison, and collect structured feedback from the board or chat.
4. Regenerate, remix, or refine until one direction is approved.
5. Save the approved mockup and feedback so later skills can implement from the same source of truth.

## Output
- named variant concepts and the brief behind them
- paths to generated mockups and the comparison artifact
- approved direction with summary of user feedback
- saved artifact location for downstream implementation
- recommended next step, usually `design-html` or a follow-up exploration pass
