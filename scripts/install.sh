#!/usr/bin/env bash
# 一键把 skill 安装到本地 agent 的 skills 目录。
# 用法：
#   curl -fsSL https://raw.githubusercontent.com/icodebase-cn/aiset-viral-writer/main/scripts/install.sh | bash
#   或指定目标目录： TARGET=~/.codex/skills bash scripts/install.sh
set -euo pipefail

REPO="${REPO:-https://github.com/icodebase-cn/aiset-viral-writer}"
BRANCH="${BRANCH:-main}"
TARGET="${TARGET:-$HOME/.claude/skills}"

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "==> 下载 $REPO ($BRANCH)"
git clone --depth 1 --branch "$BRANCH" "$REPO" "$TMP/repo" >/dev/null 2>&1

mkdir -p "$TARGET"
rm -rf "$TARGET/aiset-viral-writer"
cp -r "$TMP/repo/plugins/aiset-viral-writer/skills/aiset-viral-writer" "$TARGET/aiset-viral-writer"

echo "==> 已安装到 $TARGET/aiset-viral-writer"
echo "重启你的 agent 会话即可生效。"
