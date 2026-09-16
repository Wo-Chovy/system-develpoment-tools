# 读取markdown模板
text = open("report.md").read()
# 读取上一步生成的中间结果
total = open("stats.txt").read()
# 拼接内容输出最终报告report.txt
open("report.txt", "w").write(f"{text}\nTotal: {total}\n")
