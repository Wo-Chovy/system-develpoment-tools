import argparse


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--name", required=True)
    a = p.parse_args()
    # 判断是否全部为空白字符
    if not a.name.strip():
        raise SystemExit(2)
    print(f"Hello, {a.name}!")


if __name__ == "__main__":
    main()
