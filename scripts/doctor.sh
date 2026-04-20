#!/usr/bin/env bash
# ============================================================
# 🦞 doctor.sh — Run health checks inside Docker
# ============================================================
set -euo pipefail
cd "$(dirname "$0")/.."

echo "🦞 Running OpenClaw doctor inside container..."
docker compose exec claw openclaw doctor
