# 🧰 Skill Guide — Wai Bot

> Skills are the bot's abilities. You never need to name a skill — just describe what you want and the bot picks the right one.
>
> This guide covers all 28 installed skills plus notable skills that are available but not yet installed.

---

## How Skills Work

When you type a message, the bot automatically matches it to the right skill. You don't type skill names or commands — just talk naturally.

**28 skills are currently installed and ready.** Many more are available on ClawHub but not installed.

---

## A. Daily-Use / Productivity

These are the skills most users need every day.

---

#### ☔ weather
- **What it is:** Weather lookup via wttr.in and Open-Meteo
- **What it does:** Gets current weather, forecasts, and rain probability for any location (defaults to Hong Kong)
- **How it helps me:** Know whether to bring an umbrella, plan outdoor activities, dress appropriately
- **Best use cases:** Morning weather check, weekend planning, travel weather
- **Example prompts:** `今日天氣點？` · `Will it rain tomorrow?` · `呢個週末天氣`
- **Who should use it:** Everyone
- **Whether I likely need it:** Yes
- **Status:** ✅ Essential

---

#### 📅 calendar
- **What it is:** Google Calendar integration
- **What it does:** Views, creates, edits, and deletes Google Calendar events
- **How it helps me:** Never miss a meeting, plan your day without opening Google Calendar
- **Best use cases:** Check today's schedule, add quick events, find free time
- **Example prompts:** `今日有咩event？` · `加聽日3pm同Peter開會` · `呢個星期五有冇空？`
- **Who should use it:** Everyone
- **Whether I likely need it:** Yes
- **Status:** ✅ Essential

---

#### 📦 gog (Google Workspace)
- **What it is:** Google Workspace CLI — Gmail, Calendar, Drive, Contacts, Sheets, Docs
- **What it does:** Reads and searches emails, manages calendar, accesses Google Drive files
- **How it helps me:** Check inbox, draft replies, search old emails — all without leaving Discord
- **Best use cases:** Email summaries, finding specific emails, drafting replies
- **Example prompts:** `有咩新email？` · `Search email from David about invoice` · `幫我覆呢封email`
- **Who should use it:** Everyone
- **Whether I likely need it:** Yes
- **Status:** ✅ Essential

---

#### ⏰ reminder
- **What it is:** One-time reminder system using OpenClaw cron
- **What it does:** Sets a reminder that pings you in Discord at a specific time
- **How it helps me:** Never forget quick tasks — just tell the bot and it'll remind you
- **Best use cases:** "Remind me to call X at 3pm", medicine reminders, deadline nudges
- **Example prompts:** `提醒我5pm覆客` · `Remind me at 9am tomorrow to call mum` · `30分鐘後提醒我`
- **Who should use it:** Everyone
- **Whether I likely need it:** Yes
- **Status:** ✅ Essential

---

#### ✅ todoist
- **What it is:** Todoist task management integration
- **What it does:** Add, list, complete, and organise tasks and projects in Todoist
- **How it helps me:** Track your to-do list without opening Todoist
- **Best use cases:** Quick task capture, daily task review, marking things done
- **Example prompts:** `我今日要做咩？` · `加task: 交報告` · `完成咗 "買嘢"`
- **Who should use it:** Anyone who uses Todoist for task management
- **Whether I likely need it:** Yes, if you want task tracking
- **Status:** ✅ Essential

---

#### 🧠 memory-pro
- **What it is:** Enhanced memory system based on cognitive science
- **What it does:** Remembers facts you tell it and recalls them in future conversations
- **How it helps me:** The bot learns your preferences, contacts, routines — you don't repeat yourself
- **Best use cases:** Saving preferences, contact details, important facts
- **Example prompts:** `記住我唔食辣` · `記住Peter電話係91234567` · `你記唔記得我鍾意咩？`
- **Who should use it:** Everyone
- **Whether I likely need it:** Yes
- **Status:** ✅ Essential

---

#### 📦 email-daily-summary
- **What it is:** Automated email digest generator
- **What it does:** Logs into Gmail and generates a daily summary of important messages
- **How it helps me:** Get a morning email briefing without checking your inbox manually
- **Best use cases:** Morning email overview, catching up after being away
- **Example prompts:** `今日email summary` · `有咩重要email？`
- **Who should use it:** Everyone with email connected
- **Whether I likely need it:** Yes — works alongside gog for email
- **Status:** ✅ Useful

---

#### 📦 pdf-text-extractor
- **What it is:** PDF text extraction with OCR support
- **What it does:** Extracts readable text from PDF files, including scanned documents
- **How it helps me:** Quickly read, search, or summarise PDF content without opening the file
- **Best use cases:** Summarise a long report, extract data from an invoice, search a contract
- **Example prompts:** Attach a PDF and ask `Summarise this PDF` · `Extract the text from this`
- **Who should use it:** Anyone who receives PDFs
- **Whether I likely need it:** Yes, occasionally
- **Status:** ✅ Useful

