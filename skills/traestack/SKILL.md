---
name: "traestack"
description: "Routes browser-driven QA, dogfooding, screenshots, responsive checks, and related browser workflows. Invoke when the user wants the top-level TraeStack browser workflow or you need to choose between browse, qa, qa-only, cookies, scrape, or benchmark." 
---

# traestack

Use this as the browser-work entrypoint when the user asks for TraeStack directly or the right browser sub-skill is not obvious yet.

## When To Use
- the user asks for `traestack` directly or wants the canonical browser dogfooding workflow
- a request involves browser testing, screenshots, UI verification, auth setup, scraping, or live-site inspection but the best child skill is not obvious yet
- you need to route browser work between `browse`, `qa`, `qa-only`, `open-traestack-browser`, `setup-browser-cookies`, `benchmark`, `scrape`, or `skillify`
- the task needs browser evidence instead of code-only reasoning

## Core Rules
- treat this skill as a router first and a lightweight browser workflow second
- if a narrower browser skill clearly fits, use it instead of keeping all work inside `traestack`
- prefer observed browser behavior, screenshots, console logs, and network evidence over guesses from source alone
- surface environment, auth, or setup blockers early so the user knows what is preventing verification
- keep the report focused on user-visible behavior, broken flows, and the next best browser action

## Workflow
1. Identify whether the request is about browsing, QA, auth setup, scraping, performance, or browser handoff.
2. Route to the best child skill when the intent is clear; otherwise run a minimal browser inspection to gather evidence.
3. Reproduce the requested flow, capture screenshots or textual evidence, and note console or network failures when relevant.
4. Decide whether the work should stay in `traestack` or move into a more specialized browser skill for the next step.
5. Return the evidence, blockers, and recommended follow-up skill or fix path.

## Output
- chosen browser path or child-skill routing decision
- pages, flows, or environments that were tested
- screenshots, diffs, console errors, network failures, or other evidence
- explicit blockers such as missing auth, unavailable app, or setup gaps
- recommended next step such as `qa`, `qa-only`, `browse`, `setup-browser-cookies`, or `benchmark`
