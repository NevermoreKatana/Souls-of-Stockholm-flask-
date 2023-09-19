install:
    curl -sSL https://install.python-poetry.org | POETRY_PREVIEW=1 python3 -
dev:
	poetry run flask --app stockholm_souls:app run --debug

PORT ?= 8000
start:
	poetry run gunicorn -w 5 -b 0.0.0.0:$(PORT) stockholm_souls:app

make lint:
	poetry run flake8 page_analyzer
