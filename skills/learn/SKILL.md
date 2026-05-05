---
name: "learn"
description: "Surfaces, searches, and curates project learnings captured across sessions. Invoke when the user wants to review prior lessons, search team memory, prune stale entries, or export learnings."
---

# Learn

Treat project memory like a maintained wiki, not a junk drawer.

## When To Use
- the user asks what the project has learned so far
- you need to search prior insights before repeating work
- stale or contradictory learnings should be reviewed and cleaned up
- the team wants to export learnings into docs or shareable notes

## Core Rules
- this skill manages learnings only; it does not implement product changes
- prefer the latest and highest-confidence entries when summarizing
- flag stale references and contradictions instead of hiding them
- keep exports readable enough to paste into `CLAUDE.md` or project docs

## Workflow
1. Detect whether the user wants recent learnings, search, prune, stats, export, or manual add.
2. Read the project's learning store from the TraeStack state directory.
3. Summarize or search results in a readable grouped format.
4. For prune flows, flag stale paths and conflicting entries before removing or updating anything.
5. For export flows, format the results as clean markdown grouped by learning type.

## Output
- recent learnings, search matches, stats, or export markdown depending on the request
- stale or conflicting entries when cleanup is needed
- the exact learning keys or files involved when relevant
- no source-code changes outside the learning store
