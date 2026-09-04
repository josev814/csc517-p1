#!/usr/bin/env bash
set -eo pipefail

# ensure that the gems are installed
bundle install

# launches container command
exec "$@"
