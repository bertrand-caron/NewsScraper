PYTHONPATH_VAR = PYTHONPATH=$(PYTHONPATH):$(shell pwd)

FLASK_EXEC = $(PYTHONPATH_VAR) flask

serve:
	FLASK_APP=application.py $(FLASK_EXEC) run --host=0.0.0.0 --port 8083
.PHONY: serve

test: test.py
	python3 test.py
.PHONY: test

articles_V2.json:
	python3 testAPI.py
.PHONY: news_articles.json

news_articles_.json: articles_V2.json
	python3 test.py
.PHONY: news_articles_.json
