#!/usr/bin/env bash
# ============================================================
# 🦞 install-skills.sh — Install skills inside Docker
# ============================================================
# Usage:  ./scripts/install-skills.sh
# ============================================================
set -euo pipefail
cd "$(dirname "$0")/.."

SKILLS=(
  skill-vetter
  openclaw-tavily-search
  agent-browser
  github
  gog
  discord
)

echo "🦞 Installing ${#SKILLS[@]} skills via Docker..."

for slug in "${SKILLS[@]}"; do
  echo "  ⏳ ${slug}..."
  for attempt in 1 2 3 4 5; do
    if docker compose exec -T claw clawhub install --force "$slug" 2>&1; then
      echo "  ✅ ${slug}"
      break
    else
      echo "  ⚠️  Retry ${attempt}/5 for ${slug} (rate limit?)..."
      sleep 3
    fi
  done
done

echo ""
echo "📋 Installed skills:"
docker compose exec -T claw clawhub list
