# opencode-test-repo

A production-ready baseline repo for OpenCode-driven projects.

## Quick Start

```bash
# Copy and configure environment
cp .env.example .env
# Edit .env with your settings

# Check environment
make env-check

# Lint (when added)
make lint

# Test (when added)
make test

# Full CI run
make ci
```

## What's Included

- `.editorconfig` — consistent formatting across editors/IDEs
- `.gitignore` — common excludes for Node, Python, macOS, etc.
- `.env.example` — template for required environment variables
- `LICENSE` — MIT license (update copyright as needed)
- `Makefile` — reproducible `env-check`, `lint`, `test`, `ci` targets
- `scripts/check-env.sh` — environment validation script
- `.github/workflows/ci.yml` — GitHub Actions CI pipeline
- `opencode-harness.sh` — OpenCode default harness targeting `/home/jaret/repos`

## License

MIT — see [LICENSE](LICENSE)