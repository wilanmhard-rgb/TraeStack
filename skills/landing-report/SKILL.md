---
name: "landing-report"
description: "Builds a read-only landing queue report for VERSION claims, open PRs, and sibling workspaces. Invoke when the user wants to see who is likely to land next or whether version collisions are forming."
---

# Landing Report

Show the VERSION queue before `ship` so nobody lands blind.

## When To Use
- the user wants a read-only queue report before shipping
- multiple branches or workspaces may collide on the next VERSION slot
- you need to see which sibling worktrees are likely to land soon
- the team wants fast queue awareness without mutating branch state

## Core Rules
- this skill is read-only; do not change VERSION, CHANGELOG, git state, or PR state
- show collisions and likely landing pressure clearly instead of burying them in raw output
- distinguish online queue-aware results from offline fallback output
- end with one next-step recommendation, not a wall of vague advice

## Workflow
1. Detect the base branch and current VERSION context.
2. Query the queue for likely next versions across bump levels.
3. Inspect open PR claims and sibling workspaces when that data is available.
4. Render one concise dashboard showing status, collisions, and likely next landing slots.
5. Recommend the next action based on collisions, active siblings, or a clean queue.

## Output
- a landing dashboard with base branch, host status, and queue awareness
- open PR version claims and any collisions
- sibling workspace pressure when relevant
- the likely next claimed versions for common bump levels
