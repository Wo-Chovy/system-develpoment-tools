# tests/test_cli.py
import subprocess
import sys


def test_normal_name():
    """测试正常非空白姓名，输出正确问候，退出码0"""
    result = subprocess.run([sys.executable, "-m", "greetlab.cli", "--name", "Alice"], capture_output=True, text=True)
    assert result.returncode == 0
    assert "Hello, Alice!" in result.stdout


def test_blank_name_raise_exit2():
    """测试全空白姓名，SystemExit(2)，退出码为2"""
    result = subprocess.run([sys.executable, "-m", "greetlab.cli", "--name", "   "], capture_output=True, text=True)
    assert result.returncode == 2
