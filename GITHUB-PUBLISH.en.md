# How to Publish to GitHub

This document explains how to publish the current `TraeStack` repository to GitHub and how others can pull it and deploy it into their local Trae environment.

## 1. Create a Repository on GitHub

Create an empty repository on GitHub first, for example:

- Repository name: `TraeStack`
- Visibility: `Public` or `Private`
- Initialization options: do not select `README`, `.gitignore`, or `license`

After creation, GitHub will provide a remote URL in one of these common forms:

```bash
https://github.com/<your-name>/TraeStack.git
```

or:

```bash
git@github.com:<your-name>/TraeStack.git
```

## 2. First Local Commit

If the current directory has not been initialized as a git repository yet:

```bash
git init
git add .
git commit -m "feat: initialize traestack skills repo"
git branch -M main
git remote add origin <your GitHub repository URL>
git push -u origin main
```

## 3. If the Local Directory Is Already a Git Repository

Check the current remotes first:

```bash
git remote -v
```

If there is no `origin` yet:

```bash
git remote add origin <your GitHub repository URL>
git push -u origin main
```

If `origin` already exists but points to the wrong address:

```bash
git remote set-url origin <your GitHub repository URL>
git push -u origin main
```

## 4. Ongoing Update Workflow

After each update, run:

```bash
python3 scripts/validate_skills.py
git status
git add .
git commit -m "feat: update traestack skills"
git push
```

## 5. Recommended Files to Show on the GitHub Home Page

Keep these files visible so people understand the repository quickly:

- `README.md`: repository home page overview
- `skills/README.md`: skill index
- `skills/ROUTING.md`: routing guide
- `skills/NAVIGATION.zh-CN.md`: Chinese navigation
- `OFFICE-HOURS.zh-CN.md`: capability boundary notes

## 6. How Others Can Use Your Repository

Clone the repository:

```bash
git clone <your GitHub repository URL>
cd TraeStack
```

Then run the one-click deployment script for the target operating system:

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

## 7. Default Deployment Targets

- Linux: `~/.trae/skills`
- macOS: `~/.trae/skills`
- Windows: `%USERPROFILE%\.trae\skills`

## 8. FAQ

### 8.1 `git push` says you do not have permission

This usually means you do not have write access to the repository or your current authentication method is misconfigured.

Check these items first:

- whether you are logged in to GitHub
- whether HTTPS is configured with a valid token
- whether your SSH key has been added to GitHub

### 8.2 Trae does not discover the new skills after deployment

Please check:

- whether the target directory is correct
- whether `skills/<name>/SKILL.md` exists
- whether Trae has been restarted or its skill discovery has been refreshed
- whether `python3 scripts/validate_skills.py` has been run first

### 8.3 I want to deploy to a custom directory

All three deployment scripts support overriding the target directory through environment variables:

- Linux/macOS: `TRAESTACK_TARGET_DIR`
- Windows: `$env:TRAESTACK_TARGET_DIR`

Example:

```bash
TRAESTACK_TARGET_DIR=/tmp/trae-skills bash scripts/deploy-linux.sh
```

```powershell
$env:TRAESTACK_TARGET_DIR = "D:\temp\trae-skills"
powershell -ExecutionPolicy Bypass -File .\scripts\deploy-windows.ps1
```
