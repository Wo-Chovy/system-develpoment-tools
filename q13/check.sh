#!/usr/bin/env bash
set -e

echo "===== 1. ruff format --check (检查格式化，不修改文件) ====="
python -m ruff format --check .

echo "===== 2. ruff check (静态代码检查) ====="
python -m ruff check .

echo "===== 3. pytest 单元测试 ====="
python -m pytest

echo "✅ 全部质量门禁通过"
