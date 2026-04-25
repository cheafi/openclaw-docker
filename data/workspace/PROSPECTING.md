# 🎯 Prospecting Playbook — EPC Award-Based Outreach

> **This is Wai's actual daily prospecting workflow.** Source = GlobalData + BCI Central EPC awards → target awarded stakeholders → multi-touch outreach sequence.

---

## 📍 Managed Countries (APAC)

Hong Kong, Vietnam, Singapore, South Korea, Japan, Philippines, Thailand, Malaysia, Indonesia, Australia, India

---

## Pre-Run Checklist (EVERY run)

1. ✅ Read `memory/lessons-learned.md` — don't repeat past mistakes
2. ✅ Read `memory/pipeline.md` — know who's already been contacted
3. ❌ Do NOT read PRODUCTS.md yet — only when drafting
4. ❌ Do NOT read SOUL.md for prospecting — too many tokens

## Daily Prospecting Sequence

### Step 1: Source EPC Awards (Daily — Wai's morning routine)

**Primary Sources:**

- **GlobalData Construction:** `https://construction.globaldata.com/search?q[]=api&IsSearchApi=true&exactword=1`
- **BCI Central:** Latest awarded projects across managed APAC countries

**What to look for:**

- Newly awarded projects (last 7 days) in managed countries
- Project types: airports, MRT/rail, mixed-use townships, commercial towers, industrial, data centers, infrastructure
- Project value > $50M preferred (higher ARR potential)

**For each award, extract:**

```
Project: [name]
Country: [country]
Value: [USD estimate]
Stage: [awarded / under construction / planning]
Owner: [client/developer name]
Main Contractor: [GC name]
Consultant: [design firm / engineer]
Sub-contractors: [if listed]
Award date: [date]
```

### Step 2: Identify Target Stakeholders (per project)

From each awarded project, identify contacts at ALL involved companies:

| Role                    | Target Department               | Who to Find                                    |
| ----------------------- | ------------------------------- | ---------------------------------------------- |
| **Owner/Developer**     | Innovation / Digital / Design   | Head of Digital, VP Design, BIM Director       |
| **Consultant/Engineer** | Design / BIM / Technology       | BIM Manager, Design Technology Lead, Principal |
| **Main Contractor**     | Project Team / VDC / Innovation | VDC Manager, Project Director, Innovation Lead |
| **Sub-contractor**      | Technical / BIM                 | BIM Coordinator, Technical Manager             |

**Search priority:** Project team → Innovation/Digital team → Tech/BIM team → General management

**How to find contacts:**

- LinkedIn: `site:linkedin.com "[Company Name]" "[Title]" "[Country]"`
- Company website: Team / About / Leadership pages
- lead-researcher skill
- **Check pipeline.md** — skip if company already contacted for this project

### Step 2b: Account Brief (save as memory/briefs/[company]-[project].md)

```
## [Company] × [Project Name] — Account Brief
Generated: [date]

**Project:** [name, country, value, stage]
**Company role:** [owner / GC / consultant / sub]
**Company overview:** [1-2 sentences]
**Their likely needs on this project:** [early-stage design? field execution? BIM coordination?]
**Target contact:** [name, title, LinkedIn URL]
**Autodesk angle:** [Forma for feasibility / ACC for field / Revit for BIM coordination]
**Personalization hook:** [specific project detail to reference]
**Score:** [1-5]
```

**Signal-based lead scoring:**
| Signal | Score |
|--------|-------|
| Active mega-project > $100M (airport, MRT, township) | +2 |
| Project just awarded (< 30 days) — timing is everything | +2 |
| Job posting mentioning BIM/digital/Forma/ACC | +2 |
| VP/Director level contact found on LinkedIn | +1 |
| Currently using competitor (Bentley, Trimble, Aconex) | +1 |
| No contact found / project too early / too small | 0 — deprioritize |

### Step 3: Verify Contact

- ❌ NEVER guess email from name pattern
- ❌ NEVER use directory/Yellow Pages emails
- ✅ LinkedIn profile → company email domain → verified
- ✅ Company website team/about page
- ✅ lead-researcher skill verification
- ✅ User-provided email
- **No verified email = NO SEND** — add to pipeline as "New Lead, needs email"

### Step 4: Draft Outreach Email (NOW read PRODUCTS.md)

- Load `memory/briefs/[company].md` for project context
- Use Hormozi $100M Leads PAS framework
- **Personalize by stakeholder role:**
  - **Owner/Developer:** ROI angle — "reduce feasibility time from weeks to days"
  - **Consultant/Engineer:** Technical angle — "real-time clash detection across disciplines"
  - **Main Contractor/GC:** Field coordination — "eliminate rework with ACC field tools"
  - **Sub-Contractor:** Competitive angle — "GCs increasingly require BIM Level 2 — get ahead"
- Reference the SPECIFIC EPC project by name: "Congratulations on the [Project Name] award..."
- Include quantified benefit ("2-3 weeks → 2-3 days feasibility studies")
- **Check pipeline.md AGAIN before sending** — duplicate prevention
- Draft email only (Touch 1) — call brief generated separately before Touch 2

### Step 5: Send & Log

- Present draft to Wai for approval — **NEVER auto-send**
- After approval, send via email
- **Immediately log in pipeline.md:**
  - Outreach Log: timestamp, company, contact, email, project, action
  - Move from "New Leads" to "Contacted/Engaged"
  - Set next touch: Call on Day 2-3

### Step 6: Post-Run Review

- Review what was sent — quality check
- Log any lessons in `memory/lessons-learned.md`
- Update pipeline summary numbers
- Flag any bounces → add to Suppression List immediately

