#!/usr/bin/env bash

OUTPUT="summary.md"

# 写入Markdown标题与表头，>覆盖旧文件
cat > "$OUTPUT" <<MD
# Package Summary

| name | version | downloads |
|------|---------|-----------|
MD

# curl获取API，jq处理，>>追加表格数据行
curl -fsS http://127.0.0.1:8000/package.json | jq -r '
map(select(.status == "active" and .downloads >= 100))
| sort_by(-.downloads, .name)
| map("| \(.name) | \(.version) | \(.downloads) |")
| .[]
' >> "$OUTPUT"

echo "报告已生成：$OUTPUT"
