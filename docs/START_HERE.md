# 🦞 Start Here — Wai Bot Guide

> Read this first. Everything else is optional.

---

## What is this?

**Wai Bot** is your personal AI assistant that lives inside Discord. You type a message, the bot replies — just like texting a smart friend who can also check your calendar, read your email, look up the weather, search the web, and handle work tasks.

It runs on your own computer using Docker, so your data stays private.

---

## How to think about it

There are two concepts — **channels** and **skills** — but you don't need to understand the difference to use the bot.

### Channels = where you type
Discord channels are like rooms. Each room has a topic (weather, calendar, email, etc.), but you can ask anything in any room.

### Skills = what the bot can do
Skills are the bot's abilities — weather lookup, web search, email reading, etc. The bot picks the right skill automatically based on what you ask. You never need to name a skill.

**The key insight:** Just type what you want in plain Cantonese or English. The bot figures out the rest.

---

## Where to begin

### Step 1: Go to #一般
This is the main channel. Everything works here.

### Step 2: Try these first messages
```
今日天氣點？
今日有咩event？
有咩新email？
Help me plan my day
```

### Step 3: That's it
You're using the bot. No setup needed.

---

## The 6 things to try first

| # | What to try | Channel (or just use #一般) |
|---|------------|---------------------------|
| 1 | `今日天氣點？` | #☀-天氣-weather |
| 2 | `今日有咩event？` | #📅-日曆-calendar |
| 3 | `有咩新email？` | #📧-電郵-email |
| 4 | `提醒我5pm覆客` | #⏰-提醒-reminders |
| 5 | `Search for the latest AI news` | #📰-新聞-news |
| 6 | `幫我寫封email覆呢個人` | #一般 |

---

## What you can safely ignore (at first)

These exist but you don't need them on day one:

| Category | Why you can skip initially |
|----------|--------------------------|
| 🛠 System channels (#healthcheck, #self-improving) | Admin tools — only for fixing the bot |
| AI/dev skills (ollama-local, skill-creator, skill-vetter) | Only for building or customising the bot |

**But if you actively invest or do sales work**, don't skip these:

| Category | Why it matters |
|----------|---------------|
| 💼 Work channels (#🏗-項目追蹤-projects, #🎯-prospecting, etc.) | Essential for BDR/sales work |
| 💹 Finance skills (futu-flash, xtrade) | Essential for daily market monitoring |
| See [RECOMMENDED_STACKS.md](RECOMMENDED_STACKS.md) | Full investing & work stacks |

---

## Quick tips

- **Any language works** — Cantonese, English, or mixed
- **Any channel works** — #一般 handles everything
- **No special commands** — Just type naturally, like texting
- **Attach files** — Send PDFs, images, voice messages directly
- **Automatic posts** — Weather at 8 AM, news at 8:30 AM, rain alerts hourly. No action needed.
- **The bot remembers** — Tell it facts (`記住我唔食辣`) and it'll recall them later

---

## Learn more

| Guide | What it covers |
|-------|---------------|
| [CHANNEL_GUIDE.md](CHANNEL_GUIDE.md) | Every channel explained with examples |
| [SKILL_GUIDE.md](SKILL_GUIDE.md) | Every skill explained — what it does, who needs it |
| [RECOMMENDED_STACKS.md](RECOMMENDED_STACKS.md) | Best setup for daily use vs power users |
| [CHEATSHEET.md](CHEATSHEET.md) | Copy-paste prompts for common tasks |
| [QUICKSTART.md](QUICKSTART.md) | Technical setup guide (Docker, API keys) |
