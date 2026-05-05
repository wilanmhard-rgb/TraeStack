# TraeStack

TraeStack 是一个面向 Trae 的 skill 定义仓库，提供可发现、可路由、可稳定调用的技能目录与说明文件。

本仓库只负责：

- skill 定义层
- 路由与信息架构
- 文档与一致性校验

本仓库不负责：

- 底层执行引擎
- 浏览器、部署、外部平台等运行时实现
- 原有工作流逻辑改写

## 仓库结构

- `skills/<skill-name>/SKILL.md`：Trae 可发现的 skill 定义
- `skills/README.md`：技能索引
- `skills/ROUTING.md`：技能路由说明
- `skills/NAVIGATION.zh-CN.md`：中文导航
- `skills/DELIVERY-SUMMARY.md`：交付摘要
- `OFFICE-HOURS.zh-CN.md`：仓库边界、运行依赖与适配原则
- `traestack.config.json`：统一配置入口
- `scripts/validate_skills.py`：技能一致性校验脚本
- `scripts/deploy-linux.sh`：Linux 一键部署脚本
- `scripts/deploy-macos.sh`：macOS 一键部署脚本
- `scripts/deploy-windows.ps1`：Windows 一键部署脚本
- `GITHUB-PUBLISH.zh-CN.md`：提交到 GitHub 的完整操作说明

## 快速开始

先校验仓库结构：

```bash
python3 scripts/validate_skills.py
```

如果你要把 skills 安装到本机 Trae：

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

## 默认部署目标

- Linux：`~/.trae/skills`
- macOS：`~/.trae/skills`
- Windows：`%USERPROFILE%\.trae\skills`

部署脚本默认会：

- 校验 `skills/` 是否存在
- 备份当前目标目录中的同名 skill
- 同步当前仓库的全部 skills
- 输出部署结果

## 提交到 GitHub

完整步骤见 `GITHUB-PUBLISH.zh-CN.md`。

最常用的首次提交流程如下：

```bash
git init
git add .
git commit -m "feat: initialize traestack skills repo"
git branch -M main
git remote add origin <你的 GitHub 仓库地址>
git push -u origin main
```

## 说明

- 这是一个适配层仓库，不直接承载底层执行逻辑。
- skill 的可发现性依赖目录名、`SKILL.md` frontmatter 与索引文档保持一致。
- 提交前建议先运行 `python3 scripts/validate_skills.py`。