---

## B. Search / Web / Data Gathering

---

#### 🔍 tavily-search
- **What it is:** Web search engine via Tavily API
- **What it does:** Searches the web and returns relevant results with titles, URLs, and snippets
- **How it helps me:** Look up anything — news, facts, companies, products — without leaving Discord
- **Best use cases:** Quick research, fact-checking, finding links
- **Example prompts:** `Search for HK property market 2025` · `What's the latest on OpenAI?` · `幫我search呢間公司`
- **Who should use it:** Everyone
- **Whether I likely need it:** Yes
- **Status:** ✅ Essential

---

#### 📦 news-summary
- **What it is:** News aggregator from international RSS feeds
- **What it does:** Fetches top stories from trusted sources and creates summaries
- **How it helps me:** Stay informed without reading 10 news sites
- **Best use cases:** Daily news briefing, topic-specific news searches
- **Example prompts:** `今日有咩新聞？` · `有冇AI新聞？` · `畀個科技新聞summary`
- **Who should use it:** Everyone
- **Whether I likely need it:** Yes
- **Status:** ✅ Essential

---

#### 📦 Agent Browser
- **What it is:** Headless browser automation (Rust-based, with Node.js fallback)
- **What it does:** Navigates websites, clicks, types, extracts content, takes screenshots
- **How it helps me:** Read specific pages, fill forms, extract structured data from websites
- **Best use cases:** Reading paywalled content, extracting pricing tables, navigating multi-page sites
- **Example prompts:** `Go to example.com and get the pricing` · `Browse this page and summarise it`
- **Who should use it:** Power users who need more than a simple search
- **Whether I likely need it:** Sometimes — tavily-search covers most cases
- **Status:** 🔵 Useful

---

#### 📦 webpage-screenshot
- **What it is:** Webpage screenshot tool
- **What it does:** Opens a URL and captures a full-page screenshot as an image
- **How it helps me:** Quickly capture how a webpage looks without visiting it yourself
- **Best use cases:** Capture competitor pages, document website states, save visual records
- **Example prompts:** `Screenshot apple.com` · `截圖呢個網頁` · `Capture this page: [url]`
- **Who should use it:** Anyone who needs visual records of webpages
- **Whether I likely need it:** Occasionally
- **Status:** 🔵 Useful

---

## C. Work / BDR / Sales

These skills are for B2B sales and business development work.

---

#### 📦 lead-researcher
- **What it is:** Automated B2B lead research and enrichment
- **What it does:** Finds companies matching criteria, enriches with contact data, drafts outreach
- **How it helps me:** Accelerate prospecting — find leads without manual research
- **Best use cases:** Finding companies in a specific market, researching prospects
- **Example prompts:** `Research construction companies in Vietnam` · `Find contacts at Shopify HK`
- **Who should use it:** BDR/sales professionals
- **Whether I likely need it:** Only if you do B2B sales
- **Status:** 🟡 Useful (may need additional API setup)

---

#### 📦 competitor-watch
- **What it is:** Automated competitor monitoring
- **What it does:** Monitors competitor websites, pricing, product changes, and social presence
- **How it helps me:** Know what competitors ship before their customers do
- **Best use cases:** Tracking pricing changes, new feature launches, market moves
- **Example prompts:** `Check competitor changes this week` · `Monitor Autodesk pricing`
- **Who should use it:** BDR/sales or product teams
- **Whether I likely need it:** Only if you actively track competitors
- **Status:** 🟡 Useful (needs competitor list configured)

---

#### 📦 linkedin-monitor
- **What it is:** LinkedIn inbox monitoring with progressive autonomy
- **What it does:** Monitors LinkedIn messages hourly, drafts replies in your voice, alerts on new conversations
- **How it helps me:** Never miss a LinkedIn message, get reply suggestions
- **Best use cases:** Staying responsive to prospects and connections on LinkedIn
- **Example prompts:** `Check LinkedIn inbox` · `Any new LinkedIn messages?`
- **Who should use it:** Active LinkedIn users, BDR professionals
- **Whether I likely need it:** Only if LinkedIn is important for your work
- **Status:** ⚠️ Needs setup — requires browser session or API access

---

#### 📦 dating-reply
- **What it is:** Reply generator for dating app conversations
- **What it does:** Suggests witty, natural replies based on conversation screenshots or messages
- **How it helps me:** Get unstuck in dating app conversations
- **Best use cases:** Crafting opening messages, replying to matches
- **Example prompts:** Send a screenshot and ask `幫我諗reply` · `Help me respond to this`
- **Who should use it:** Anyone who wants dating conversation help
- **Whether I likely need it:** Optional — personal preference
- **Status:** 🔵 Useful

---

## D. Finance / Investing

These skills are for people actively trading or following financial markets.

---

