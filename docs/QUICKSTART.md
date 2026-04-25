# 🚀 Quickstart — Technical Setup Guide

> This guide is for setting up the bot from scratch. If the bot is already running, see [START_HERE.md](START_HERE.md) instead.

---

## What You Need

- A Mac, Windows, or Linux computer
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running
- A Discord account
- An API key for the AI model

---

## Step 1: Get the Code

```bash
git clone https://github.com/cheafi/openclaw-docker.git
cd openclaw-docker
```

## Step 2: Configure Environment

Copy the example config and fill in your keys:

```bash
cp .env.example .env
```

Edit `.env` with your API keys:
```env
OPENAI_API_KEY=your-api-key-here
DISCORD_BOT_TOKEN=your-discord-bot-token
DISCORD_APPLICATION_ID=your-app-id
```

## Step 3: Create a Discord Bot

1. Go to [discord.com/developers/applications](https://discord.com/developers/applications)
2. Click **New Application** → name it → **Create**
3. Go to **Bot** → **Reset Token** → copy it → paste in `.env`
4. Enable these intents:
   - ✅ PRESENCE INTENT
   - ✅ SERVER MEMBERS INTENT
   - ✅ MESSAGE CONTENT INTENT
5. Copy the **Application ID** from OAuth2 → paste in `.env`

## Step 4: Invite Bot to Your Server

Open this URL (replace `YOUR_APP_ID`):
```
https://discord.com/oauth2/authorize?client_id=YOUR_APP_ID&scope=bot+applications.commands&permissions=277025770560
```

## Step 5: Start

```bash
docker compose up -d --build
```

Bot should appear online in Discord within 30 seconds.

## Step 6: Test

Type in any Discord channel:
```
今日天氣點？
```

If you get a weather reply, everything works. 🎉

---

## Common Commands

| Action | Command |
|--------|---------|
| Check logs | `docker compose logs claw --since 5m` |
| Restart bot | `docker compose restart claw` |
| Stop everything | `docker compose down` |
| Start again | `docker compose up -d` |
| Full rebuild | `docker compose down && docker compose up -d --build` |
| List skills | `docker compose exec claw openclaw skills list` |

---

## Current Configuration

| Setting | Value |
|---------|-------|
| AI Model | Claude Sonnet 4.6 (via reelxai.com) |
| Backup Models | gpt-5.4-mini, gemini-3.1-pro-preview, gemini-2.5-flash |
| Google Account | cheafi.chan121@gmail.com |
| Skills Installed | 28 ready / 69 total |
| Cron Jobs | Weather 8AM, News 8:30AM, Hourly rain, Evening review 9PM |

---

## Troubleshooting

| Problem | Fix |
|---------|-----|
| Bot is offline | `docker compose logs claw --since 2m` — check for errors |
| Bot doesn't reply | Restart: `docker compose restart claw` |
| 401 Unauthorized | Discord token expired — get a new one |
| Docker won't start | Open Docker Desktop first, wait for it to load |
| Emoji-only replies | Set `ackReactionScope: "direct"` in `data/openclaw.json` |

---

## Key Files

| File | What it does |
|------|-------------|
| `data/openclaw.json` | Main bot config |
| `data/agents/main/agent/models.json` | AI model settings |
| `data/workspace/SOUL.md` | Bot personality and behaviour |
| `data/workspace/USER.md` | Info about you |
| `scripts/entrypoint.sh` | Startup script with model patcher |

---

## Next Steps

- [START_HERE.md](START_HERE.md) — How to use the bot
- [CHANNEL_GUIDE.md](CHANNEL_GUIDE.md) — What each channel does
- [SKILL_GUIDE.md](SKILL_GUIDE.md) — All skills explained
- [RECOMMENDED_STACKS.md](RECOMMENDED_STACKS.md) — Best setup for you
- [CHEATSHEET.md](CHEATSHEET.md) — Copy-paste prompts
