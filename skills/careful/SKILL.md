---
name: "careful"
description: "Adds guardrails around destructive commands and risky irreversible actions. Invoke when the user wants extra safety before deletes, force pushes, resets, or other potentially destructive operations."
---

# Careful

Turn on a safety mindset before doing something destructive or hard to undo.

## When To Use
- the user is about to run risky shell or git commands
- cleanup work could accidentally delete important files or history
- a session needs stronger confirmation around irreversible actions
- the team wants explicit guardrails during debugging, recovery, or release work

## Core Rules
- warn before destructive actions instead of assuming the user intended them safely
- distinguish normal cleanup from genuinely risky commands
- explain the actual blast radius in plain terms
- let the user override, but only after the risk is explicit

## What It Guards
- recursive deletes and similar mass-removal commands
- force pushes, hard resets, and history rewrites
- destructive database commands
- cluster, container, or infrastructure deletion commands

## Output
- a clear warning when a command is risky
- the reason the command is dangerous
- the safer alternative when one exists
- an explicit proceed-or-cancel decision point
