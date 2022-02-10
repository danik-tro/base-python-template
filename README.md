# python-template

[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
[![Checked with mypy](http://www.mypy-lang.org/static/mypy_badge.svg)](http://mypy-lang.org/)
[![wemake-python-styleguide](https://img.shields.io/badge/style-wemake-000000.svg)](https://github.com/wemake-services/wemake-python-styleguide)
[![Imports: isort](https://img.shields.io/badge/%20imports-isort-%231674b1?style=flat&labelColor=ef8336)](https://pycqa.github.io/isort/)
[![Pre-commit: enabled](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white&style=flat)](https://github.com/pre-commit/pre-commit)

## Description
Base python template for projects

## Setup
Init virtualenv, install requirements, install pre-commit hooks
```bash
$ make setup
```


## Useful commands

Run app
```bash
$ make run
```

```bash
$ make test
```

Run tests with coverage
```bash
$ make coverage
```

Clean cache
```bash
$ make clean
```

Mypy
```bash
$ make mypy
```

Flake8
```bash
$ make lint
```

Isort && Black
```bash
$ make black
```
