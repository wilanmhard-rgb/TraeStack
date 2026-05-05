---
name: "ship"
description: "Prepares code for landing by running checks and packaging the final branch state. Invoke when the user asks to ship, land, or prepare a PR." 
---

# Ship

Prepare a branch to land cleanly.

## When To Use

Use this skill when the user:
- asks to ship work
- wants a branch prepared for PR
- asks to land or merge after validation
- wants release hygiene before handoff

## Workflow

1. Check branch state and workspace cleanliness.
2. Sync against the target base branch.
3. Run the relevant tests and validation commands.
4. Review the diff or ensure review already happened.
5. Update release-facing artifacts when needed.
6. Summarize what is ready and what still blocks landing.

## Validation Checklist

Before calling something ready, verify:
- branch is correct
- intended files are included
- tests or checks were run
- obvious release notes or version bumps are handled when applicable
- remaining blockers are called out explicitly

## Operating Notes

- Do not merge or push blindly.
- Ask before destructive or irreversible git actions.
- Treat failing tests, dirty workspace surprises, and unresolved review findings as blockers.
- If the repo has its own ship scripts, prefer them over inventing a new release flow.

## Deliverable

End with a clear status:
- ready to land
- ready with concerns
- blocked

Include the exact next command or next decision.

## Source

Adapted for TraeStack skill discovery.
