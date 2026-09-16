1.提示：修改cli.py，name全空白时sys.exit(2)，不改动测试与配置。
2.AI改动：增加import sys，添加strip空白判断，空白执行sys.exit(2)。
3.人工检查diff：无无关修改，保留改动。
4.验证：pytest全部通过；空白输入退出码=2，正常名字输出问候。
