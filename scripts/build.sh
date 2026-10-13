#!/usr/bin/env bash
# 同步 skill 副本并打包发行物。
# 1. 把 plugins/aiset-viral-writer/skills/ 同步到仓库根部 skills/（给非 Claude 平台用）
# 2. 生成 release/aiset-viral-writer.zip（给 Claude.ai / ChatGPT 等支持 zip 上传的平台用）
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$ROOT/plugins/aiset-viral-writer/skills/aiset-viral-writer"

rm -rf "$ROOT/skills"
mkdir -p "$ROOT/skills"
cp -r "$SRC" "$ROOT/skills/aiset-viral-writer"

rm -rf "$ROOT/release"
mkdir -p "$ROOT/release"
( cd "$ROOT/skills" && zip -qr "$ROOT/release/aiset-viral-writer.zip" aiset-viral-writer )

echo "ok: skills/ synced, release/aiset-viral-writer.zip built"
