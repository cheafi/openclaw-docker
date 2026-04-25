# 🎯 Recommended Stacks

> Not everyone needs every skill. Here's what to focus on.

---

## For Most Users — The Simple Setup

Use these 6 skills and you'll cover 95% of daily needs:

| # | Skill | What it does | Channel shortcut |
|---|-------|-------------|-----------------|
| 1 | **weather** | Weather forecasts | #☀-天氣-weather |
| 2 | **calendar** | Google Calendar | #📅-日曆-calendar |
| 3 | **gog** (Gmail) | Email inbox | #📧-電郵-email |
| 4 | **reminder** | Quick reminders | #⏰-提醒-reminders |
| 5 | **news-summary** | Daily news | #📰-新聞-news |
| 6 | **tavily-search** | Web search | #一般 |

**That's it.** Everything else is optional. Start here and explore later.

---

## For Wai — The All-in-One Secretary Setup

Optimised for: personal assistant experience, low friction, proactive behaviour.

### Core stack (always use)

| Skill | Why it's core |
|-------|--------------|
| **weather** | Morning briefing, rain alerts |
| **calendar** | Daily schedule, adding events quickly |
| **gog** | Email reading, search, drafting replies |
| **reminder** | Quick "don't forget" nudges |
| **todoist** | Task tracking across days |
| **news-summary** | Stay informed without effort |
| **tavily-search** | Instant research on any topic |
| **memory-pro** | Bot learns your preferences over time |
| **pdf-text-extractor** | Handle documents clients send |
| **email-daily-summary** | Automated morning email digest |

### Work add-ons (when doing BDR)

| Skill | Why |
|-------|-----|
| **lead-researcher** | Prospect research |
| **competitor-watch** | Track competitor moves |
| **Agent Browser** | Deep-dive webpage extraction |
| **webpage-screenshot** | Capture competitor pages |

### Niche add-ons (only when needed)

| Skill | When |
|-------|------|
| **linkedin-monitor** | If actively doing LinkedIn outreach |
| **dating-reply** | When you want conversation help |
| **ollama-local** | When you need private/offline AI |

---

## For Wai — Investing & Market Stack

> Because you actively use investing workflows, here's the recommended finance setup.

### Currently installed (ready to use)

| Skill | What it does for you |
|-------|---------------------|
| **futu-flash** | HK/China market breaking news — great for pre-market scan |
| **xtrade-futu-paper-trade** | Check HK stock prices, paper trade, review positions |
| **news-summary** | General financial news (also covers macro) |
| **tavily-search** | Research any company, market, or trend |

### Recommended to install (high value for you)

| Skill | Why you need it | Install command |
|-------|----------------|----------------|
| **stock-info-explorer** | Quick stock price + fundamentals lookup | `openclaw skills install stock-info-explorer` |
| **market-environment-analysis** | Daily macro/sentiment briefing | `openclaw skills install market-environment-analysis` |
| **economic-calendar-fetcher** | Know when FOMC, CPI, NFP happen | `openclaw skills install economic-calendar-fetcher` |
| **finnhub-pro** | Earnings dates, insider trades, SEC filings | `openclaw skills install finnhub-pro` |
| **stock-analysis** | Deep-dive valuation and technicals | `openclaw skills install stock-analysis` |

### Nice to have (install when needed)

| Skill | When |
|-------|------|
| **us-value-investing-framework** | When doing DCF/value screening |
| **financial-calculator** | For quick NPV, IRR, compound interest math |
| **data-analysis** | For analysing portfolio data or market data |
| **tushare-finance** | Only if you invest in China A-shares |

### Skip these (low practical value)

| Skill | Why skip |
|-------|---------|
| **trading-coach** | Advice is generic — your own process matters more |
| **bbDC-news** | Overlaps with futu-flash + news-summary |
| **polymarket** | Fun but not practical for daily investing |
| **cfo** | Too broad — financial-calculator is more useful |
| **stock-market-pro** | Likely overlaps heavily with stock-analysis |
| **market-analysis-cn** | Only if you focus specifically on China mainland |

### Daily investing workflow — example prompts

**Pre-market brief (before 9:30 AM):**
```
有咩最新股市新聞？
What's the market environment today?
Any economic events this week?
ADSK stock price and recent news
Check my Futu portfolio
```

**During the day:**
```
Search for Procore Q2 earnings results
Analyse ADSK vs PCOR valuation
Alert me when 700.HK drops below $350
What did the Fed say today?
```

**End of day recap:**
```
Market summary today
How did construction tech stocks do?
Futu快訊 — any after-hours news?
Review my portfolio performance
```

**Deep research (weekend):**
```
Full analysis of ADSK stock
Compare ADSK, PCOR, TRMB fundamentals
Is Autodesk undervalued?
Screen for undervalued construction tech stocks
Calculate compound return on $10K in ADSK over 5 years
```

---

## Keep / Hide / Admin-Only / Niche

### ✅ Keep Visible — Show to All Users

These should be front-and-centre. They're the daily-use core.

