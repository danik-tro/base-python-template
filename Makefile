.PHONY: setup \
		run \
		test \

virtual_env: ## Alias for virtual environment
	python -m venv ve

setup: virtual_env ## Project setup
	. ve/bin/activate; pip install wheel setuptools
	. ve/bin/activate; pip install --exists-action --no-cache w -Ur requirements/dev.txt
	. ve/bin/activate; pre-commit install

run: virtual_env ## Run project
	. ve/bin/activate; python main.py


# Testing commands
test: virtual_env  ## Run tests
	. ve/bin/activate; python -m pytest -v

coverage: virtual_env  ## Run tests with coverage - load config from tests/config.yaml
	. ve/bin/activate; python -m pytest -vv --cov=application tests/ --no-cov-on-fail --tb=no tests/

# Code style
lint: virtual_env ## Run linter (flake8)
	. ve/bin/activate; flake8

mypy: virtual_env ## Run mypy
	. ve/bin/activate; mypy ./application

black: virtual_env ## Run isort and black
	. ve/bin/activate; isort .; black .

# Clean commands
clean: clean-build clean-pyc clean-test ## Remove all build, test, coverage and Python artifacts
clean-build: ## Remove build artifacts
	rm -fr build/
	rm -fr dist/
	rm -fr .eggs/
	find . -name '*.egg-info' -exec rm -fr {} +
	find . -name '*.egg' -exec rm -f {} +
clean-pyc: ## Remove Python file artifacts
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +
clean-test: ## Remove test and coverage artifacts
	rm -f .coverage
	rm -fr htmlcov/
