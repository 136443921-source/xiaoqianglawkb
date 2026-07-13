# lawkb 项目长期记忆

## 备份同步约定（obsidian-lawkb 自动化）

- 仓库路径：`/Users/chenyouqiang/Documents/Obsidian/lawkb`
- 远程：`git@github.com-obsidian:136443921-source/xiaoqianglawkb.git`（分支 `main`）
- ⚠️ **`logs/git-sync.log` 已在 `.gitignore` 中，属本地专用日志，不会推送到 GitHub**。该日志记录了同步时间/状态/哈希等，但只存本地。
- 自动化记忆文件 `.workbuddy/automations/automation-1782641923967/memory.md` 常态领先 HEAD 一个提交（每轮先提交上一轮写入的内容，再写入本轮记录）。
- 自动化任务显示名原为 `obsidian-xiaoqianglawkb 自动备份同步`，2026-07-14 应要求改为 `obsidian-lawkb 自动备份同步`。
- 调度：每日（每 3 天）22:01 执行。

## 知识库编译规范

- 详见仓库根 `AGENTS.md`（法律知识库管理员工作手册 v1.0，2026-06-27）。
- raw/ 为事实来源，只读不写；Wiki 页面生成到 wiki/ 对应子目录。
- 律师专用：法条须含全称+条款号+摘要；注意《合同法》已废止应引《民法典》。
