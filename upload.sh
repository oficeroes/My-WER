#!/bin/bash
cd "$(dirname "$0")" || exit
echo "正在上传本地修改到GitHub..."
git add .
git commit -m "自动同步: $(date '+%Y-%m-%d %H:%M:%S')"
git pull origin main
git push origin main
echo "上传完成！"

