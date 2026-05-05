---
name: "document-release"
description: "Synchronizes project docs with what shipped. Invoke when the user wants a post-ship docs pass, release-note polish, or documentation consistency review."
---

# Document Release

Update the docs so they match the code that is about to ship or just shipped.

## When To Use
- the user wants a release-documentation pass
- the diff changed behavior, commands, or project structure
- README, CONTRIBUTING, CHANGELOG, or project instructions may now be stale
- the team wants docs and release notes cleaned up before merge

## Core Rules
- read the diff before editing docs
- make factual updates directly; ask before narrative rewrites or version bumps
- preserve changelog history; polish wording without rewriting what happened
- be explicit about what changed in each document

## Workflow
1. Inspect the branch diff and list changed capabilities, files, and commands.
2. Audit the main docs against that diff.
3. Apply clear factual updates and fix cross-doc inconsistencies.
4. Ask the user only about risky wording, removals, or release-version decisions.
5. Finish with a per-file doc health summary and any follow-up gaps.

## Output
- updated docs that match the shipped behavior
- a file-by-file summary of what changed
- any remaining narrative questions that need human judgment
- a short note on whether docs are now release-ready
