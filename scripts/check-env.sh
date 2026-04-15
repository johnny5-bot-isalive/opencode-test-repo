#!/usr/bin/env bash
# check-env.sh — validate .env.example coverage against actual required vars
set -euo pipefail

env_example=".env.example"
env_file=".env"

if [[ ! -f "$env_example" ]]; then
  echo "SKIP: $env_example not found"
  exit 0
fi

required_vars=$(grep -v '^#' "$env_example" | grep -v '^$' | cut -d= -f1 | sort -u)
echo "Required vars from $env_example:"
echo "$required_vars"

if [[ -f "$env_file" ]]; then
  actual_vars=$(grep -v '^#' "$env_file" | grep -v '^$' | cut -d= -f1 | sort -u)
  echo ""
  echo "Actual vars in $env_file:"
  echo "$actual_vars"
  missing=$(comm -23 <(echo "$required_vars") <(echo "$actual_vars"))
  if [[ -n "$missing" ]]; then
    echo ""
    echo "WARNING: missing vars not yet set:"
    echo "$missing"
  else
    echo ""
    echo "OK: all required vars are present"
  fi
else
  echo ""
  echo "INFO: $env_file not present — copy $env_example to $env_file and fill in values"
fi
