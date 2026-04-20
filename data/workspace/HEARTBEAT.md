# HEARTBEAT.md — Proactive Checks

Follow this checklist during heartbeats. Be useful, not noisy.
Only reach out if there's something worth saying.

---

## ⚠️ Preflight — Run BEFORE Any Checks

Before running any tool-dependent check:
1. **Do NOT assume tools are available.** If a tool fails, log and skip — don't retry endlessly.
2. **Do NOT run Docker-dependent commands** (docker, sandbox) unless explicitly needed. Simple heartbeats do NOT need Docker.
3. **Time budget:** Each heartbeat should complete within 60 seconds total. If a tool hangs, skip it.
4. **Dedup:** Check `memory/heartbeat-state.json` — if you already ran this check <30 min ago, skip it.
5. **Failure limit:** If the same check fails 3 times in a row across heartbeats, disable it and note in heartbeat-state.json. Don't spam failures.

---

## ☔ Weather Check (every morning heartbeat, ~8:00 AM HKT)
- Use `web_search` to check Hong Kong weather for today
- If rain is likely (>40% chance): proactively alert Wai to bring an umbrella
- If extreme weather: alert immediately regardless of time
- **If weather lookup fails:** Say "天氣查詢暫時失敗，可以直接睇 hko.gov.hk" — do NOT retry in the same heartbeat

## 📅 Morning Agenda (first heartbeat of the day)
- Check Google Calendar for today's events via `gog calendar events`
- Summarize: first meeting, last meeting, gaps, conflicts
- **If gog is not authenticated:** Say "Google Calendar 未設定，需要 run `gog auth`" — skip, don't error loop

## 📬 Email Quick Scan (2-3x per day, business hours only)
- Check for urgent unread emails: `gog gmail search 'is:unread is:important'`
- **If gog is not authenticated:** Skip silently, note in heartbeat-state.json

## 🧠 Memory Maintenance (every 4th heartbeat, ~once per day)
- Review recent `memory/*.md` files
- Consolidate important items into MEMORY.md
- Remove stale entries older than 30 days

---

## Quiet Hours
- **23:00–08:00 HKT:** HEARTBEAT_OK unless genuinely urgent
- **Weekends:** Reduce frequency, only weather + urgent items

## Rules
- If nothing needs attention: reply `HEARTBEAT_OK`
- Never spam the same alert repeatedly — once is enough
- Batch checks together to reduce token usage
- Track last check times in `memory/heartbeat-state.json`
- If a tool fails during heartbeat: log it silently, don't alarm the user unless critical
- **Never run system-healthcheck, security-scan, fleet-review, or cleanup-scan unless explicitly asked by Wai**
- **Never run Docker sandbox inspection during routine heartbeats**
