#!/usr/bin/env bash
# ============================================================
# 🦞 cleanup.sh — Full Docker cleanup
# ============================================================
set -euo pipefail
cd "$(dirname "$0")/.."

echo "🧹 Stopping containers..."
docker compose down --remove-orphans

read -rp "Also remove the openclaw-state volume? (y/N) " yn
if [[ "${yn}" =~ ^[Yy]$ ]]; then
  docker volume rm openclaw-state 2>/dev/null && echo "  ✅ Volume removed" || echo "  ⚠️  Volume not found"
fi

read -rp "Also remove the Docker image? (y/N) " yn
if [[ "${yn}" =~ ^[Yy]$ ]]; then
  docker rmi openclaw-docker-claw 2>/dev/null && echo "  ✅ Image removed" || echo "  ⚠️  Image not found"
fi

echo "🧼 Done."
