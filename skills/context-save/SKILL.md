---
name: "context-save"
description: "Saves the current working state so a later session can resume cleanly. Invoke when the user asks to save progress, checkpoint current work, or capture decisions and next steps."
---

# Context Save

Capture the current working state without changing the code.

## When To Use
- the user wants to save progress before leaving
- a task spans multiple sessions and needs a resumable checkpoint
- important decisions, remaining work, or gotchas should be written down now
- another agent or future session will need a clean handoff

## Core Rules
- this skill records state only; it does not implement product changes
- infer the summary from git state and recent conversation before asking questions
- save decisions, remaining work, and blockers in a form another session can actually use
- never overwrite an existing checkpoint file

## Workflow
1. Gather branch, status, diff summary, and recent log context.
2. Infer a concise title unless the user already provided one.
3. Summarize what is done, what remains, and what a future session must know.
4. Write a new checkpoint file under the TraeStack state directory.
5. Return the saved path and a concise restore hint.

## Output
- checkpoint title and branch
- saved file path
- count of modified files and any measurable session duration
- a reminder to resume with `context-restore`
