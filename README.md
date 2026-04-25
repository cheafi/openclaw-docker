# 🦞 Wai Bot — Personal AI Assistant on Discord

> A self-hosted AI assistant in Discord that handles weather, calendar, email, reminders, news, web search, and work tasks — all from a chat message.

Built on [OpenClaw](https://openclaw.com) · Powered by Claude Sonnet 4.6 · 28 skills installed

---

## Quick Start

1. Open Discord → Go to **#一般**
2. Type anything in Cantonese or English
3. The bot replies. That's it.

**📖 Documentation:**

| Guide | What it covers |
|-------|---------------|
| [START_HERE.md](docs/START_HERE.md) | **New user? Read this first** — 5-minute onboarding |
| [CHANNEL_GUIDE.md](docs/CHANNEL_GUIDE.md) | Every channel explained with examples |
| [SKILL_GUIDE.md](docs/SKILL_GUIDE.md) | All 28 installed skills + available skills |
| [RECOMMENDED_STACKS.md](docs/RECOMMENDED_STACKS.md) | Best setup for daily use, keep/hide/admin lists |
| [CHEATSHEET.md](docs/CHEATSHEET.md) | Copy-paste prompts for common tasks |
| [QUICKSTART.md](docs/QUICKSTART.md) | Technical setup (Docker, API keys, config) |

---

## What Can It Do?

| Ask it... | What happens |
|-----------|-------------|
| `今日天氣點？` | Hong Kong weather forecast |
| `今日有咩event？` | Shows your Google Calendar |
| `有咩新email？` | Summarises your Gmail inbox |
| `提醒我5pm覆客` | Sets a reminder |
| `Search for AI news` | Searches the web |
| `幫我寫封follow-up email` | Drafts an email for you |

---

## Discord Channels

| Category | Channels |
|----------|----------|
| 📱 日常生活 | #☀-天氣-weather · #📅-日曆-calendar · #⏰-提醒-reminders · #📰-新聞-news · #📧-電郵-email |
| 💬 一般 | #一般 · #❓-幫助-help |
| 💼 工作 | #💼-工作-work · #🏗-項目追蹤-projects · #🎯-prospecting · #📊-競爭對手-competitors · #🌏-apac-market · #📄-文件-documents |
| 🛠 系統 | #healthcheck · #self-improving |

**Tip:** Everything works in #一般. Other channels are optional shortcuts.

---

## 🚀 Setup Guide (Step by Step)

### What You Need

- A computer (Mac, Windows, or Linux)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed
- A Discord account
- An API key for the AI model

### Step 1: Get the Code

```bash
git clone https://github.com/YOUR_USERNAME/openclaw-docker.git
cd openclaw-docker
```

### Step 2: Create Your `.env` File

```bash
cp .env.example .env
```

Open `.env` in any text editor and fill in:

```env
# Your AI model API key (get from your provider)
OPENAI_API_KEY=sk-your-api-key-here

# Your Discord bot token (see Step 3)
DISCORD_BOT_TOKEN=your-discord-bot-token

# Your Discord app ID (see Step 3)
DISCORD_APPLICATION_ID=your-app-id
```

### Step 3: Create a Discord Bot

1. Go to [discord.com/developers/applications](https://discord.com/developers/applications)
2. Click **New Application** → give it a name → **Create**
3. Go to **Bot** (left sidebar) → click **Reset Token** → **copy the token** → paste it in `.env`
4. Turn ON these intents (scroll down on the Bot page):
   - ✅ PRESENCE INTENT
   - ✅ SERVER MEMBERS INTENT
   - ✅ MESSAGE CONTENT INTENT
5. Go to **OAuth2** (left sidebar) → copy the **Application ID** → paste it in `.env`

### Step 4: Invite the Bot to Your Server

Open this URL in your browser (replace `YOUR_APP_ID` with your actual Application ID):

```
https://discord.com/oauth2/authorize?client_id=YOUR_APP_ID&scope=bot+applications.commands&permissions=277025770560
```

Select your Discord server and click **Authorize**.

### Step 5: Start the Bot

```bash
docker compose up -d --build
```

That's it! The bot should appear online in your Discord server within 30 seconds.

### Step 6: Test It

Go to any channel in your Discord server and type:

```
Today weather
```

You should get a weather update for Hong Kong. If you do, everything is working! 🎉

---

## Common Commands

### Check if the bot is running

```bash
docker compose logs claw --since 5m
```

Look for: `discord gateway metrics` with `errors:0` — that means it's healthy.

### Restart the bot

```bash
docker compose restart claw
```

### Stop everything

```bash
docker compose down
```

### Start again

```bash
docker compose up -d
```

### Full rebuild (after changing Dockerfile)

```bash
docker compose down
docker compose up -d --build
```

---

## Troubleshooting

| Problem | Fix |
|---------|-----|
| Bot is offline in Discord | Run `docker compose logs claw --since 2m` and check for errors |
| Bot doesn't reply | Check `docker compose logs claw --since 5m` for errors. Model may need restarting. |
| "401 Unauthorized" error | Your Discord bot token is wrong or expired — get a new one |
| Docker won't start | Open Docker Desktop first, wait for it to fully load |
| Bot replies with emoji only | Check `ackReactionScope` is set to `"direct"` in `data/openclaw.json` |

---

## Project Structure (What's What)

```
openclaw-docker/
├── .env                    # 🔑 Your secret keys (never share this!)
├── Dockerfile              # 🐳 How to build the container
├── docker-compose.yml      # 🐙 How to run everything together
│
├── config/
│   └── openclaw.json       # ⚙️  Default config template
│
├── data/                   # 📂 All bot data lives here
│   ├── openclaw.json       # ⚙️  Active config (bot reads this)
│   ├── workspace/
│   │   ├── SOUL.md         # 🧠 Bot's personality and behavior rules
│   │   ├── IDENTITY.md     # 🏷️  Bot's name and identity
│   │   ├── USER.md         # 👤 Info about you (so the bot knows you)
│   │   ├── AGENTS.md       # 📋 Response rules and session startup
│   │   ├── CHANNELS.md     # 📺 Discord channel guide
│   │   ├── HEARTBEAT.md    # 💓 Automated check schedule
│   │   ├── TOOLS.md        # 🔧 Tool setup notes
│   │   └── skills/         # 🔌 Installed skills (weather, search, etc.)
│   └── agents/main/agent/
│       └── models.json     # 🤖 AI model configuration
│
└── scripts/                # 🛠️  Helper scripts
    ├── cleanup.sh
    ├── doctor.sh
    └── entrypoint.sh
```

### Key Files Explained

| File | What it does | When to edit it |
|------|-------------|-----------------|
| `.env` | Stores your API keys and tokens | When you change API keys or Discord token |
| `data/openclaw.json` | Main bot config (Discord settings, model selection) | Rarely — only if something breaks |
| `data/agents/main/agent/models.json` | Which AI model to use and how | When switching AI providers |
| `data/workspace/SOUL.md` | The bot's personality and behavior | When you want to change how it talks |
| `data/workspace/USER.md` | Info about you | Update with your details so the bot knows you |

---

## Security Notes

- ✅ The bot runs as a non-root user inside Docker (safe)
- ✅ All Linux capabilities are dropped (extra safe)
- ✅ Your `.env` file with API keys is **never** uploaded to GitHub
- ⚠️ Don't share your `.env` file with anyone
- ⚠️ Don't share your Discord bot token — anyone with it can control your bot

---

## FAQ

**Q: Is this free?**
A: The bot software is free. You pay for the AI model API (Claude Sonnet 4.6) based on how much you use it.

**Q: Does my data go to the cloud?**
A: Your messages go to the AI model provider for processing. Everything else stays on your computer.

**Q: Can other people in my Discord server use the bot?**
A: Yes, anyone in the server can talk to it. The bot responds to all messages (no @mention needed).

**Q: How do I make it stop responding in a channel?**
A: You can set `requireMention: true` in `data/openclaw.json` under guilds — then people need to @mention the bot.

**Q: Can I change the bot's personality?**
A: Yes! Edit `data/workspace/SOUL.md`. That's the bot's brain — change it and restart.

**Q: What if the AI model is down?**
A: The bot will tell you it can't connect. You can switch to a different model in `models.json`.
