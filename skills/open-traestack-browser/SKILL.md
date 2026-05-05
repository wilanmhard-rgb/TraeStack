---
name: "open-traestack-browser"
description: "Launches and verifies the visible TraeStack browser workflow. Invoke when the user wants a headed browser session, live browser demo, or help attaching TraeStack browser tooling."
---

# Open TraeStack Browser

Open the visible browser workflow and make sure the user can actually use it.

## When To Use
- the user wants a headed browser instead of a hidden automation session
- they want to watch browser actions in real time
- they need help verifying the TraeStack browser or side-panel setup
- another browser-based skill depends on the local TraeStack browser stack

## Core Rules
- verify prerequisites before promising that the browser is ready
- if the local tooling is missing, stop and explain the exact blocker
- confirm the session is visible and connected before moving on
- give the user one simple next step, not a long wall of setup text

## Workflow
1. Check whether the local TraeStack browser tooling is installed and runnable.
2. Launch or reconnect the headed session.
3. Confirm the visible browser state, connection status, and any required extension or side panel.
4. Run one tiny demo action so the user knows the setup really works.
5. Hand off the session to the next browser task.

## Output
- whether the browser launched successfully
- any missing prerequisite or setup blocker
- the connection details the user actually needs
- a suggested next action such as `browse`, `qa`, or `design-review`