#### 📦 futu-flash
- **What it is:** Futu financial news flash scraper
- **What it does:** Fetches latest financial news from Futu's flash news feed
- **How it helps me:** Stay on top of breaking market news in Chinese
- **Best use cases:** Morning market check, breaking news alerts
- **Example prompts:** `有咩最新股市新聞？` · `Futu快訊` · `最新財經消息`
- **Who should use it:** Active investors/traders
- **Whether I likely need it:** Only if you follow HK/China markets
- **Status:** 🟠 Niche

---

#### 📦 xtrade-futu-paper-trade
- **What it is:** Futu OpenD paper trading integration
- **What it does:** Queries stock prices, checks portfolio, executes paper trades via Futu API
- **How it helps me:** Practice trading or check positions without leaving Discord
- **Best use cases:** Paper trading, checking stock prices, portfolio review
- **Example prompts:** `Buy 100 shares of 0700.HK paper` · `Check my portfolio` · `700.HK幾錢？`
- **Who should use it:** Active traders using Futu
- **Whether I likely need it:** Only if you use Futu for trading
- **Status:** ⚠️ Needs setup — requires Futu OpenD running on host

---

## E. System / Platform / AI

These skills are for maintaining and extending the bot. Admin or developer use only.

---

#### 📦 github
- **What it is:** GitHub CLI integration
- **What it does:** Manages issues, PRs, CI runs via the `gh` CLI
- **How it helps me:** Interact with GitHub repos from Discord
- **Best use cases:** Check PR status, create issues, review CI
- **Example prompts:** `Show open PRs on cheafi/openclaw-docker` · `Create an issue`
- **Who should use it:** Developers
- **Whether I likely need it:** Only if you use GitHub regularly
- **Status:** ⚙️ Admin-only

---

#### 📦 clawhub
- **What it is:** ClawHub skill marketplace CLI
- **What it does:** Search, install, update, and publish skills from clawhub.com
- **How it helps me:** Add new capabilities to the bot
- **Best use cases:** Finding and installing new skills
- **Example prompts:** `Search for productivity skills` · `Install the summarize skill`
- **Who should use it:** Admin/builder
- **Whether I likely need it:** Rarely
- **Status:** ⚙️ Admin-only

---

#### 📦 skill-creator
- **What it is:** Skill authoring and editing tool
- **What it does:** Creates, edits, improves, or audits skills
- **How it helps me:** Build custom skills for the bot
- **Best use cases:** Creating a new skill, improving an existing one
- **Example prompts:** `Create a skill for tracking expenses` · `Improve the weather skill`
- **Who should use it:** Admin/builder
- **Whether I likely need it:** No — admin only
- **Status:** ⚙️ Admin-only

---

#### 📦 skill-vetter
- **What it is:** Security-first skill vetting tool
- **What it does:** Checks skills for red flags, suspicious patterns, and permission scope before installation
- **How it helps me:** Stay safe when adding third-party skills
- **Best use cases:** Vetting a skill from ClawHub before installing
- **Example prompts:** `Vet this skill before I install it`
- **Who should use it:** Admin
- **Whether I likely need it:** Rarely
- **Status:** ⚙️ Admin-only

---

#### 📦 healthcheck
- **What it is:** System health and security hardening tool
- **What it does:** Runs security audits, checks system status, reviews risk posture
- **How it helps me:** Know if the bot is healthy and secure
- **Best use cases:** Troubleshooting, periodic security checks
- **Example prompts:** `Run a healthcheck` · `Check system status`
- **Who should use it:** Admin
- **Whether I likely need it:** Only when something breaks
- **Status:** ⚙️ Admin-only

---

#### 📦 node-connect
- **What it is:** OpenClaw node connection diagnostics
- **What it does:** Diagnoses connection and pairing issues for companion apps
- **How it helps me:** Fix mobile app connection issues
- **Best use cases:** Troubleshooting companion app pairing
- **Example prompts:** `Why can't my phone connect?`
- **Who should use it:** Admin
- **Whether I likely need it:** Very rarely
- **Status:** ⚙️ Admin-only

---

#### 📦 obsidian
- **What it is:** Obsidian vault integration
- **What it does:** Creates, searches, and manages Markdown notes in an Obsidian vault
- **How it helps me:** Take notes and manage knowledge without leaving Discord
- **Best use cases:** Quick note capture, searching past notes, knowledge management
- **Example prompts:** `Add a note about today's meeting` · `Search my notes for "project X"`
- **Who should use it:** Obsidian users
- **Whether I likely need it:** Only if you use Obsidian
- **Status:** 🔵 Useful (if Obsidian is set up)

---

#### 📦 ollama-local
- **What it is:** Local AI model management via Ollama
- **What it does:** Runs AI models locally for private processing, no cloud needed
- **How it helps me:** Process sensitive data without sending it to the cloud
- **Best use cases:** Private document analysis, offline AI, testing models
- **Example prompts:** `用ollama分析呢段文` · `List local models` · `Pull llama3`
- **Who should use it:** Advanced users / privacy-conscious users
- **Whether I likely need it:** Optional — cloud models handle most tasks
- **Status:** 🟡 Advanced

