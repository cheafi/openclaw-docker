#!/usr/bin/env bash
# ============================================================
# 🦞 setup-discord.sh — Connect Discord bot to OpenClaw
# ============================================================
# Prerequisites:
#   1. Create a bot at https://discord.com/developers/applications
#   2. Copy Bot Token → paste into .env as DISCORD_BOT_TOKEN
#   3. Copy Application ID → paste into .env as DISCORD_APPLICATION_ID
#   4. Enable these Privileged Gateway Intents:
#        ✅ PRESENCE INTENT
#        ✅ SERVER MEMBERS INTENT
#        ✅ MESSAGE CONTENT INTENT
#   5. Invite bot to your server with scope: bot + applications.commands
#      Permissions: Send Messages, Read Messages, Add Reactions,
#                   Manage Messages, Embed Links, Attach Files,
#                   Read Message History, Use Slash Commands
#
# Then run:  ./scripts/setup-discord.sh
# ============================================================
set -euo pipefail
cd "$(dirname "$0")/.."

source .env 2>/dev/null || true

if [[ -z "${DISCORD_BOT_TOKEN:-}" ]]; then
  echo "❌ DISCORD_BOT_TOKEN is not set in .env"
  echo "   1. Go to https://discord.com/developers/applications"
  echo "   2. Create an Application → Bot → Copy Token"
  echo "   3. Paste into .env as DISCORD_BOT_TOKEN=your-token"
  exit 1
fi

echo "🦞 Enabling Discord plugin inside container..."
docker compose exec -T claw openclaw plugins enable discord 2>/dev/null || true

echo "🦞 Adding Discord channel..."
docker compose exec -T claw openclaw channels add discord \
  --token "${DISCORD_BOT_TOKEN}" \
  --application-id "${DISCORD_APPLICATION_ID:-}" 2>/dev/null || true

echo ""
echo "✅ Discord config written."
echo "   Restart the gateway:  docker compose restart claw"
echo ""
echo "📎 Bot invite URL (adjust permissions as needed):"
echo "   https://discord.com/oauth2/authorize?client_id=${DISCORD_APPLICATION_ID:-YOUR_APP_ID}&scope=bot+applications.commands&permissions=277025770560"
