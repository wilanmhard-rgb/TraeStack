---
name: "unfreeze"
description: "Clears the active edit boundary so work can continue across the repo again. Invoke when the user wants to remove a freeze restriction or widen the editable scope safely."
---

# Unfreeze

Clear the current freeze boundary so edits are no longer limited to one directory.

## When To Use
- the user explicitly asks to unfreeze or unlock edits
- focused work is done and the session needs wider edit scope
- the chosen boundary was too narrow for the next step
- you need to switch from local fixes back to repo-wide work

## Core Rules
- remove only the edit boundary; do not silently disable other safety habits
- report whether a boundary was actually active
- confirm that edits can now happen anywhere again
- suggest `freeze` again if the user still wants a narrower scope later

## Workflow
1. Check whether a freeze boundary is currently set.
2. Remove the saved boundary if it exists.
3. Tell the user what changed.
4. Clarify that future edits are repo-wide unless `freeze` is enabled again.

## Output
- whether a freeze boundary was cleared
- the previous boundary path when available
- confirmation that repo-wide edits are allowed again
- a reminder that `freeze` can be re-enabled anytime