---

## Wai's Multi-Touch Outreach Sequence

> **This is the actual sequence. Email → Call → Follow-up Email → Call → WhatsApp/Zalo → Follow-up Email.**

```
Touch 1 (Day 0):  📧 Outbound email — project-specific, Hormozi PAS framework
Touch 2 (Day 2):  📞 Cold call — reference the email, 2-min pitch
Touch 3 (Day 5):  📧 Follow-up email — shorter, add value (case study / competitive brief PDF)
Touch 4 (Day 8):  📞 Call #2 — different angle, reference the project update
Touch 5 (Day 10): 💬 WhatsApp or Zalo DM — casual, "Hi [name], sent you an email about [project]..."
Touch 6 (Day 14): 📧 Break-up email — "Last note from me about [project]..."
Day 14+: STOP — move to Closed/No Response
```

**Channel selection by country:**
| Country | Messaging App |
|---------|--------------|
| Vietnam | **Zalo** (primary), WhatsApp (fallback) |
| Hong Kong, Singapore, Philippines, India, Australia | **WhatsApp** |
| South Korea | **KakaoTalk** or WhatsApp |
| Japan | **LINE** or WhatsApp |
| Thailand, Malaysia, Indonesia | **WhatsApp** |

**Before each touch:**

1. Check pipeline.md for last action date — only proceed if cadence day reached
2. Check Suppression List — skip if opted out
3. Never send same template twice — vary angle (different project detail, different product)
4. Log every touch immediately in pipeline.md

**Call prep (agent generates before each call):**

```
📞 Call Brief — [Contact Name], [Company]
Project: [name] — [country] — $[value]
Their role: [owner/GC/consultant]
Last touch: [email sent Day X, no response]
Talk track: "Calling about [project] — saw you were awarded. Working with [similar company] on [similar project]. Quick question: how are you handling [feasibility/field coordination/BIM]?"
Ask: 20-min demo call with technical team
Objection prep: [2 likely objections + responses]
```

---

## Competitive Briefing PDF (Free Sample Hook)

When user says "generate briefing for [company]":

1. Research company's current tech stack (BIM tools, field tools)
2. Read PRODUCTS.md competitive positioning
3. Generate 1-page PDF:
   - Their current stack vs Autodesk
   - 3 specific gaps we solve
   - 1 case study from similar company
   - ROI estimate based on their project size
4. Attach to Email #2 as value-add follow-up

---

## Manual Target List Mode

When user provides a list of targets:

1. Parse names/companies/emails from user input
2. Cross-reference with pipeline.md — skip duplicates
3. Research each (Step 2, max 2 searches each)
4. Draft all outreach in batch — present for review
5. User approves → send & log each one
6. **Never auto-send without user approval on manual lists**

---

## Cron Automations (set up via `openclaw cron add`)

```bash
# Daily EPC award scan — every weekday 7am HKT
openclaw cron add "0 7 * * MON-FRI" "epc-award-scan" \
  --message "Search GlobalData Construction and BCI Central for new EPC project awards in: Hong Kong, Vietnam, Singapore, South Korea, Japan, Philippines, Thailand, Malaysia, Indonesia, Australia, India. For each new award: extract project name, value, location, owner, consultant, GC. Check pipeline.md — skip if already tracked. Add new ones to New Leads. Post summary to this channel." \
  --channel discord --to "discord:channel:1496499002638864454" \
  --session isolated --tz Asia/Hong_Kong

# Daily follow-up check — every weekday 8:30am HKT
openclaw cron add "30 8 * * MON-FRI" "followup-review" \
  --message "Read memory/pipeline.md. List prospects with: (1) Touch 1 sent + Day 2 reached → generate Call Brief for Touch 2, (2) Touch 2 done + Day 5 reached → draft Follow-up Email for Touch 3, (3) Touch 4 done + Day 10 reached → draft WhatsApp/Zalo message for Touch 5, (4) Any reply received → flag for Wai. Post prioritized action list." \
  --channel discord --to "discord:channel:1496499002638864454" \
  --session isolated --tz Asia/Hong_Kong

# Weekly pipeline report — every Friday 5pm HKT
openclaw cron add "0 17 * * FRI" "pipeline-report" \
  --message "Read memory/pipeline.md. Calculate: total pipeline by stage, deals advancing vs stalling, win rate, touches sent this week, replies received, meetings booked. Post executive summary." \
  --channel discord --to "discord:channel:1496499006191304745" \
  --session isolated --tz Asia/Hong_Kong
```

---

## Suppression & Compliance

1. **Suppression list:** Any email that bounces or opts out → add to pipeline.md Suppression List — NEVER contact again
2. **Respect opt-out immediately** — if reply says "unsubscribe" / "stop" / "not interested" → suppress + acknowledge
3. **No misleading claims** — don't fabricate case studies or ROI numbers
4. **Keep personalization factual** — only use publicly available info, clearly label hypotheses
5. **Human approval before sending** — agent drafts, Wai approves, THEN send
6. **Regional compliance** — APAC markets have varying anti-spam laws, default to conservative

---

## Emergency Rules

- **If context > 100K tokens:** Stop, summarize progress, save state to pipeline.md
- **If API returns error:** Log error, skip prospect, continue with next
- **If bounce received:** Mark "BOUNCED" in pipeline, add to Suppression List, do NOT retry
- **If reply received:** Alert user immediately in #📞-outreach, pause sequence
- **If opt-out received:** Add to Suppression List, acknowledge, STOP all future contact
- **Maximum 5 prospects per autonomous run** — quality over quantity
- **Never send more than 10 emails in a single day** — avoid spam filters
