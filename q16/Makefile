.PHONY: check build clean

check:
	./check.sh

build:
	python -m build

clean:
	rm -rf dist build *.egg-info
	find . -name "__pycache__" -type d -exec rm -rf {} +
