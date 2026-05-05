---
name: "setup-browser-cookies"
description: "Imports logged-in browser cookies into the TraeStack browse session. Invoke when the user needs authenticated browsing, cookie import, or browser-session setup before QA or scraping."
---

# Setup Browser Cookies

Bring an existing logged-in browser session into TraeStack so browser-based tasks can access authenticated pages.

## When To Use
- `browse`, `qa`, or `scrape` needs login state
- the user wants to test an authenticated app without logging in manually again
- headless browser flows are blocked by missing cookies or expired sessions
- the team needs a repeatable way to attach a real browser profile

## Core Rules
- check whether the browser session is already attached before importing anything
- never expose cookie values, secrets, or raw session data in chat output
- stop and explain missing local prerequisites instead of pretending the import worked
- finish by verifying that the target session is available to follow-up browser tasks

## Workflow
1. Detect whether browse is already using the user's real browser session.
2. If not, locate the browser tooling and open the cookie picker or import flow.
3. Guide the user through selecting the domains that matter.
4. Verify the imported session with a safe summary such as domain counts.
5. Hand off cleanly to the next authenticated browser task.

## Output
- whether cookies were already available or newly imported
- any missing prerequisite or local blocker
- a safe summary of imported domains or session availability
- the recommended next step such as `browse`, `qa`, or `scrape`
