#!/usr/bin/env bash
set -euo pipefail

bun run validate:renovate:config
bun run test:renovate:config
