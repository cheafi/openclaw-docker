#!/bin/bash
# ============================================================
# 🦞 entrypoint.sh — OpenClaw Docker entrypoint
# ============================================================
# Copies seed config into the state dir on first boot,
# then starts the requested command (gateway by default).
# ============================================================
set -euo pipefail

CONFIG_SRC="/home/openclaw/.openclaw-config/openclaw.json"
CONFIG_DST="/home/openclaw/.openclaw/openclaw.json"

# Seed config on first boot, if empty, or if forced
if [[ -f "$CONFIG_SRC" ]]; then
  if [[ ! -s "$CONFIG_DST" ]] || [[ "${OPENCLAW_FORCE_CONFIG:-}" == "true" ]]; then
    echo "🦞 Seeding openclaw.json from mounted config..."
    cp "$CONFIG_SRC" "$CONFIG_DST"
  fi
fi

exec "$@"
