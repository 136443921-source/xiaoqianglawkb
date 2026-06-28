#!/bin/bash
# obsidian-xiaoqianglawkb Git 自动备份脚本
# 使用方法：./sync.sh

cd "/Users/chenyouqiang/Documents/Obsidian/lawkb" || exit 1

echo "📦 obsidian-xiaoqianglawkb Git 备份同步"
echo "⏰ 开始时间：$(date '+%Y-%m-%d %H:%M:%S')"
echo ""

# 检查是否有未提交的修改
if [[ -z $(git status --porcelain) ]]; then
    echo "✅ 无新增修改，跳过备份"
    exit 0
fi

# 添加所有修改
git add -A

# 提交修改
COMMIT_MSG="自动备份：$(date '+%Y-%m-%d %H:%M:%S') - 手动同步"
git commit -m "$COMMIT_MSG"

# 推送到远程仓库
if git push origin main; then
    echo "✅ 推送成功"
    echo "🔖 提交哈希：$(git rev-parse --short HEAD)"
    
    # 记录日志
    mkdir -p logs
    echo "{\"time\":\"$(date -Iseconds)\",\"status\":\"success\",\"hash\":\"$(git rev-parse --short HEAD)\"}" >> logs/git-sync.log
    
    echo ""
    echo "🔒 数据安全：已同步到 GitHub"
    echo "📜 查看：https://github.com/136443921-source/xiaoqianglawkb/commits/main"
else
    echo "❌ 推送失败，请检查网络连接"
    
    # 记录错误日志
    mkdir -p logs
    echo "{\"time\":\"$(date -Iseconds)\",\"status\":\"failed\",\"error\":\"push failed\"}" >> logs/git-sync.log
    exit 1
fi
