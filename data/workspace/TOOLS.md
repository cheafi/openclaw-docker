# TOOLS.md - Local Notes

Skills define *how* tools work. This file is for *your* specifics — the stuff that's unique to your setup.

## 📅 Calendar & Tasks

### Google Calendar (via gog)
- **Setup required:** Run `gog auth credentials /path/to/client_secret.json` then `gog auth add you@gmail.com --services gmail,calendar,drive,contacts,sheets,docs`
- **Calendar ID:** (fill after setup, e.g. `primary` or `your@gmail.com`)
- **Quick commands:**
  - Events today: `gog calendar events primary --from $(date -I) --to $(date -d tomorrow -I)`
  - Create event: `gog calendar create primary --summary "Meeting" --start "2026-03-26T14:00:00" --end "2026-03-26T15:00:00"`
- **GOG_ACCOUNT:** Set in .env to avoid repeating `--account`

### Todoist
- **Setup required:** Get API token from https://todoist.com/app/settings/integrations/developer
- **Set token:** `todoist auth <your-token>` or `export TODOIST_API_TOKEN="..."`
- **Quick commands:**
  - Today's tasks: `todoist today`
  - Add task: `todoist add "Task name" --due "tomorrow 10am" --priority 1 --project "Work"`
  - Complete: `todoist done <task-id>`

### Linear
- **Setup required:** API key from Linear Settings → API → Personal API Keys
- **Set token:** `export LINEAR_API_KEY="lin_api_..."`

## 🧠 Second Brain (Memory Layer)

### How it works
- Text anything to the bot → it auto-saves to `memory/YYYY-MM-DD.md`
- Say "remember this: ..." for explicit storage
- Say "find that thing about ..." for semantic recall
- Long-term important items go to `MEMORY.md`

### Memory locations
- Daily raw logs: `memory/YYYY-MM-DD.md`
- Curated long-term: `MEMORY.md`
- Heartbeat auto-consolidates weekly

### Search
- "What did I mention about X?" → searches memory files
- "Find the link I saved about Y" → full-text search across notes

## 📄 Private Document Assistant (Ollama)

### Setup
- Ollama runs at `http://ollama:11434` inside Docker
- Put documents in `openclaw-docker/documents/` on host
- Inside container: `/home/openclaw/documents/`

### Models (pull once)
- Fast answers: `qwen3:4b` (~2.5GB)
- General use: `llama3.1:8b` (~4.7GB)
- Coding: `qwen2.5-coder:7b` (~4.4GB)

### Usage
- "Summarize the contract in documents/contract.pdf"
- "What are the key terms in documents/agreement.pdf?"
- Everything stays local — never sent to external APIs

## Environment Variables
```
GOG_ACCOUNT=your@gmail.com
TODOIST_API_TOKEN=your-token
LINEAR_API_KEY=lin_api_xxx
OLLAMA_HOST=http://ollama:11434
```

---

Add whatever helps you do your job. This is your cheat sheet.
