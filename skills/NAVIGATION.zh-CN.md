# Trae Skills 中文导航

这个仓库提供一套 Trae 可发现的 TraeStack skills。下面这份导航页优先帮助你按场景选 skill，而不是按文件名硬猜。

## 第一梯队：最常用入口

- `office-hours`：想法评估、产品脑暴、收敛范围
- `investigate`：报错、回归、异常行为、根因排查
- `review`：代码审查、Diff 审查、合并前风险检查
- `qa`：像用户一样测试网站或流程，并给出证据
- `ship`：准备发布、整理分支、提交 PR 前收口

## 第二梯队：更完整的闭环能力

- `autoplan`：把一个计划从多个视角自动审一遍
- `browse`：打开站点、检查页面、抓取页面证据
- `plan-ceo-review`：从产品、战略、范围角度挑战计划
- `plan-eng-review`：从架构、执行风险、可测试性角度审计划
- `land-and-deploy`：合并、部署、上线后验证

## 第三梯队：高频专项技能

- `devex-review`：审开发者体验，重点看 onboarding、文档、CLI、报错、TTHW
- `design-review`：审 UI 质量、层级、间距、交互反馈和视觉一致性
- `setup-deploy`：梳理部署平台、生产地址、健康检查与验证方式
- `open-traestack-browser`：启动并验证可见浏览器，方便后续浏览器类任务接力
- `document-release`：发版前后同步 README、CHANGELOG、贡献文档和项目说明

## 第四梯队：浏览器与上下文闭环

- `setup-browser-cookies`：导入真实浏览器登录态，给后续浏览器任务补认证前置
- `scrape`：从页面提取结构化数据，输出稳定 JSON
- `skillify`：把一次成功 scrape 固化成可复用 browser skill
- `context-save`：保存当前工作状态、决策和下一步
- `context-restore`：恢复最近上下文，快速继续工作

## 第五梯队：质量、监控与护栏

- `qa-only`：只做浏览器 QA 和报告，不改代码
- `canary`：部署后持续观察关键页面，发现上线回归
- `health`：跑项目已有质量工具，产出仓库健康仪表盘
- `careful`：给危险命令加护栏，先提示风险再决定是否继续
- `freeze`：把编辑范围锁在某个目录，避免误改无关文件

## 第六梯队：维护、恢复与项目记忆

- `guard`：同时开启危险命令护栏和目录级编辑边界，适合高风险会话
- `unfreeze`：解除当前编辑边界，恢复仓库级修改范围
- `learn`：查看、搜索、清理、导出项目历史 learnings
- `landing-report`：只读查看 VERSION 队列、PR 占位和 sibling workspace 压力
- `traestack-upgrade`：安全升级 TraeStack，并总结升级后值得关注的变化

## 第七梯队：协作接力、基准与复盘

- `setup-gbrain`：给本机 agent 配好持久记忆、MCP 和 repo 级信任策略
- `pair-agent`：把当前 TraeStack 浏览器共享给另一个本地或远端 agent
- `benchmark`：测页面性能、对比基线、定位回归和预算超标
- `benchmark-models`：让多个模型跑同一个 prompt，对比速度、成本和质量
- `retro`：按时间窗口生成工程复盘，汇总提交、节奏、测试和产出

## 第八梯队：设计与安全收敛

- `cso`：做只读安全审计，覆盖 secrets、供应链、CI/CD、集成和 LLM 风险
- `design-consultation`：把产品背景收敛成完整设计系统，并沉淀成长期设计约束
- `design-shotgun`：一次生成多套设计方向，用结构化反馈快速收敛
- `design-html`：把批准过的设计或方案变成可运行的 HTML / 前端组件
- `plan-design-review`：从设计视角补齐计划里的层级、状态、响应式和可访问性

## 第九梯队：主干入口与交付收口

- `traestack`：作为浏览器 dogfooding 总入口，帮你在 `browse`、`qa`、`qa-only`、`benchmark`、`scrape` 等能力之间做路由
- `codex`：拉一个 Codex 第二意见，支持 review、challenge、consult 三种只读模式
- `plan-devex-review`：从开发者体验视角审计划，重点补 onboarding、文档、CLI 或 API 设计、报错和 TTHW
- `plan-tune`：查看并调整提问偏好、问题日志和开发者画像
- `make-pdf`：把 Markdown 产物导出成更适合交付的高质量 PDF

## 直接路由

- “这个想法值不值得做？” -> `office-hours`
- “为什么坏了？” -> `investigate`
- “帮我审一下改动” -> `review`
- “帮我测一下这个站” -> `qa`
- “帮我发版 / 提 PR” -> `ship`
- “把整个方案自动审一遍” -> `autoplan`
- “打开页面帮我看看” -> `browse`
- “从产品方向挑战这个计划” -> `plan-ceo-review`
- “从工程实现角度审计划” -> `plan-eng-review`
- “合并并验证部署” -> `land-and-deploy`
- “看看开发者体验哪里卡” -> `devex-review`
- “帮我挑 UI / 设计问题” -> `design-review`
- “先把部署信息配好” -> `setup-deploy`
- “打开 TraeStack 的可见浏览器” -> `open-traestack-browser`
- “把发版文档补齐” -> `document-release`
- “导入浏览器登录态” -> `setup-browser-cookies`
- “把页面数据抓成 JSON” -> `scrape`
- “把这次抓取变成可复用 skill” -> `skillify`
- “先保存当前进度” -> `context-save`
- “把之前保存的上下文恢复出来” -> `context-restore`
- “只测不修，给我 QA 报告” -> `qa-only`
- “发布后盯一下线上” -> `canary`
- “看看仓库健康度” -> `health`
- “危险命令先拦一下” -> `careful`
- “把修改范围锁在这个目录里” -> `freeze`
- “把危险命令和改动范围一起管住” -> `guard`
- “解除目录锁定” -> `unfreeze`
- “这个项目之前学到了什么？” -> `learn`
- “看看现在谁会先落版本号” -> `landing-report`
- “把 TraeStack 升到最新版” -> `traestack-upgrade`
- “把 gbrain 在这台机器上配好” -> `setup-gbrain`
- “让另一个 agent 也能用这个浏览器” -> `pair-agent`
- “测一下这个页面有没有性能回归” -> `benchmark`
- “对比几个模型谁更适合这个任务” -> `benchmark-models`
- “给我出一份这周工程复盘” -> `retro`
- “帮我做一次安全审计” -> `cso`
- “先把设计系统定下来” -> `design-consultation`
- “给我几套设计方向看看” -> `design-shotgun`
- “把这个设计稿做成可运行页面” -> `design-html`
- “从设计角度审一下这个方案” -> `plan-design-review`
- “走 TraeStack 那套浏览器主流程” -> `traestack`
- “找 Codex 给个第二意见” -> `codex`
- “从开发者体验角度审这个计划” -> `plan-devex-review`
- “别再问我这类问题了” -> `plan-tune`
- “把这份 Markdown 导出成 PDF” -> `make-pdf`

## 使用建议

- 不确定时，先从第一梯队里挑最贴近用户请求的 skill。
- 任务跨越“计划 -> 实现 -> 测试 -> 发布”多个阶段时，再考虑第二梯队。
- 第三到第九梯队更适合专项审查、浏览器闭环、质量面板、安全护栏、项目记忆、协作接力、基准分析、设计系统、安全审计、浏览器入口路由、提问偏好调优和文档交付类动作，不建议一上来就替代核心 skill。
- 总路由说明见 `skills/ROUTING.md`。
