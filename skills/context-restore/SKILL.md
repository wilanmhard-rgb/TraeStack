---
name: "context-restore"
description: "Loads a previously saved work checkpoint and summarizes how to resume. Invoke when the user asks to restore context, resume saved work, or recover the latest checkpoint across branches."
---

# Context Restore

Load a saved checkpoint and make the next action obvious.

## When To Use
- the user wants to resume previous work
- a session lost context and needs the latest saved checkpoint
- work moved across branches or workspaces and needs a handoff summary
- the team wants the exact remaining steps from an earlier save

## Core Rules
- read saved context only; do not modify code as part of restore
- default to the most recent checkpoint across branches unless the user narrows it
- surface branch mismatch clearly so the user does not resume on the wrong branch
- finish by making the next action obvious, not just by dumping the file

## Workflow
1. Locate recent checkpoint files for the current project slug.
2. Pick the requested checkpoint, or the newest one if the user did not specify.
3. Read the saved summary, remaining work, notes, and branch metadata.
4. Present a clean resume summary with branch-awareness.
5. Offer the next step: continue, show full file, or stop.

## Output
- checkpoint title, saved time, branch, and status
- summary, remaining work, and notes
- branch mismatch warning when relevant
- the clearest next action to resume work
