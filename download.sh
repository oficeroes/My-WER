#!/bin/bash
cd "$(dirname "$0")" || exit
echo "正在从GitHub下载最新文件..."
git fetch origin main
git reset --hard origin/main
git clean -fd
echo "下载完成！当前文件已更新为最新版本。"
read -p "按回车键继续..."
