# 提交到 GitHub 操作说明

本文档用于把当前 `TraeStack` 仓库发布到 GitHub，并说明如何让其他人拉取后快速部署到本地 Trae。

## 1. 在 GitHub 创建仓库

先在 GitHub 新建一个空仓库，例如：

- 仓库名：`TraeStack`
- 可见性：`Public` 或 `Private`
- 初始化选项：不要勾选 `README`、`.gitignore`、`license`

创建完成后，GitHub 会给你一个远程地址，常见形式如下：

```bash
https://github.com/<your-name>/TraeStack.git
```

或：

```bash
git@github.com:<your-name>/TraeStack.git
```

## 2. 本地首次提交

如果当前目录还没有初始化 git：

```bash
git init
git add .
git commit -m "feat: initialize traestack skills repo"
git branch -M main
git remote add origin <你的 GitHub 仓库地址>
git push -u origin main
```

## 3. 如果本地已经是 git 仓库

先检查当前远程：

```bash
git remote -v
```

如果还没有 `origin`：

```bash
git remote add origin <你的 GitHub 仓库地址>
git push -u origin main
```

如果已经有 `origin`，但地址不对：

```bash
git remote set-url origin <你的 GitHub 仓库地址>
git push -u origin main
```

## 4. 后续更新提交流程

每次更新后执行：

```bash
python3 scripts/validate_skills.py
git status
git add .
git commit -m "feat: update traestack skills"
git push
```

## 5. 建议在 GitHub 首页展示的内容

建议保留以下文件，方便别人打开仓库就能理解：

- `README.md`：仓库主页说明
- `skills/README.md`：技能索引
- `skills/ROUTING.md`：路由说明
- `skills/NAVIGATION.zh-CN.md`：中文导航
- `OFFICE-HOURS.zh-CN.md`：能力边界说明

## 6. 其他人如何使用你的仓库

拉取仓库：

```bash
git clone <你的 GitHub 仓库地址>
cd TraeStack
```

然后根据系统执行一键部署：

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

## 7. 部署后的默认目标目录

- Linux：`~/.trae/skills`
- macOS：`~/.trae/skills`
- Windows：`%USERPROFILE%\.trae\skills`

## 8. 常见问题

### 8.1 `git push` 提示没有权限

说明你没有该仓库写权限，或者当前认证方式有问题。

可优先检查：

- GitHub 是否已登录
- HTTPS 是否配置 token
- SSH key 是否已添加到 GitHub

### 8.2 执行部署后 Trae 没发现新 skill

请检查：

- 目标目录是否正确
- `skills/<name>/SKILL.md` 是否存在
- 是否重启或刷新了 Trae 的 skill 发现
- 是否先运行了 `python3 scripts/validate_skills.py`

### 8.3 我想部署到自定义目录

三个部署脚本都支持通过环境变量覆盖目标目录：

- Linux/macOS：`TRAESTACK_TARGET_DIR`
- Windows：`$env:TRAESTACK_TARGET_DIR`

示例：

```bash
TRAESTACK_TARGET_DIR=/tmp/trae-skills bash scripts/deploy-linux.sh
```

```powershell
$env:TRAESTACK_TARGET_DIR = "D:\temp\trae-skills"
powershell -ExecutionPolicy Bypass -File .\scripts\deploy-windows.ps1
```