---

#### 🌐 openai-whisper-api
- **What it is:** Speech-to-text via OpenAI's Whisper API
- **What it does:** Transcribes audio files and voice messages to text
- **How it helps me:** Convert voice messages to readable text
- **Best use cases:** Transcribing voice notes, meeting recordings, voice messages
- **Example prompts:** Send a voice message → bot auto-transcribes
- **Who should use it:** Anyone who sends/receives voice messages
- **Whether I likely need it:** Occasionally
- **Status:** 🔵 Useful

---

#### 📦 linear
- **What it is:** Linear project management integration
- **What it does:** Creates, queries, and manages issues and projects in Linear
- **How it helps me:** Track project work without leaving Discord
- **Best use cases:** Issue tracking, sprint management, project updates
- **Example prompts:** `Show my open Linear issues` · `Create issue: Fix login bug`
- **Who should use it:** Teams using Linear for project management
- **Whether I likely need it:** Only if you use Linear
- **Status:** 🟡 Niche (if using Linear)

---

## Skills NOT Installed — Full Catalog by Category

> These skills are referenced in ClawHub or community guides but are **not currently installed** on your system.
> For each one: what it actually does in plain English, whether you need it, and how to install it.
>
> Install any skill: `openclaw skills install [name]` or ask the bot `Install the [name] skill`

---

### A. Document / Office / Productivity Tools

These help you create, convert, and organise files.

---

#### 📄 pptx (PowerPoint Creator)
- **What it is:** Creates PowerPoint presentations from text or notes
- **What it does:** Turns your bullet points, outlines, or meeting notes into a formatted .pptx file
- **How it helps me:** Use this to create a quick slide deck for a client pitch or internal presentation
- **Best use cases:** Sales decks, project summaries, meeting presentations
- **Example prompts:** `Create a PPT from these notes: [paste notes]` · `Make a 5-slide pitch deck about Forma`
- **Who should use it:** Anyone who regularly makes presentations
- **Whether I likely need it:** Yes — useful for BDR work (pitch decks, client materials)
- **Status:** ❌ Not installed · 🔵 Useful — install when needed

---

#### 📊 xlsx (Excel/Spreadsheet Creator)
- **What it is:** Creates Excel spreadsheets from data or descriptions
- **What it does:** Builds formatted .xlsx files with data, formulas, charts
- **How it helps me:** Use this to create trackers, budgets, comparison tables, pipeline reports
- **Best use cases:** Pipeline tracking, financial comparisons, data exports
- **Example prompts:** `Build an Excel tracker from this data` · `Create a comparison spreadsheet for APAC markets`
- **Who should use it:** Anyone who works with data or reports
- **Whether I likely need it:** Yes — great for pipeline and market data
- **Status:** ❌ Not installed · 🔵 Useful — install when needed

---

#### 📝 docx (Word Document Creator)
- **What it is:** Creates Word documents from text
- **What it does:** Generates formatted .docx files — reports, proposals, letters
- **How it helps me:** Use this to draft proposals, meeting minutes, or formal documents
- **Best use cases:** Proposals, reports, formal letters
- **Example prompts:** `Create a Word doc from these meeting notes` · `Draft a project proposal`
- **Who should use it:** Anyone who sends formal documents
- **Whether I likely need it:** Occasionally
- **Status:** ❌ Not installed · 🔵 Useful

---

#### 🔗 baoyu-url-to-markdown
- **What it is:** Converts any webpage URL to clean Markdown text
- **What it does:** Strips ads, navigation, and clutter — extracts just the article content as Markdown
- **How it helps me:** Use this to save articles, archive content, or turn web pages into notes
- **Best use cases:** Saving articles for reference, converting competitor pages, archiving research
- **Example prompts:** `Turn this webpage into Markdown: [url]` · `Save this article as Markdown`
- **Who should use it:** Researchers, note-takers
- **Whether I likely need it:** Sometimes — Agent Browser covers similar ground
- **Status:** ❌ Not installed · 🟡 Optional (Agent Browser overlaps)

---

#### 📋 summarize
- **What it is:** Summarises URLs, podcasts, local files, and YouTube transcripts
- **What it does:** Reads content and produces a concise summary with key points
- **How it helps me:** Use this to quickly digest long articles, videos, or documents
- **Best use cases:** Summarising competitor blog posts, industry reports, YouTube talks
- **Example prompts:** `Summarise this article: [url]` · `Summarise this YouTube video: [url]`
- **Who should use it:** Everyone
- **Whether I likely need it:** Yes — saves significant reading time
- **Status:** ❌ Not installed (bundled — run `openclaw skills install summarize`) · ✅ Recommended to install

---

