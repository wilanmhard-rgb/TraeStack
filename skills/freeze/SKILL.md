---
name: "freeze"
description: "Restricts edits to a chosen directory so work stays within a safe boundary. Invoke when the user wants to lock edits to one path during debugging, focused work, or high-risk sessions."
---

# Freeze

Set a hard edit boundary so file changes stay inside one chosen directory.

## When To Use
- the user wants focused edits in a single area of the repo
- debugging should avoid accidental changes outside the target path
- the session is risky enough that edit scope needs a hard boundary
- multiple unrelated changes exist and you should touch only one slice

## Core Rules
- block edits outside the chosen directory instead of merely warning
- confirm the exact boundary path before enabling it
- keep reads and searches available so investigation can continue normally
- make it easy to change or remove the boundary later with `freeze` or `unfreeze`

## Workflow
1. Ask which directory should remain editable.
2. Resolve it to a clean absolute path.
3. Persist that path as the active freeze boundary.
4. Confirm what is now blocked and what still works.
5. Remind the user how to move or remove the boundary later.

## Output
- the active editable directory
- confirmation that out-of-bound edits are blocked
- a reminder to use `unfreeze` to clear the boundary
- no source-code edits as part of setup
