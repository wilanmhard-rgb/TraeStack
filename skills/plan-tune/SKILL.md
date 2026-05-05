---
name: "plan-tune"
description: "Inspects and adjusts question-tuning preferences plus the developer profile that TraeStack tracks. Invoke when the user wants to review prompts, change how often questions are asked, inspect their profile, or enable or disable question tuning." 
---

# Plan Tune

Tune how TraeStack asks questions so the agent feels more like your working style and less like random friction.

## When To Use
- the user wants to stop being asked a certain kind of question or always be asked before a specific decision
- the user wants to inspect, update, or explain the stored developer profile
- the user wants to review which prompts have fired recently and how often they followed or overrode them
- the user wants to enable, disable, or calibrate question tuning

## Core Rules
- use plain English and interpret intent; do not force the user into command syntax
- confirm before mutating declared profile values or ambiguous preferences
- treat one-way-door, destructive, or security-sensitive questions as special cases that may still require asking
- explain that v1 is observational: it records preferences and profile data, but does not silently change all skill behavior yet
- prefer showing the current state, recent evidence, and calibration status before proposing profile edits
- keep the output human-readable instead of dumping raw JSON unless the user explicitly asks for it

## Workflow
1. Detect whether the user wants setup, inspection, recent-question review, preference changes, profile edits, gap analysis, or enable-disable.
2. Read the relevant current state from TraeStack config, the developer profile, and recent question logs.
3. If a mutation is requested, normalize the intent, confirm when needed, then write the preference or profile change.
4. Summarize the resulting profile, question pattern, or calibration state in plain English.
5. End with the active setting or next useful follow-up, such as reviewing more questions or tightening a specific preference.

## Output
- current tuning state or profile summary
- recent question patterns, follow-rate, and likely noisy prompts when relevant
- preferences or declared-profile values that changed
- calibration or declared-versus-observed gap summary when available
- the next useful action, such as enabling setup, inspecting the gap, or reviewing recent questions
