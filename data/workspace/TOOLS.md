# TOOLS.md — Quick Reference

## Google (gog)
- Account: cheafi.chan121@gmail.com
- Calendar list: `gog calendar events primary --from DATE --to DATE -a cheafi.chan121@gmail.com`
- Calendar create: `gog calendar create primary --summary "X" --start "ISO" --end "ISO" --description "DETAILS" -a cheafi.chan121@gmail.com`
- Gmail: `gog gmail search 'query' -a cheafi.chan121@gmail.com`
- Drive: `gog drive list -a cheafi.chan121@gmail.com`

## Screenshot → Action Workflows

### Portfolio Screenshot
1. Extract: stock codes, qty, avg cost, current price, P&L
2. Analyze each position: BUY MORE / HOLD / SELL
3. Provide: Target Price 1 & 2, Stop Loss, Reasoning
4. Post to #💰-investing, save to memory

### Reservation / Payment / Chat Screenshot
1. Extract: date, time, location, people, amount
2. Auto-create Google Calendar event
3. Confirm back with extracted details

### Client Conversation Screenshot
1. Extract conversation text
2. Translate to English
3. Generate 2-3 reply options (Professional / Friendly / Direct)
4. Reply in client's language + English translation

## Tavily Web Search
```bash
python3 {baseDir}/scripts/tavily_search.py --query "..." --max-results 5 --format md
```

## EPC Market Search Queries
For each country, search with queries like:
- `"[country] EPC project award 2026"`
- `"[country] construction policy update"`
- `"[country] BIM mandate CDE regulation"`
- `"[country] AEC market news"`

## Todoist
- Today: `todoist today` | Add: `todoist add "Task" --due "tomorrow 10am"`

## Reminders via Cron
- Recurring: `cron add --schedule "0 */2 8-22 * * *" --message "💧 飲水時間！"`
- One-time: use todoist with --due flag

## Memory
- Daily: `memory/YYYY-MM-DD.md`
- Long-term: `MEMORY.md`
- Search: full-text across memory files
