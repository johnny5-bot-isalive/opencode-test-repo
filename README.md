# opencode-test-repo

A reusable baseline/template repo for future projects created under `/home/jaret/repos`, whether they start in OpenCode or another IDE.

## Quick Start

```bash
# Copy and configure environment
cp .env.example .env
# Edit .env with your settings

# Validate the baseline locally
make env-check
make lint
make test
make ci
```

## Available commands

- `make setup` prints optional local tooling you can install for richer checks
- `make env-check` validates required environment variables
- `make format` formats files when `prettier` is installed locally
- `make format-check` checks formatting when `prettier` is installed locally
- `make lint` runs `shellcheck` and `markdownlint` when available
- `make test` runs the template smoke test
- `make typecheck` is a placeholder until a real stack is chosen
- `make build` is a placeholder until a real stack is chosen
- `make dev` is a placeholder until a real stack is chosen
- `make ci` runs the current local CI-equivalent chain

## What's included

- `.editorconfig` for editor-level formatting consistency
- `.gitignore` with common exclusions for Node, Python, IDE, OS, temp, and coverage files
- `.env.example` and `.env` starter files for environment setup
- `LICENSE` with an MIT baseline
- `.prettierrc.json` and `.prettierignore` for formatting defaults
- `.markdownlint.json` for Markdown linting defaults
- `Makefile` with reproducible developer commands
- `scripts/check-env.sh` for environment validation
- `scripts/test-template.sh` for baseline smoke testing
- `scripts/opencode-harness.sh` to copy this repo into a new repo under `/home/jaret/repos`
- `.github/workflows/ci.yml` for GitHub Actions CI

## Notes

- This repo is the reusable starter, not the eventual application repo.
- Review fallback: when the OpenClaw `diffs` tool is unavailable in a worker session, use `git diff --stat`, `git diff --unified`, and ordinary file reads as the documented review path.
- Once a real stack is chosen, replace the placeholder `dev`, `build`, and `typecheck` steps with stack-specific commands.

## License

MIT, see [LICENSE](LICENSE).