#### 🔄 markdown-converter
- **What it is:** Converts files between Markdown and other formats
- **What it does:** Converts Markdown to HTML, PDF, or other formats and vice versa
- **How it helps me:** Use this to format notes or convert documents for sharing
- **Best use cases:** Converting meeting notes to PDF, formatting content for sharing
- **Example prompts:** `Convert this Markdown to PDF` · `Turn this file into HTML`
- **Who should use it:** Content creators, note-takers
- **Whether I likely need it:** Rarely
- **Status:** ❌ Not installed · 🟡 Optional

---

#### 📁 file-summary / file-organizer / visual-file-sorter
- **What it is:** File management and organisation tools
- **What it does:** file-summary summarises file contents; file-organizer auto-sorts files into folders; visual-file-sorter sorts files with visual preview
- **How it helps me:** Use these to clean up messy Downloads folders or organise project files
- **Best use cases:** Cleaning up Downloads, organising project files, finding duplicates
- **Example prompts:** `Organize my Downloads folder` · `Summarise all files in this folder`
- **Who should use it:** Anyone with messy file systems
- **Whether I likely need it:** Nice to have, not essential
- **Status:** ❌ Not installed · 🟡 Optional

---

#### 🎯 afrexai-productivity-system
- **What it is:** Structured productivity framework
- **What it does:** Implements a specific productivity methodology with task tracking, goals, and habits
- **How it helps me:** Adds a structured productivity layer on top of basic task management
- **Best use cases:** People who want a full productivity system, not just a to-do list
- **Example prompts:** `Set up my productivity system` · `Review my weekly goals`
- **Who should use it:** Productivity enthusiasts
- **Whether I likely need it:** Probably not — todoist + calendar covers most needs
- **Status:** ❌ Not installed · 🟡 Optional (overlaps with todoist + calendar)

---

### B. Search / Web / Data Gathering (Not Installed)

---

#### 🔍 multi-search-engine
- **What it is:** Searches across multiple search engines simultaneously
- **What it does:** Queries Google, Bing, DuckDuckGo, etc. and merges results
- **How it helps me:** Broader search coverage than single-engine search
- **Best use cases:** Deep research, cross-referencing sources
- **Example prompts:** `Search all engines for APAC construction market trends`
- **Who should use it:** Researchers
- **Whether I likely need it:** No — tavily-search covers 95% of cases
- **Status:** ❌ Not installed · 🟡 Optional (tavily-search is usually enough)

---

#### 🌐 browser-automation / ai-web-automation
- **What it is:** Automated browser workflows — fill forms, click buttons, navigate pages
- **What it does:** Automates repetitive browser tasks without manual clicking
- **How it helps me:** Use this to automate login flows, data extraction, or multi-step web tasks
- **Best use cases:** Scraping data, automating web workflows, filling repetitive forms
- **Example prompts:** `Automate this browser task: log in and download the report`
- **Who should use it:** Power users with repetitive web workflows
- **Whether I likely need it:** Rarely — Agent Browser handles most cases
- **Status:** ❌ Not installed · 🟡 Advanced (Agent Browser overlaps)

---

#### 🔎 find-skills
- **What it is:** Searches for available skills on ClawHub
- **What it does:** Finds and recommends skills based on what you need
- **How it helps me:** Discover new bot capabilities
- **Best use cases:** "Is there a skill for X?"
- **Example prompts:** `Find a skill for creating PowerPoints` · `Search skills for investing`
- **Who should use it:** Admin
- **Whether I likely need it:** Rarely — clawhub covers this
- **Status:** ❌ Not installed · ⚙️ Admin-only

---

### C. Assistant Growth / Extensibility

> These are **builder tools** — for people who want to extend, improve, or manage the bot's capabilities. Normal users can skip this entire section.

---

#### 🔧 self-improving / self-improving-agent
- **What it is:** Enables the bot to automatically improve its own skills and behaviour
- **What it does:** Analyses performance and suggests or makes improvements
- **How it helps me:** Bot gets smarter over time without manual intervention
- **Status:** ❌ Not installed · ⚙️ Admin-only — impressive concept but experimental

#### 🔧 skill-builder / skill-guard / self-evolving-skill / skill-scanner
- **What it is:** Variations on skill creation, security, and evolution
- **What it does:** Build, protect, evolve, and audit skills
- **How it helps me:** Only if you're actively building or managing skills
- **Status:** ❌ Not installed · ⚙️ Admin-only — skill-creator + skill-vetter cover the basics

#### 🔧 ontology
- **What it is:** Knowledge structure and concept mapping
- **What it does:** Builds structured knowledge graphs from information
- **Status:** ❌ Not installed · ⚙️ Admin-only / Experimental

#### 🔧 Proactive Agent
- **What it is:** Makes the bot take initiative instead of just responding
- **What it does:** Bot proactively checks things and suggests actions
- **How it helps me:** Could enable "good morning" briefings and unsolicited suggestions
- **Status:** ❌ Not installed · 🟡 Advanced — interesting but unproven

