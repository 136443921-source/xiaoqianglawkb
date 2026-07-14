# 每日知识摄入自动化 - 执行记忆

## 自动化元信息
- ID：automation-1783920420205
- 名称：每日知识摄入（合并版 v1.0）
- 频率：每日 08:30
- 合并来源：每日综合学习（合同文书+人伤法+xiaoqianglawkb）+ IMA 新增内容提炼 + 学习资料推荐

## 执行记录

### 2026-07-14（首次执行）
- 状态：✅ 全部子任务完成
- A1 合同文书：1 文件（IMA 新入库《股权转让协议（参考及注意事项）》，已提炼至 知识飞轮系统/02-提炼/合同文书笔记/）
- A2 人伤法：0（IMA 人伤 KB 24h 无新增个体文件；累计 122/1223，9.98%）
- A3 xiaoqianglawkb：0 新增（近 3 日仅自动化日志更新；git 末次提交 06-28）
- B IMA 提炼：监控 5 个 KB，新增 1 / 成功 1 / 跳过 0 / 失败 0；🔧 修复昨日"IMA API 认证失败"（今日 5/5 可达）
- C 推荐：10 份（高 4/中 4/低 2），4 项遗忘曲线复习；落库 xiaoqianglawkb/logs/学习资料推荐-2026-07-14.md
- 综合报告：学习笔记/每日知识摄入报告/每日知识摄入报告-2026年07月14日.md
- 企微推送：未发送（自动化 push_to_wechat=false）

## 关键经验
- IMA 5 个目标 KB 均为"厚德基金会"共享 KB（type 1004），不在 MINE_KB 列表，但可直接用 kb_id 调用 get_knowledge_list。
- IMA MCP 可用工具：get_knowledge_base_list、get_knowledge_list（含 create_time、sort_type=UPDATE_TS_DESC_SORT_TYPE）、search_knowledge、fetch_media_content。
- get_knowledge_base_list 的 type 不能为 KBT_UNUSE，需用 KBT_MINE_KB 等具体类型。
- 根目录 sort by update_ts 多为文件夹；个体新增文件需看 media_type≠99 的条目（folder media_type=99）。
- 人伤 KB（7312035322822509，1237 件）根目录仅文件夹，新增检测需下钻文件夹（未做以控成本）。
