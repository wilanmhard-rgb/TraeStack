---
name: "scrape"
description: "Extracts structured data from a page and returns stable JSON. Invoke when the user wants to pull data from a website, list items from a page, or prototype a one-off read-only scrape."
---

# Scrape

Pull data off a page with a read-only workflow. Prefer structured output over screenshots or prose.

## When To Use
- the user wants data from a page as JSON
- they want a one-off scrape before investing in a permanent browser skill
- an existing browser skill might already match the request
- the task is read-only and should not mutate the target site

## Core Rules
- refuse mutating flows such as submit, post, delete, or account changes
- return stable JSON, not a prose-heavy answer
- use an existing skill when the intent matches; prototype only when no good match exists
- if login is required, route through `setup-browser-cookies` first instead of guessing

## Workflow
1. Read the scrape intent and identify the target page or domain.
2. Decide whether an existing browser skill already fits the request.
3. If matched, run the existing skill and return its JSON.
4. If not matched, prototype the extraction with browser primitives and emit a clean JSON shape.
5. If the prototype is successful and reusable, suggest `skillify` once.

## Output
- one JSON document with a stable shape such as `items` and `count`
- a brief blocker summary if extraction fails
- an optional one-line nudge to `skillify` after a successful prototype
