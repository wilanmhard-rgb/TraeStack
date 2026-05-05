---
name: "codex"
description: "Gets an independent second opinion from Codex in review, challenge, or consult mode. Invoke when the user wants a cross-model code review, an adversarial read, or a read-only technical consult." 
---

# Codex

Ask a different model to review the work, challenge the assumptions, or give a read-only second opinion.

## When To Use
- the user wants a second opinion on code, a plan, or a technical decision
- a diff needs an independent review or adversarial challenge before shipping
- you want Codex to inspect a repo read-only and compare its findings with your own
- the user asks for `codex`, `codex review`, `codex challenge`, or a cross-model consult

## Core Rules
- keep Codex read-only and never use this skill to modify project files
- choose the mode explicitly: `review` for diff review, `challenge` for adversarial breakage hunting, `consult` for open-ended technical questions
- verify the Codex CLI and auth state before spending time on prompt construction
- show Codex output faithfully, then add a short synthesis and recommendation after it
- if Codex appears distracted by skill files or tooling scaffolding, say so and recommend a retry with tighter scope
- treat Codex as an independent signal, not an automatic decision maker

## Workflow
1. Detect whether the request is a review, challenge, or consult.
2. Confirm the Codex binary and authentication are available; stop early with setup guidance if they are not.
3. Build a bounded prompt that keeps Codex inside the repo and away from irrelevant skill files.
4. Run Codex in the chosen mode, capture the full output, and extract gate or risk signals when relevant.
5. Compare the result with your own understanding, then give the user one recommendation line and any meaningful disagreement.

## Output
- chosen Codex mode and why it fits the request
- full Codex output or the blocking setup/auth issue
- pass-fail or severity signal when the mode is review-oriented
- one recommendation line that names the highest-value next action
- cross-model agreement, disagreement, or reasons to distrust the result
