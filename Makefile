.PHONY: serve

PORT ?= 8000

serve:
	python3 -m http.server $(PORT) --bind 0.0.0.0 --directory docs
