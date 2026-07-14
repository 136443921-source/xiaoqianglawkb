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

## IMA 知识库 MCP 接入（每日知识摄入自动化用）

- ima-mcp 已连接。可用工具：`get_knowledge_base_list`、`get_knowledge_list`（参数 knowledge_base_id+limit+sort_type，返回含 create_time、media_type；文件夹 media_type=99）、`search_knowledge`、`fetch_media_content`（参数 media_id）。
- `get_knowledge_base_list` 的 type 不能为 KBT_UNUSE，须用 KBT_MINE_KB 等；5 个目标 KB 为"厚德基金会"共享 KB（type 1004），不在 MINE 列表，但可直接用 kb_id 调用 get_knowledge_list。
- 5 个监控 KB 的 ID：
  - 人伤法律实务助手 7312035322822509（1237 件）
  - 合同文书AI助手 7312048136419112（2767 件）
  - 律师AI助手 7312042960642489（1327 件）
  - 合规与政府监管AI助手 7333014572917409（544 件）
  - 慈善组织合规AI助手 7311644304633438（324 件）
- 24h 新增检测：get_knowledge_list 按 UPDATE_TS_DESC_SORT_TYPE 取根目录前 10，筛 media_type≠99 且 create_time 在窗口内的个体文件；文件夹（media_type=99）的个体新增需下钻 folder_id（控成本时可仅标记待办）。
- 落库目标：知识飞轮系统/02-提炼/ 下按类型分子目录（已建 合同文书笔记/）；IMA-Inbox/待处理/ 存新增文件列表与去重跳过列表。