#### 🔧 mcp-builder / using-superpowers / subagent-driven-development / agent-tools
- **What it is:** Advanced agent architecture tools
- **What it does:** Build MCP servers, use advanced capabilities, spawn sub-agents
- **How it helps me:** Only for building complex multi-agent systems
- **Status:** ❌ Not installed · ⚙️ Admin-only — deep developer tools

---

### D. System / Automation / Execution

---

#### 🖥 desktop-control
- **What it is:** macOS desktop automation (via Peekaboo CLI)
- **What it does:** Controls your Mac UI — clicks buttons, reads screens, automates apps
- **How it helps me:** Use this to automate desktop tasks you do manually every day
- **Best use cases:** Automating repetitive Mac workflows, extracting data from apps
- **Example prompts:** `Take a screenshot of my desktop` · `Click the submit button in the current app`
- **Who should use it:** macOS power users
- **Whether I likely need it:** Interesting but fragile — not essential
- **Status:** ❌ Not installed · 🟡 Advanced / Experimental

---

#### ⏱ cron-mastery
- **What it is:** Advanced cron scheduling management
- **What it does:** Helps set up and manage complex scheduled tasks
- **How it helps me:** OpenClaw already has basic cron — this adds more control
- **Best use cases:** Complex scheduling, dependent tasks, recurring workflows
- **Example prompts:** `Set up a cron job for daily report generation`
- **Who should use it:** Admin
- **Whether I likely need it:** No — basic cron already works
- **Status:** ❌ Not installed · ⚙️ Admin-only

---

#### 📡 auto-monitor / auto-workflow
- **What it is:** Automated monitoring and workflow execution
- **What it does:** Watches for changes and triggers actions automatically
- **How it helps me:** Could automate "when X happens, do Y" workflows
- **Best use cases:** Price alerts, competitor change detection, automated reports
- **Example prompts:** `Monitor this page and alert me when it changes`
- **Who should use it:** Power users
- **Whether I likely need it:** Interesting but complex to set up
- **Status:** ❌ Not installed · 🟡 Advanced

---

#### 🛡 openclaw-cli / openclaw-shield / openclaw-ops-guardrails / lu-auto-deploy
- **What it is:** OpenClaw platform management and security tools
- **What it does:** CLI operations, security hardening, operational guardrails, auto-deployment
- **How it helps me:** Only for managing the OpenClaw platform itself
- **Status:** ❌ Not installed · ⚙️ Admin-only — system operators only

---

### E. Content Creation

---

#### 🎬 remotion-video-toolkit
- **What it is:** Programmatic video creation using Remotion
- **What it does:** Generates videos from code — data visualisations, animated content
- **How it helps me:** Use this to create automated video content
- **Best use cases:** Social media videos, data visualisation videos, presentations
- **Example prompts:** `Create a video showing this data over time`
- **Who should use it:** Content creators
- **Whether I likely need it:** Probably not — very niche
- **Status:** ❌ Not installed · 🟠 Niche

---

#### ✍️ copywriting
- **What it is:** Marketing copy generator
- **What it does:** Writes ads, landing pages, email campaigns, social posts
- **How it helps me:** The bot already writes copy natively — this adds templates and frameworks
- **Best use cases:** Marketing campaigns, ad copy, social media content
- **Example prompts:** `Write a LinkedIn ad for Forma` · `Draft social media posts for this launch`
- **Who should use it:** Marketers
- **Whether I likely need it:** No — the bot's natural writing handles most copy tasks
- **Status:** ❌ Not installed · 🟡 Optional (bot already writes copy)

---

### F. Cost-Saving / Utility

---

#### 💰 free-ride
- **What it is:** Routes queries to free AI models when possible
- **What it does:** Uses free-tier APIs to reduce costs for simple tasks
- **How it helps me:** Save money on API costs for low-complexity queries
- **Best use cases:** Cost optimisation for high-volume usage
- **Example prompts:** Not user-facing — works automatically
- **Who should use it:** Cost-conscious operators
- **Whether I likely need it:** Maybe — depends on your API spend
- **Status:** ❌ Not installed · 🟡 Optional

---

### G. Work / Engineering / Platforms (Not Installed)

---

#### 💬 feishu-doc / feishu-drive
- **What it is:** Feishu (Lark) integration for documents and drive
- **What it does:** Creates and manages Feishu docs and files
- **How it helps me:** Only if your team uses Feishu/Lark for collaboration
- **Status:** ❌ Not installed · 🟠 Niche (Feishu users only)

---

#### 🔧 git-cli
- **What it is:** Git command-line operations
- **What it does:** Runs git commands — commit, push, pull, branch, etc.
- **How it helps me:** github skill already covers most Git needs
- **Status:** ❌ Not installed · ⚙️ Admin-only (github skill overlaps)

---

### H. Investing / Finance / Market Skills

> **Important:** These are documented in detail because Wai actively uses investing workflows.
> Most are NOT installed yet. See [RECOMMENDED_STACKS.md](RECOMMENDED_STACKS.md) for the recommended investing stack.

---

