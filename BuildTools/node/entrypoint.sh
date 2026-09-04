#!/usr/bin/env bash
set -eo pipefail

# ensure that the node modules are installed
pnpm install

# launches container command
exec "$@"
