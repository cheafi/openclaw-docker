# HEARTBEAT.md

## Checks

- **Weather** (08:00 HKT): HK weather via web_search. Rain >40% → alert. Extreme → immediate.
- **Calendar** (08:00 HKT): Today's events via `gog calendar events`. Summarize meetings/gaps.
- **EPC & Market Updates** (09:00 HKT): Search and post per-country updates to #🏗-項目追蹤-projects
  - Countries: HK, TW, CN, ID, PH, VN, KR
  - Topics: project awards, policy changes, AEC news, CDE/BIM updates
  - Use tavily_search for each country, skip if nothing notable
  - Save to memory under `## EPC Updates`
- **Email** (2-3x/day, business hours): `gog gmail search 'is:unread is:important'`
- **Evening Review** (21:00 HKT): Day summary to #一般 — include portfolio changes if any, calendar tomorrow, pending items
- **Memory** (daily): Consolidate memory/*.md into MEMORY.md. Remove stale >30d.

## Rules

- Quiet hours 23:00-08:00 HKT (unless urgent)
- Tool fails → skip silently, note in heartbeat-state.json
- Same check fails 3x → disable it
- Nothing to report → `HEARTBEAT_OK`
- NEVER run system-healthcheck/security-scan/fleet-review/cleanup-scan/Docker sandbox
- Budget: 60s max per heartbeat (EPC check gets 120s due to multi-country search)
