---
name: "guard"
description: "Combines destructive-command warnings with a directory edit boundary. Invoke when the user wants maximum safety during risky cleanup, recovery, or tightly scoped work."
---

# Guard

Combine `careful` and `freeze` so risky commands are warned on and edits stay inside one chosen directory.

## When To Use
- the user wants the safest mode before cleanup, recovery, or release work
- risky commands and risky edits are both in play during the same session
- the repo is noisy enough that you should constrain changes to one directory
- you want one command that enables both command guardrails and edit boundaries

## Core Rules
- ask for the editable directory before enabling the boundary
- warn about destructive actions even if they happen inside the allowed directory
- treat this as a protection layer, not as permission to take dangerous actions casually
- explain how to remove the boundary later with `unfreeze`

## Workflow
1. Ask which directory should remain editable.
2. Resolve and confirm the exact absolute path.
3. Enable the freeze boundary for that path.
4. Apply careful-mode warnings for destructive commands.
5. Confirm what is protected, what is blocked, and how to relax the boundary later.

## Output
- the active editable directory
- confirmation that out-of-bound edits are blocked
- confirmation that risky commands will trigger explicit warnings
- a reminder to use `unfreeze` when the user wants to widen scope
