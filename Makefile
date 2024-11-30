SHELL := /bin/bash

all:
	for doc in docs/*/; do \
	  if [[ $$doc == _* ]]; then continue; fi; \
	  for format in formats/*.tex; do \
	    if [[ $$format == _* ]]; then continue; fi; \
	    echo "=== $$doc [$$format]"; \
	    FORMAT_FILE=$$format make -C "$$doc"; \
	  done \
	done

serve:
	python -m http.server 8000
