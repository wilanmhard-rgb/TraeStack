---
name: "land-and-deploy"
description: "Coordinates merge, deploy, and post-deploy verification. Invoke when the user wants a full land-and-verify workflow after a branch is ready." 
---

# Land And Deploy

Handle the final leg from ready branch to verified deploy.

## When To Use

Use this skill when the user:
- wants to merge and deploy as one flow
- asks for post-merge verification
- wants release confirmation after a branch is already prepared

## Workflow

1. Confirm the branch is actually ready to land.
2. Verify the expected checks or approvals are complete.
3. Land the change using the repo's normal workflow.
4. Watch the deploy or release signal.
5. Verify the live result with focused checks.
6. Report outcome and rollback risk.

## Verification

After deployment, verify:
- target environment is reachable
- critical flow still works
- obvious console, health, or routing errors are absent
- the intended change is visible or effective

## Operating Notes

- Do not skip readiness checks just because deployment is requested.
- Treat failed CI, uncertain merge state, or missing environment info as blockers.
- Prefer the repo's existing deployment commands and runbooks.
- If production verification is not possible, state the exact blind spot.

## Deliverable

Return one of:
- deployed and verified
- deployed with concerns
- blocked before deploy
- deploy status unknown

## Source

Adapted for TraeStack skill discovery.
