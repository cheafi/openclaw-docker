# 📝 Prospecting Lessons Learned

> **Read this file at the START of every prospecting run.** These are real failures that cost us time, money, and credibility. Don't repeat them.

Last updated: 2026-04-23

---

## 🚫 Email Verification Rules

1. **NEVER guess an email address** — no firstname@company.com patterns
2. **NEVER use emails from online directories** (Yellow Pages, HK directories, etc.) — 90% bounce rate
3. **Only use emails from:** LinkedIn profile, company website "Contact Us" / team page, lead-researcher verified, or user-provided target list
4. **If no verified email found → skip and log "NO VERIFIED EMAIL"** — do NOT send to unverified
5. **Always verify domain exists** before sending (MX record check if available)

## 🔁 Duplicate Prevention Rules

1. **Before EVERY send: search pipeline.md for company name AND contact email**
2. **If found in Outreach Log → SKIP, log "DUPLICATE PREVENTED"**
3. **If found in Contacted section → check follow-up cadence, only send if due**
4. **Never send same email template to same person** — personalize or skip
5. **Context overflow causes duplicates** — if session is long, re-read pipeline.md before each send

## 📧 Email Quality Rules

1. **Subject line:** Reference specific project/win, ask a question, under 60 chars
2. **Body:** Pain-Agitate-Solution (Hormozi $100M Leads framework)
3. **Always include:** Specific project reference, quantified benefit, clear CTA (20-min call)
4. **Never include:** Generic greetings, "Hope this finds you well", attachments on first touch
5. **HTML formatting:** Clean, mobile-friendly, short paragraphs
6. **Signature:** Full name, title, company — professional but not cluttered

## 📋 Follow-up Cadence (strict)

| Day | Action                      | Notes                                      |
| --- | --------------------------- | ------------------------------------------ |
| 0   | LinkedIn connection request | Short, personalized note                   |
| 2   | Email #1                    | Hormozi PAS framework, project-specific    |
| 5   | LinkedIn DM (if connected)  | Casual, reference email                    |
| 8   | Email #2 follow-up          | Shorter, add case study/social proof       |
| 14  | Break-up email              | "Last note from me..." — creates urgency   |
| 14+ | **STOP**                    | Move to Closed/Disqualified if no response |

## 🎯 Token Optimization Rules

1. **Don't read PRODUCTS.md + PROSPECTING.md + pipeline.md + lessons-learned.md all at once** — only read what's needed for current step
2. **For prospecting runs:** Read lessons-learned.md first (this file), then pipeline.md for dedup, then PRODUCTS.md only when drafting
3. **Limit web searches to 2 per prospect** — company overview + contact finding
4. **Use compact output** — no lengthy explanations, just the deliverable
5. **If context > 100K tokens, stop and summarize before continuing**

## 💡 Lessons Log (chronological)

> After each prospecting run, add what went wrong and what to change.

| Date       | Lesson                               | Action Taken                                                         |
| ---------- | ------------------------------------ | -------------------------------------------------------------------- |
| 2026-04-23 | Initial setup — no outreach sent yet | Created pipeline.md, lessons-learned.md, PRODUCTS.md, PROSPECTING.md |

---

## 🏆 What Actually Works

- **Free competitive briefing PDF** as the hook — shows value before asking for anything
- **Project-specific outreach** gets 3-5x higher response than generic
- **LinkedIn connection → Email → DM** sequence (not email-first)
- **EPC daily scan → auto-identify opportunities → draft outreach** pipeline
- **Agent reviews own sends** and logs quality notes in lessons
- **Account briefs** saved as separate files (memory/briefs/) — reusable across follow-ups, reduces token usage
- **Signal-based scoring** — prioritize prospects with active projects/funding, not cold lists
- **Suppression list** — one place to check for bounced/opted-out contacts
- **Specificity wins** — vague "help with construction" fails; "3 weeks → 3 days for Long Thanh feasibility" converts
- **Copilot mode** — agent drafts, human approves before send. Never fully autonomous on outreach
- **Separate research from drafting** — research in batch (Monday cron), drafting individually (saves tokens)

## 🎭 Agent Role Pattern (inspired by real-world OpenClaw B2B setups)

| Role                | What It Does                                                 | When It Runs                 |
| ------------------- | ------------------------------------------------------------ | ---------------------------- |
| Research Agent      | Scrapes news, enriches prospect database, finds signals      | Weekly cron (Monday)         |
| Account Brief Agent | Creates 1-page briefs with signals + pain points + angles    | After research, per prospect |
| Draft Writer        | Synthesizes brief into personalized email + LinkedIn DM      | On demand / after brief      |
| Follow-Up Agent     | Checks pipeline.md for overdue follow-ups, drafts next touch | Daily weekday cron           |
| Pipeline Reporter   | Calculates pipeline stats, flags stale deals                 | Weekly Friday cron           |

All roles run through the SAME OpenClaw agent (main) — the "roles" are just different prompts/contexts in crons and ad-hoc runs.
