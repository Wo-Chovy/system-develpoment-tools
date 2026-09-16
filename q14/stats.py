import csv

# 打开csv读取全部行
with open("data.csv") as f:
    rows = list(csv.DictReader(f))

# 计算value总和
total = sum(int(r["value"]) for r in rows)

# 将总和写入stats.txt（中间产物）
open("stats.txt", "w").write(str(total))