#### 📈 stock-info-explorer
- **What it is:** Stock information lookup tool
- **What it does:** Gets real-time and historical stock data — price, volume, fundamentals
- **How it helps me:** Use this for quick stock price checks and basic company financials
- **Best use cases:** Quick price check, basic company lookup, comparing stocks
- **Example prompts:** `What's the price of ADSK?` · `Show me TSMC fundamentals`
- **Who should use it:** Active investors
- **Whether I likely need it:** Yes — basic tool for any investor
- **Status:** ❌ Not installed · ✅ Recommended for investing users

---

#### 📊 stock-analysis / us-stock-analysis
- **What it is:** In-depth stock analysis tools
- **What it does:** Technical and fundamental analysis — charts, ratios, valuation, peer comparison
- **How it helps me:** Use this for deep-dive analysis before making investment decisions
- **Best use cases:** Earnings analysis, valuation comparison, technical chart review
- **Example prompts:** `Analyse ADSK stock` · `Compare ADSK vs PTC valuation` · `ADSK earnings analysis`
- **Who should use it:** Active investors doing research
- **Whether I likely need it:** Yes — if you do your own stock research
- **Status:** ❌ Not installed · 🔵 Useful for investing users

---

#### 📉 tushare-finance
- **What it is:** China A-shares financial data via TuShare API
- **What it does:** Gets data for Chinese mainland stocks — prices, financials, industry data
- **How it helps me:** Use this for China market research and A-share analysis
- **Best use cases:** China market monitoring, A-share screening, sector analysis
- **Example prompts:** `查下中國建築板塊嘅股票` · `China construction sector stocks`
- **Who should use it:** Investors focused on China A-shares
- **Whether I likely need it:** Only if you invest in China mainland stocks
- **Status:** ❌ Not installed · 🟠 Niche (China A-shares only)

---

#### 🌍 market-environment-analysis / market-environment / market-analysis-cn
- **What it is:** Macro market environment analysis tools
- **What it does:** Analyses overall market conditions — sentiment, economic indicators, sector rotation
- **How it helps me:** Use this for pre-market briefings and understanding market context
- **Best use cases:** Morning market brief, macro environment check, sector analysis
- **Example prompts:** `Give me a market environment summary` · `What's the macro outlook?` · `中國市場分析`
- **Who should use it:** Active investors
- **Whether I likely need it:** Yes — very useful for daily market context
- **Status:** ❌ Not installed · ✅ Recommended for investing users

---

#### 📡 finnhub-pro
- **What it is:** Professional financial data via Finnhub API
- **What it does:** Real-time quotes, company news, earnings, financials, insider trading, SEC filings
- **How it helps me:** Use this for comprehensive US stock data and corporate events
- **Best use cases:** Earnings tracking, corporate events, insider activity
- **Example prompts:** `ADSK upcoming earnings` · `Any insider trades at Procore?` · `SEC filings for PCOR`
- **Who should use it:** Serious US stock investors
- **Whether I likely need it:** Yes — if you follow US stocks
- **Status:** ❌ Not installed · 🔵 Useful (requires Finnhub API key)

---

#### 🏋️ trading-coach
- **What it is:** AI trading coach and strategy advisor
- **What it does:** Analyses trades, reviews strategy, suggests improvements to trading approach
- **How it helps me:** Use this for trade review and improving your trading process
- **Best use cases:** Post-trade analysis, strategy review, risk assessment
- **Example prompts:** `Review my recent trades` · `What's wrong with my trading strategy?`
- **Who should use it:** Active traders
- **Whether I likely need it:** Only if you actively trade
- **Status:** ❌ Not installed · 🟡 Advanced

---

#### 📅 economic-calendar-fetcher
- **What it is:** Economic events calendar
- **What it does:** Fetches upcoming economic data releases — FOMC, CPI, NFP, GDP, etc.
- **How it helps me:** Use this to know what macro events are coming that could move markets
- **Best use cases:** Pre-market prep, planning around data releases
- **Example prompts:** `What economic events are this week?` · `When is the next FOMC meeting?`
- **Who should use it:** Active investors
- **Whether I likely need it:** Yes — essential for market-aware investing
- **Status:** ❌ Not installed · ✅ Recommended for investing users

---

#### 💎 us-value-investing-framework
- **What it is:** Value investing analysis framework
- **What it does:** Screens stocks using value investing criteria — P/E, P/B, DCF, margin of safety
- **How it helps me:** Use this to find undervalued stocks using Warren Buffett-style analysis
- **Best use cases:** Stock screening, valuation analysis, comparing intrinsic vs market value
- **Example prompts:** `Is ADSK undervalued?` · `Screen for undervalued construction tech stocks`
- **Who should use it:** Value investors
- **Whether I likely need it:** Useful if you follow a value investing approach
- **Status:** ❌ Not installed · 🔵 Useful

---

