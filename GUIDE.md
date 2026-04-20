# 🦞 OpenClaw Discord Bot — Setup & Configuration Guide

> **Last updated:** 16 April 2026  
> **Bot name:** Wai Bot  
> **Server (Guild) ID:** `1485992110481080483`  
> **Dashboard:** http://127.0.0.1:18789

---

## 📁 Project Structure

```
openclaw-docker/
├── .env                    # 🔑 Secret keys (API keys, tokens) — NEVER commit
├── .env.example            # Template for .env
├── docker-compose.yml      # Docker services definition
├── Dockerfile              # Container build instructions
├── config/
│   └── openclaw.json       # Source config (reference copy)
├── data/
│   ├── openclaw.json       # ⭐ LIVE config (this is what the bot actually reads)
│   ├── workspace/          # Agent workspace (tools, files, memory)
│   ├── agents/             # Per-agent state & sessions
│   ├── credentials/        # Stored auth credentials
│   ├── identity/           # Bot identity files
│   └── logs/               # Runtime logs
├── documents/              # Shared documents for local doc assistant
└── scripts/
    └── entrypoint.sh       # Container startup script
```

### ⚠️ Important: Which Config File Matters?

| File | Purpose |
|------|---------|
| `data/openclaw.json` | **LIVE config** — the bot reads this at runtime |
| `config/openclaw.json` | Reference/backup copy — not used by the running bot |

**Always edit `data/openclaw.json`** for changes to take effect.

---

## 🔑 Environment Variables (`.env`)

| Variable | Description | Example |
|----------|-------------|---------|
| `OPENAI_API_KEY` | API key for LLM provider (ReelX proxy) | `sk-n6Qi...XrJ` |
| `DISCORD_BOT_TOKEN` | Discord bot authentication token | `MTQ4...CsbI` |
| `DISCORD_APPLICATION_ID` | Discord application ID | `1486002853498847414` |
| `OPENCLAW_GATEWAY_TOKEN` | Token for gateway API authentication | `ddbe...df72` |
| `OPENCLAW_GATEWAY_PORT` | WebSocket gateway port | `18789` |
| `OPENCLAW_WEB_PORT` | Web dashboard port | `18790` |
| `NODE_ENV` | Node.js environment | `production` |
| `TZ` | Timezone | `Asia/Hong_Kong` |
| `OLLAMA_HOST` | Ollama LLM server address (internal Docker) | `http://ollama:11434` |
| `OLLAMA_PORT` | Ollama exposed port | `11434` |

---

## 🐳 Docker Services

### 1. `claw` — OpenClaw Gateway (the main bot)

| Setting | Value | Description |
|---------|-------|-------------|
| Container name | `openclaw` | Main bot container |
| Ports | `18789` (gateway), `18790` (web UI) | WebSocket + dashboard |
| Memory limit | 2 GB | Max RAM usage |
| CPU limit | 2.0 cores | Max CPU usage |
| Restart policy | `unless-stopped` | Auto-restart on crash |
| Health check | `http://localhost:18789/health` | Every 30s |

### 2. `ollama` — Local LLM Server

| Setting | Value | Description |
|---------|-------|-------------|
| Container name | `ollama` | Runs local AI models |
| Port | `11434` | Ollama API |
| Memory limit | 4 GB | Max RAM |
| CPU limit | 4.0 cores | Max CPU |
| Volume | `ollama-models` | Persists downloaded models |

---

## 🤖 Agent Configuration (`agents`)

```jsonc
"agents": {
  "defaults": {
    "model": { "primary": "reelx/gpt-5.4" },  // Default LLM model
    "models": { ... },                          // Available model catalog
    "workspace": "/home/openclaw/.openclaw/workspace",
    "compaction": { "mode": "safeguard" },      // Memory compaction strategy
    "maxConcurrent": 4,                         // Max parallel agent runs
    "subagents": { "maxConcurrent": 8 }         // Max parallel sub-agents
  }
}
```

| Field | Value | Description |
|-------|-------|-------------|
| `model.primary` | `reelx/gpt-5.4` | The default model used for all conversations |
| `models` | 5 entries | Models available via `/model` command in Discord |
| `workspace` | Container path | Where the agent stores files, tools, memory |
| `compaction.mode` | `safeguard` | Chunked summarization for long conversations |
| `maxConcurrent` | `4` | Max 4 conversations processed simultaneously |
| `subagents.maxConcurrent` | `8` | Max 8 sub-agent tasks in parallel |

