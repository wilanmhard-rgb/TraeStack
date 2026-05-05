---
name: "retro"
description: "Builds an engineering retrospective from commit history, work patterns, and shipping signals. Invoke when the user wants a weekly retro, compare mode, or cross-project productivity summary."
---

# Retro

Turn commit history into an honest retrospective the team can actually use.

## When To Use
- the user wants a weekly or custom-window engineering retrospective
- a team wants shipping, testing, and focus patterns summarized from git history
- compare mode is needed to show trend changes versus the prior window
- global mode should aggregate multiple repos and AI tools into one retro

## Core Rules
- anchor every conclusion in observable repo history, not generic management language
- treat the current git user as the primary audience for the personal deep dive
- save the JSON snapshot, but keep the narrative report in the conversation
- use the retro to surface patterns, praise, and growth areas, not empty ceremony

## Workflow
1. Parse the requested window or mode: normal, compare, or global.
2. Gather commit, author, session, hotspot, test, and shipping data for that scope.
3. Compute summary metrics, streaks, session patterns, and contributor breakdowns.
4. Compare against prior retros when compatible history exists.
5. Write the narrative retrospective with highlights, risks, and next-week habits.
6. Save the structured retro snapshot for later trend analysis.

## Output
- a metrics summary and shipping narrative
- personal and team breakdowns when applicable
- compare or trend sections when history exists
- the saved retro snapshot path