| Skill/Channel | Why |
|--------------|-----|
| #一般 | Main entry point for everything |
| #☀-天氣-weather | Weather — universally useful |
| #📅-日曆-calendar | Calendar — essential daily tool |
| #⏰-提醒-reminders | Reminders — simple and helpful |
| #📰-新聞-news | News — everyone wants this |
| #📧-電郵-email | Email — saves real time |
| #❓-幫助-help | Feature discovery |
| #📄-文件-documents | Document handling |
| weather, calendar, gog, reminder, todoist | Core productivity skills |
| tavily-search, news-summary, memory-pro | Core intelligence skills |
| pdf-text-extractor, email-daily-summary | Core utility skills |

### ✅ Keep Visible for Me (Wai)

In addition to the above, these should be prominent because I actively use them:

| Skill/Channel | Why |
|--------------|-----|
| #🏗-項目追蹤-projects | Daily APAC project tracking |
| #🎯-prospecting | Lead research for BDR work |
| #📊-競爭對手-competitors | Competitor monitoring (Procore, Trimble, etc.) |
| #🌏-apac-market | Market intelligence for 7 APAC markets |
| #💼-工作-work | General sales tasks and outreach |
| futu-flash | HK/China market news (daily pre-market) |
| xtrade-futu-paper-trade | Portfolio checks and paper trading |
| lead-researcher | Prospecting acceleration |
| competitor-watch | Automated competitor tracking |

### 🙈 Hide from Beginners

These create confusion if shown too early. Keep them available but don't highlight them in onboarding.

| Skill/Channel | Why hide |
|--------------|---------|
| ollama-local | Too technical — "local AI" confuses normal users |
| Agent Browser | Overlaps with tavily-search for most cases |
| webpage-screenshot | Niche — rarely needed |
| obsidian | Only relevant if you use Obsidian |
| linear | Only relevant if your team uses Linear |
| openai-whisper-api | Works automatically on voice messages — no need to explain |
| dating-reply | Personal/sensitive — let users discover it |

### ⚙️ Admin-Only

These are for maintaining the bot. Normal users should never need them.

| Skill/Channel | Why admin |
|--------------|----------|
| #healthcheck | System diagnostics |
| #self-improving | Bot maintenance |
| clawhub | Skill marketplace management |
| skill-creator | Building new skills |
| skill-vetter | Security vetting |
| github | Repository operations |
| node-connect | Connection troubleshooting |
| healthcheck | System health checks |

### 🟠 Niche — Specific Users Only

These are valuable for specific workflows. For beginners, hide these. For Wai, the investing and BDR ones are daily-use.

| Skill | Who needs it | Niche for beginners, but daily for Wai? |
|-------|-------------|----------------------------------------|
| futu-flash | HK/China market followers | ✅ Yes — Wai uses daily |
| xtrade-futu-paper-trade | Active Futu traders | ✅ Yes — Wai uses regularly |
| lead-researcher | BDR/sales professionals | ✅ Yes — Wai uses for prospecting |
| competitor-watch | Sales/product teams | ✅ Yes — Wai tracks Procore/Trimble |
| linkedin-monitor | Active LinkedIn users | ⚠️ Sometimes — needs setup |
| stock-info-explorer | Active investors | ✅ Yes — install recommended |
| market-environment-analysis | Active investors | ✅ Yes — install recommended |
| economic-calendar-fetcher | Active investors | ✅ Yes — install recommended |

---

## Skills That Overlap

| These overlap... | Recommendation |
|-----------------|---------------|
| **gog** + **email-daily-summary** | Keep both — gog is on-demand, email-daily-summary is automatic. They complement each other. |
| **gog (calendar)** + **calendar** | Keep both — calendar is simpler, gog gives full Google access. |
| **tavily-search** + **Agent Browser** | Keep both — tavily for quick searches, Agent Browser for complex page interaction. But tavily should be the default. |
| **reminder** + **todoist** | Keep both — reminder for quick one-offs, todoist for structured task lists. |
| **memory-pro** + **obsidian** | Keep both — memory-pro for quick facts, obsidian for structured long-form notes. |
| **news-summary** + **futu-flash** | No overlap — news-summary is general, futu-flash is HK finance. |

**None of the installed skills are redundant enough to remove.** The overlaps are complementary.

---

## The "Win 99% of Daily Use" Stack

If you could only have 5 skills:

1. **gog** — Email + Calendar + Drive in one
2. **weather** — Universal daily need
3. **tavily-search** — Research anything
4. **reminder** — Never forget things
5. **memory-pro** — Bot learns and remembers

These 5 handle almost everything a normal user asks for in a day.

---

## The "True All-in-One Secretary" Stack

For the full personal assistant experience (10 skills):

1. **gog** — Email, calendar, drive
2. **weather** — Daily weather + rain alerts
3. **calendar** — Quick event management
4. **reminder** — Quick reminders
5. **todoist** — Task tracking
6. **tavily-search** — Web research
7. **news-summary** — Daily briefing
8. **memory-pro** — Learns your preferences
9. **email-daily-summary** — Automated email digest
10. **pdf-text-extractor** — Handle documents

With these 10 + the 4 automatic cron jobs (weather 8AM, news 8:30AM, hourly rain, evening review 9PM), the bot proactively assists throughout the day without being asked.