### Available Models

| Model ID | Provider | Best For |
|----------|----------|----------|
| `reelx/gpt-5.4` | OpenAI (via ReelX) | ⭐ Primary — fast, strong all-rounder |
| `reelx/gemini-3.1-pro-preview` | Google (via ReelX) | Strongest Gemini model |
| `reelx/gemini-3-flash-preview` | Google (via ReelX) | Fast responses, lighter |
| `reelx/claude-sonnet-4-6` | Anthropic (via ReelX) | Best for coding & analysis |
| `openrouter/auto` | OpenRouter | Auto-selects best model |

**Switch model in Discord:** Type `/model` and pick from the list.

---

## 💬 Message Settings (`messages`)

```jsonc
"messages": {
  "ackReactionScope": "all"
}
```

| Field | Value | Options | Description |
|-------|-------|---------|-------------|
| `ackReactionScope` | `all` | `group-mentions` / `group-all` / `direct` / `all` | When to show 👀 reaction on messages |

- `all` → Bot reacts to every message it processes (DMs + channels)
- `group-mentions` → Only reacts in groups when @mentioned
- `direct` → Only reacts in DMs

---

## 🎮 Commands (`commands`)

```jsonc
"commands": {
  "native": "auto",
  "nativeSkills": "auto",
  "restart": true,
  "ownerDisplay": "raw"
}
```

| Field | Value | Description |
|-------|-------|-------------|
| `native` | `auto` | Auto-register Discord slash commands (e.g. `/model`, `/new`, `/reset`) |
| `nativeSkills` | `auto` | Auto-register skill-based slash commands |
| `restart` | `true` | Allow `/restart` command to restart the agent |
| `ownerDisplay` | `raw` | Show owner IDs as-is (not hashed) |

### Key Discord Slash Commands

| Command | Description |
|---------|-------------|
| `/new` | Start a fresh conversation (reset context) |
| `/reset` | Reset the current session |
| `/model` | Switch AI model |
| `/restart` | Restart the agent |
| `/focus` | Bind agent to a specific thread |
| `/unfocus` | Unbind agent from a thread |

---

## 📡 Discord Channel Settings (`channels.discord`)

### Access Policies

```jsonc
"discord": {
  "enabled": true,
  "groupPolicy": "open",
  "dmPolicy": "open",
  "allowFrom": ["*"]
}
```

| Field | Value | Options | Description |
|-------|-------|---------|-------------|
| `enabled` | `true` | `true` / `false` | Master switch for Discord |
| `groupPolicy` | `open` | `open` / `allowlist` / `disabled` | Who can use the bot in server channels |
| `dmPolicy` | `open` | `open` / `pairing` / `allowlist` / `disabled` | Who can DM the bot |
| `allowFrom` | `["*"]` | User IDs or `*` | Allowed users (`*` = everyone) |

### Guild (Server) Settings

```jsonc
"guilds": {
  "1485992110481080483": {
    "requireMention": false
  }
}
```

| Field | Value | Description |
|-------|-------|-------------|
| `requireMention` | `false` | Bot replies to ALL messages (no need to @mention) |

> Set to `true` if you only want the bot to respond when @Wai Bot is mentioned.

### Action Permissions

Controls what the bot CAN and CANNOT do in Discord:

| Action | Enabled | Description |
|--------|---------|-------------|
| `reactions` | ✅ | Add/remove reactions on messages |
| `messages` | ✅ | Send, edit, delete messages |
| `threads` | ✅ | Create and manage threads |
| `search` | ✅ | Search message history |
| `polls` | ✅ | Create polls |
| `stickers` | ✅ | Use stickers |
| `permissions` | ✅ | Read channel permissions |
| `memberInfo` | ✅ | Look up member information |
| `roleInfo` | ✅ | Look up role information |
| `channelInfo` | ✅ | Read channel details |
| `voiceStatus` | ✅ | Check voice channel status |
| `events` | ✅ | Create/manage server events |
| `emojiUploads` | ❌ | Upload custom emoji |
| `stickerUploads` | ❌ | Upload custom stickers |
| `roles` | ❌ | Create/modify roles |
| `moderation` | ❌ | Kick/ban/timeout users |

### Streaming

| Field | Value | Options | Description |
|-------|-------|---------|-------------|
| `streaming` | `off` | `off` / `partial` / `block` / `progress` | Live-stream responses as they generate |

