SHELL := /usr/bin/env bash

.PHONY: setup env-check lint test ci

setup:
	@echo "No install step is required yet for this baseline repo."

env-check:
	@bash scripts/check-env.sh

lint:
	@echo "Lint placeholder: add repo-specific linters as the project stack becomes concrete."
	@if command -v shellcheck >/dev/null 2>&1; then shellcheck scripts/*.sh; else echo "shellcheck not installed, skipping"; fi

test:
	@echo "Test placeholder: run repo-specific tests as they are added."
	@shopt -s nullglob; files=(scripts/test-*.sh); \
	if (( $${#files[@]} == 0 )); then \
	  echo "No test scripts found in scripts/"; \
	else \
	  for f in "$${files[@]}"; do bash "$${f}" && echo "PASS: $${f}"; done; \
	fi

ci: env-check lint test