#### 🧮 financial-calculator
- **What it is:** Financial math and calculation tool
- **What it does:** Compound interest, mortgage calculations, ROI, breakeven, NPV, IRR
- **How it helps me:** Use this for quick financial math without a spreadsheet
- **Best use cases:** Investment return calculations, loan comparisons, financial planning
- **Example prompts:** `Calculate compound interest on $10,000 at 8% for 10 years` · `What's the NPV?`
- **Who should use it:** Investors, anyone doing financial planning
- **Whether I likely need it:** Occasionally useful
- **Status:** ❌ Not installed · 🔵 Useful

---

#### 📰 bbDC-news
- **What it is:** Bloomberg/financial news aggregator
- **What it does:** Fetches financial news from Bloomberg-style sources
- **How it helps me:** Use this for quality financial news coverage
- **Best use cases:** Morning market news, breaking financial stories
- **Example prompts:** `Bloomberg financial news today` · `Latest financial headlines`
- **Who should use it:** Active investors
- **Whether I likely need it:** Overlaps with futu-flash and news-summary — install only if you want broader sources
- **Status:** ❌ Not installed · 🟡 Optional (overlaps with existing news skills)

---

#### 🎲 polymarket-odds / polymarket
- **What it is:** Prediction market data from Polymarket
- **What it does:** Gets odds on real-world events — elections, crypto, policy, macro events
- **How it helps me:** Use this to gauge market sentiment on binary outcomes
- **Best use cases:** Checking election odds, crypto event probabilities, policy predictions
- **Example prompts:** `What are the odds of a Fed rate cut?` · `Polymarket odds on [event]`
- **Who should use it:** Traders interested in prediction markets
- **Whether I likely need it:** Niche — interesting but not daily use
- **Status:** ❌ Not installed · 🟠 Niche

---

#### 📊 stock-market-pro
- **What it is:** Comprehensive stock market analysis platform
- **What it does:** Advanced charting, screening, analysis, alerts
- **How it helps me:** All-in-one stock analysis — may overlap with stock-analysis
- **Best use cases:** Comprehensive market analysis
- **Example prompts:** `Full market analysis` · `Screen for momentum stocks`
- **Who should use it:** Active traders and investors
- **Whether I likely need it:** Check if it overlaps with stock-analysis before installing both
- **Status:** ❌ Not installed · 🔵 Useful (check overlap with stock-analysis)

---

#### 💼 cfo
- **What it is:** CFO-style financial analysis and reporting
- **What it does:** Generates financial reports, analyses cash flow, budgets, P&L
- **How it helps me:** Use this for personal or business financial analysis
- **Best use cases:** Budget analysis, cash flow projection, financial health check
- **Example prompts:** `Analyse my spending this month` · `Create a budget projection`
- **Who should use it:** Finance professionals, business owners
- **Whether I likely need it:** Probably not — unless you do personal financial modelling
- **Status:** ❌ Not installed · 🟡 Optional

---

#### 📊 data-analysis
- **What it is:** General data analysis and visualisation
- **What it does:** Analyses datasets, creates charts, finds patterns
- **How it helps me:** Use this to make sense of any data — sales numbers, market data, survey results
- **Best use cases:** Analysing pipeline data, market research data, financial data
- **Example prompts:** `Analyse this data: [paste CSV]` · `Create a chart from this data`
- **Who should use it:** Anyone working with data
- **Whether I likely need it:** Occasionally useful — especially for work reports
- **Status:** ❌ Not installed · 🔵 Useful

---

## Overlap Analysis

Some installed skills do similar things. Here's which to prefer:

| Task | Preferred Skill | Alternative (deprioritise) | Why |
|------|----------------|---------------------------|-----|
| Web search | **tavily-search** | Agent Browser | Tavily is faster; Browser is for complex page interaction |
| Read a webpage | **Agent Browser** | webpage-screenshot | Browser gets text; screenshot gets images |
| Quick reminder | **reminder** | todoist | Reminder is lighter; Todoist for recurring/complex tasks |
| Recurring tasks | **todoist** | reminder | Reminder is one-time only |
| Remember a fact | **memory-pro** | obsidian | Memory-pro for quick facts; Obsidian for long structured notes |
| Email check | **gog** | email-daily-summary | gog is on-demand; email-daily-summary is for automated digests |
| News | **news-summary** | tavily-search | news-summary is curated; tavily for specific topic searches |
| Stock news | **futu-flash** | news-summary | futu-flash for HK/China finance; news-summary for general |
| Calendar | **calendar** | gog (calendar) | Both work — calendar is simpler; gog has full Google suite |

---

## Status Legend

| Label | Meaning |
|-------|---------|
| ✅ Essential | Core daily-use skill — keep front and centre |
| 🔵 Useful | Good to have, used regularly but not daily |
| 🟡 Advanced / Niche | Only useful for specific workflows or users |
| 🟠 Niche | Specialised — finance, trading, specific platforms |
| ⚠️ Needs setup | Installed but requires additional configuration |
| ⚙️ Admin-only | For system maintenance, not normal users |
| ❌ Not installed | Available but not yet installed |
