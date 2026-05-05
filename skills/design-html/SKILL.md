---
name: "design-html"
description: "Implements an approved design as production-quality Pretext-native HTML or a frontend component, with live preview and refinement. Invoke when the user wants a mockup or plan turned into working UI code." 
---

# Design HTML

Turn an approved design direction into working UI code instead of leaving it trapped in a mockup.

## When To Use
- the user wants approved mockups converted into HTML, CSS, or framework components
- a plan has enough UI detail to build a faithful first implementation
- the repo has `DESIGN.md` or prior design artifacts and needs a concrete screen built from them
- the team wants a live preview plus refinement loop before copying code into the product

## Core Rules
- build from the best available source of truth: approved mockup first, then design plan, then direct user brief
- preserve the chosen visual hierarchy and interaction intent instead of collapsing into generic template markup
- use Pretext-native text layout when the workflow calls for it, especially for resize-aware or text-sensitive screens
- work screen by screen; do not silently expand one request into a whole product rewrite
- refine through targeted edits once a preview exists rather than regenerating everything each round
- keep artifacts and metadata traceable so future sessions know what was built and from which reference

## Workflow
1. Detect available design context such as approved mockups, plan artifacts, `DESIGN.md`, or prior finalized output.
2. Build an implementation spec covering structure, tokens, typography, spacing, states, and responsive intent.
3. Generate the initial HTML or component output in the most appropriate format for the project.
4. Launch or provide a live preview, compare against the reference, and iterate with targeted fixes.
5. Save the finalized output plus metadata and suggest the next integration step.

## Output
- implementation spec and chosen source of truth
- generated HTML or component artifact path
- live-preview or verification status
- summary of refinement changes and remaining gaps
- follow-up recommendation for project integration or additional screens
