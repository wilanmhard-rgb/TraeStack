---
name: "setup-gbrain"
description: "Sets up gbrain so the coding agent can use persistent memory and MCP tools. Invoke when the user wants local gbrain onboarding, engine setup, repo policy configuration, or brain sync wiring."
---

# Setup GBrain

Get gbrain working end to end so the agent has durable memory instead of starting cold every session.

## When To Use
- the user wants to install or initialize gbrain for local agent use
- a machine needs MCP registration for gbrain tools
- repo trust policy, brain sync, or transcript ingest needs to be configured
- an existing gbrain setup feels broken and should be repaired safely

## Core Rules
- detect existing state before installing or reconfiguring anything
- treat secrets like pooler URLs, PATs, and database passwords as env-only values
- stop on doctor failures, broken PATH state, or failed smoke tests instead of papering over them
- leave a clear audit trail in `CLAUDE.md` after successful setup

## Workflow
1. Detect whether gbrain, config, engine, and MCP registration already exist.
2. Choose or confirm the target engine: local PGLite or Supabase-backed storage.
3. Install the CLI if needed, then initialize or migrate the brain safely.
4. Verify `gbrain doctor`, wire MCP registration, and set per-repo trust policy.
5. Optionally enable TraeStack memory sync and transcript ingest.
6. Run a smoke test and summarize the final GREEN or YELLOW state.

## Output
- detected gbrain state and chosen engine
- whether install, migration, or repair was performed
- repo policy, sync mode, and MCP registration status
- final health verdict plus the next step if anything remains broken
