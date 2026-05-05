# TraeStack

TraeStack is a Trae-oriented skill definition repository that provides discoverable, routable, and stable skill documentation and delivery artifacts.

This repository is responsible for:

- the skill definition layer
- routing and information architecture
- documentation and consistency validation

This repository does not handle:

- the underlying execution engine
- runtime implementations such as browser, deployment, or external platform integrations
- rewrites of existing workflow logic

## Repository Structure

- `skills/<skill-name>/SKILL.md`: Trae-discoverable skill definition
- `skills/README.md`: skill index
- `skills/ROUTING.md`: skill routing guide
- `skills/NAVIGATION.zh-CN.md`: Chinese navigation
- `skills/DELIVERY-SUMMARY.md`: delivery summary
- `OFFICE-HOURS.zh-CN.md`: repository boundary, dependency, and alignment notes
- `traestack.config.json`: unified configuration entry
- `scripts/validate_skills.py`: skill consistency validation script
- `scripts/deploy-linux.sh`: one-click deployment for Linux
- `scripts/deploy-macos.sh`: one-click deployment for macOS
- `scripts/deploy-windows.ps1`: one-click deployment for Windows
- `GITHUB-PUBLISH.zh-CN.md`: step-by-step GitHub publishing guide

## Quick Start

Validate repository consistency first:

```bash
python3 scripts/validate_skills.py
```

If you want to install the skills into your local Trae environment:

### Linux

```bash
bash scripts/deploy-linux.sh
```

### macOS

```bash
bash scripts/deploy-macos.sh
```

### Windows PowerShell

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\deploy-windows.ps1
```

## Default Deployment Targets

- Linux: `~/.trae/skills`
- macOS: `~/.trae/skills`
- Windows: `%USERPROFILE%\.trae\skills`

By default, the deployment scripts will:

- verify that `skills/` exists
- back up existing skills with the same name in the target directory
- sync all skills from this repository
- print the deployment result

## Publish to GitHub

See `GITHUB-PUBLISH.zh-CN.md` for the complete publishing workflow.

The most common first-time publish flow is:

```bash
git init
git add .
git commit -m "feat: initialize traestack skills repo"
git branch -M main
git remote add origin <your GitHub repository URL>
git push -u origin main
```

## Notes

- This is an adaptation-layer repository and does not contain the underlying execution logic.
- Skill discoverability depends on directory names, `SKILL.md` frontmatter, and index documents staying consistent.
- Run `python3 scripts/validate_skills.py` before pushing changes when possible.
