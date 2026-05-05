---
name: "skillify"
description: "Turns a successful one-off scrape into a reusable browser skill. Invoke when the user wants to codify the last scrape, save a repeatable extractor, or promote a prototype into a durable skill."
---

# Skillify

Convert a successful scrape prototype into a reusable on-disk browser skill.

## When To Use
- the last `scrape` worked and should become reusable
- the user wants the next run to be faster and more deterministic
- a one-off extraction should be promoted into a named skill
- the team wants a repeatable browser extractor instead of ad hoc commands

## Core Rules
- only codify a recent successful scrape; do not invent missing provenance
- never commit a half-working generated skill to disk
- stage, test, and get approval before finalizing the artifact
- keep the generated skill self-contained and easy to inspect later

## Workflow
1. Find the most recent valid `scrape` result in the active context.
2. Propose a durable skill name, host, and trigger phrases.
3. Synthesize the skill files from the accepted scrape flow.
4. Stage and test the generated skill before any final write.
5. Ask for approval, then commit or discard the staged artifact.

## Output
- the proposed skill name and target tier
- the staged script and test result
- a final committed path or a clean discard outcome
- the exact trigger phrase that should match future `scrape` calls
