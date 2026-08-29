#!/bin/bash
# 接收第一个参数作为csv文件路径
csv_file="$1"\
if [ ! -f "$csv_file" ]; then
    echo "Error: file $csv_file does not exist" >&2
    exit 1
fi

echo "==== Top 2 path with most 5xx errors ===="
awk -F',' 'NR>1 && $4 >=500 && $4 < 600 {print $3}' "$csv_file" \
| sort \
| uniq -c \
| sort -k1,1nr -k2,2 \
| head -n 2

echo ""
awk -F',' 'NR>1 {sum += $5; cnt++} END {printf "Avg latency: %.2f ms\n", sum/cnt}' "$csv_file"
