#!/bin/bash
# Check environment setup

set -e

echo "=== Environment Check ==="

if [[ ! -f .env ]]; then
    echo "WARNING: .env file not found. Copy .env.example to .env and configure."
    exit 1
fi

echo "OK: Environment configured"
exit 0