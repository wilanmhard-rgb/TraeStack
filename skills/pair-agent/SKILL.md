---
name: "pair-agent"
description: "Pairs another AI agent with your running TraeStack browser session. Invoke when the user wants to share browser access with a second local or remote agent."
---

# Pair Agent

Let another agent use your browser without giving it your whole machine.

## When To Use
- the user wants a second agent to browse through the existing TraeStack browser
- a local agent such as Codex, Cursor, or another Claude session should attach quickly
- a remote agent needs a one-time setup block and tunnel instructions
- the user wants to revoke or rotate browser-sharing access later

## Core Rules
- verify the browse server is healthy before trying to pair anything
- distinguish same-machine pairing from remote pairing because the setup flow is different
- output the full remote instruction block verbatim when copy-paste setup is required
- explain admin access carefully because it expands trust and browser power

## Workflow
1. Check that the browse binary and server are available.
2. Ask which target agent should be paired.
3. Ask whether the other agent is local or remote.
4. For local flows, write credentials directly to the target host config.
5. For remote flows, generate the pairing block and handle tunnel prerequisites.
6. Confirm the paired agent shows up in browser status.

## Output
- target agent and pairing mode
- whether local credentials or remote instructions were generated
- the exact instruction block when remote setup is required
- connection status and revoke guidance
