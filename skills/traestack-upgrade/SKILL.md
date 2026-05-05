---
name: "traestack-upgrade"
description: "Upgrades TraeStack safely and explains what changed. Invoke when the user wants to update TraeStack, handle upgrade prompts, or sync a vendored copy with the latest install."
---

# TraeStack Upgrade

Upgrade TraeStack deliberately, not by smashing the local install and hoping it still works.

## When To Use
- the user asks to upgrade or update TraeStack
- another skill reports that a newer TraeStack version is available
- a vendored copy needs to be synced with the primary install
- you need to explain what changed after the upgrade finishes

## Core Rules
- detect install type before changing anything
- preserve or restore user state when an upgrade step fails
- separate upgrade execution from post-upgrade explanation
- never leave the user unsure whether the primary install, vendored copy, or both were updated

## Workflow
1. Check whether an upgrade is available and whether auto-upgrade is enabled.
2. Ask the user to upgrade now, enable auto-upgrade, snooze, or disable prompts when needed.
3. Detect whether TraeStack is installed globally, locally, or as a vendored copy.
4. Upgrade the primary install safely, run setup, and restore from backup if required.
5. Sync or remove any secondary vendored copy based on team-mode configuration.
6. Summarize the important changelog items between the old and new versions.

## Output
- the detected install type and path
- whether the primary install, vendored copy, or both were updated
- any backup or restore action taken during failure handling
- a short what-changed summary after a successful upgrade
