---
name: "setup-deploy"
description: "Captures deploy platform, production URL, and health checks for later ship workflows. Invoke when the user wants land-and-deploy configured or deployment metadata normalized."
---

# Setup Deploy

Turn deployment tribal knowledge into explicit project configuration.

## When To Use
- `land-and-deploy` needs setup before it can run cleanly
- the repo deploys, but the deploy path lives only in people's heads
- the user wants platform, URL, and health-check details documented
- production verification is manual and needs a repeatable checklist

## Core Rules
- detect first, then confirm with the user before writing anything important
- never expose secrets, tokens, or full credentials
- prefer simple health checks and status commands over fragile custom flows
- persist the final answer in project docs so later ship workflows can reuse it

## Workflow
1. Inspect the repo for deploy clues: config files, CI workflows, scripts, and platform markers.
2. Infer the platform, production URL, deploy trigger, and health-check path.
3. Ask only for missing or ambiguous pieces.
4. Write a small deployment configuration section into the repo's operational docs.
5. Verify the health check or status command when possible, then report any gaps.

## Output
- detected deploy platform and project type
- production URL and post-deploy verification method
- deploy trigger and status command
- the exact fields that future release workflows should reuse
