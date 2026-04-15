SHELL := /usr/bin/env bash

.PHONY: setup env-check format format-check lint test typecheck build dev ci

setup:
	@echo "No install step is required yet for this baseline repo."
	@echo "Optional local tools: shellcheck, markdownlint-cli, prettier"

env-check:
	@bash scripts/check-env.sh

format:
	@if command -v prettier >/dev/null 2>&1; then \
	  prettier --write .; \
	else \
	  echo "prettier not installed, skipping format"; \
	fi

format-check:
	@if command -v prettier >/dev/null 2>&1; then \
	  prettier --check .; \
	else \
	  echo "prettier not installed, skipping format check"; \
	fi

lint:
	@if command -v shellcheck >/dev/null 2>&1; then \
	  shellcheck scripts/*.sh; \
	else \
	  echo "shellcheck not installed, skipping shell lint"; \
	fi
	@if command -v markdownlint >/dev/null 2>&1; then \
	  markdownlint --config .markdownlint.json "**/*.md"; \
	else \
	  echo "markdownlint not installed, skipping markdown lint"; \
	fi

test:
	@bash scripts/test-template.sh

typecheck:
	@echo "No typecheck step is configured yet. Add one when the app stack is chosen."

build:
	@echo "No build step is configured yet. Add one when the app stack is chosen."

dev:
	@echo "No dev server is configured yet. Add one when the app stack is chosen."

ci: env-check format-check lint test typecheck build