- `off` → Bot sends complete response at once
- `partial` → Edits message as tokens stream in
- `block` → Sends in chunked blocks

---

## 🌐 Gateway Settings (`gateway`)

```jsonc
"gateway": {
  "port": 18789,
  "mode": "local",
  "bind": "lan",
  "auth": { "mode": "token" },
  "tailscale": { "mode": "off" }
}
```

| Field | Value | Description |
|-------|-------|-------------|
| `port` | `18789` | WebSocket gateway port |
| `mode` | `local` | Runs locally (not remote) |
| `bind` | `lan` | Listens on LAN interface (accessible from local network) |
| `auth.mode` | `token` | Requires token for gateway API access |
| `tailscale.mode` | `off` | Tailscale VPN tunnel disabled |

### Control UI

| Field | Value | Description |
|-------|-------|-------------|
| `controlUi.allowedOrigins` | `localhost:18789`, `127.0.0.1:18789` | Allowed web dashboard origins |

**Access dashboard:** http://127.0.0.1:18789/#token=ddbe345cd803cf17aab7842b8c02ee2ffaf459091d4fdf72

---

## 🔌 Plugins (`plugins`)

```jsonc
"plugins": {
  "entries": {
    "discord": { "enabled": true },
    "whatsapp": { "enabled": false }
  }
}
```

| Plugin | Status | Description |
|--------|--------|-------------|
| `discord` | ✅ Enabled | Discord chat channel |
| `whatsapp` | ❌ Disabled | WhatsApp integration (can enable later) |

---

## 🧠 Model Provider (`models.providers`)

```jsonc
"models": {
  "providers": {
    "reelx": {
      "baseUrl": "https://reelxai.com/v1",
      "apiKey": "${OPENAI_API_KEY}",
      "api": "openai-completions",
      "models": [...]
    }
  }
}
```

| Field | Value | Description |
|-------|-------|-------------|
| `baseUrl` | `https://reelxai.com/v1` | ReelX API proxy (bypasses OpenAI region block) |
| `apiKey` | `${OPENAI_API_KEY}` | References the key from `.env` file |
| `api` | `openai-completions` | Uses OpenAI-compatible API format |

### Why ReelX?

OpenAI blocks API requests from Hong Kong. ReelX is an API proxy that:
- ✅ Works from any region (no VPN needed)
- ✅ Supports OpenAI, Google, Anthropic models through one endpoint
- ✅ Uses OpenAI-compatible API format

**Check balance:** https://query.reelxai.com

---

## 🛠️ Common Operations

### Start the Bot
```bash
cd ~/openclaw-docker
docker compose up -d
```

### Stop the Bot
```bash
docker compose down
```

### Restart (after config changes)
```bash
docker compose up -d --force-recreate claw
```
> ⚠️ Use `--force-recreate` instead of `restart` when changing `.env` values.

### View Logs
```bash
docker compose logs -f claw          # live tail
docker compose logs claw --tail 50   # last 50 lines
docker compose logs claw | grep discord  # filter
```

### Health Check
```bash
docker compose exec claw openclaw doctor
```

### Switch Model (CLI)
```bash
docker compose exec claw openclaw config set agents.defaults.model.primary reelx/gemini-3.1-pro-preview
```

### Check Current Config
```bash
docker compose exec claw openclaw config get agents.defaults.model
docker compose exec claw openclaw config get channels.discord
```

---

## 🔧 Troubleshooting

| Problem | Cause | Fix |
|---------|-------|-----|
| Bot not replying in channels | `requireMention: true` | Set `requireMention: false` in guilds config |
| Bot not replying at all | Container not running | `docker compose up -d` |
| 403 region error | OpenAI blocks HK | Use ReelX proxy (already configured) |
| Discord token invalid | Token reset/expired | Get new token from Discord Developer Portal |
| `.env` changes not applied | Used `restart` instead of recreate | `docker compose up -d --force-recreate claw` |
| Bot sees messages but drops them | `ackReactionScope: group-mentions` | Set to `all` |

---

## 🔐 Security Notes

1. **Never commit `.env`** — it contains API keys and tokens
2. **Gateway token** protects the dashboard — keep it secret
3. **Discord bot token** is like a password — reset it if leaked
4. **`moderation: false`** — bot cannot kick/ban users (safe default)
5. **`roles: false`** — bot cannot modify server roles (safe default)
6. **Container runs with dropped capabilities** — minimal permissions
