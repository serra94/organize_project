install:
	poetry install

format:
	isort .
	blue .

test:
	pytest -v .

clear_cache:
	./scripts/cleanup_script.sh

sec:
	pip-audit .

