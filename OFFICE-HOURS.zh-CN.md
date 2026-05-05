# TraeStack Office Hours（仓库结构 / 能力边界 / 运行依赖）

## 目标

把本仓库收敛为“TraeStack 专属 skills 适配层”，只做：

- 适配层改造：命名、目录、路由、文档与一致性校验
- 能力收敛：明确哪些是 Trae 平台能力、哪些是本仓库提供的 skill 定义
- 边界固化：不修改底层核心执行逻辑与既有工作流，只改技能包装与可发现性

## 仓库结构现状

- `README.md`：仓库级说明
- `skills/`：Trae 可发现的 skill 定义集合
  - `skills/<skill-name>/SKILL.md`：单个 skill 的声明与使用约束
  - `skills/README.md`：技能索引（表格）
  - `skills/ROUTING.md`：推荐路由（按场景选 skill）
  - `skills/NAVIGATION.zh-CN.md`：中文导航
  - `skills/DELIVERY-SUMMARY.md`：交付摘要

## 能力边界（什么在本仓库、什么不在）

### 本仓库负责

- “技能定义层”：每个 `SKILL.md` 的 `name`、`description`、使用时机、规则、工作流、输出格式
- “路由与信息架构”：`ROUTING.md` / `NAVIGATION.zh-CN.md` / `skills/README.md` 的一致性
- “适配与收口”：统一命名、统一路径表述、统一术语，并提供残留扫描与一致性校验

### 本仓库不负责（且本次不改）

- “底层核心执行逻辑”：任何实际工具执行、浏览器驱动、网络抓取、部署与账号集成等运行时能力
- “原有工作流实现”：skill 内提到的流程属于指导性说明，不在此仓库实现

## 运行依赖（稳定调用所依赖的外部条件）

- Trae IDE / Trae Agent Runtime：负责 skill 发现、路由与工具编排
- Trae 内置工具集成：如浏览器能力、终端执行、诊断、Supabase / Stripe 等（按 skill 描述而定）
- 本仓库仅需保证：`skills/<name>/SKILL.md` 格式与命名正确，避免出现“目录名 / skill 名不一致”导致不可发现或误路由

## 风险与约束

- 全量更名会影响历史调用习惯：需要“无损交付”的前提下，把对外入口统一到 `traestack` 命名体系
- 文档与路由必须同步：任何 rename 都要同时改 `SKILL.md` frontmatter、目录名、索引与导航

## 本次交付口径

- 统一把所有对外入口命名收敛为 `traestack`
- 只做 skill 包装层与文档、路由、校验脚本；不引入任何底层执行逻辑变化
