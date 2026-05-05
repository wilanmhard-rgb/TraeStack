---
name: "design-review"
description: "Reviews live UI for hierarchy, spacing, consistency, and polish. Invoke when the user wants a design critique, UI QA pass, or visual polish review."
---

# Design Review

Review the rendered product with a strong design opinion. Focus on what users see and feel.

## When To Use
- the user wants a design or UI review
- a page feels cluttered, generic, or visually inconsistent
- a feature works but still looks unfinished
- the team wants design findings before or after implementation

## Core Rules
- judge the live UI first, not the component source
- findings come first; fixes come only if the user asks or clearly implies it
- prefer evidence such as screenshots, responsive checks, and interaction notes
- tie each issue to clarity, trust, readability, or task completion

## Review Areas
- hierarchy: what users notice first, second, and not at all
- typography and spacing: rhythm, density, readability, and consistency
- interaction polish: states, affordances, feedback, and motion
- visual quality: generic patterns, AI-slop layouts, and style drift across pages

## Workflow
1. Identify the target page, flow, or app surface.
2. Capture the current UI state across the most relevant breakpoints.
3. Write findings ordered by user impact, not by CSS property.
4. If fixing is in scope, make the smallest safe change and verify the result visually.
5. End with quick wins and any larger design debts that should be handled separately.

## Output
- a concise design audit with severity
- evidence for each major finding
- optional fix list or applied polish changes
- a short "what to improve next" summary
