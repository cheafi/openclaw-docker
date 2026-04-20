# ============================================================
# 🦞 OpenClaw AI Agent — Docker Image
# ============================================================
# Chapters covered: §3 安装, §8 网关运维
# ============================================================

FROM node:22-bookworm-slim

LABEL maintainer="chantszwai" \
      description="OpenClaw AI Agent — Dockerised gateway + skills runtime"

# ── System deps ──────────────────────────────────────────────
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
        ca-certificates curl git jq tini chromium \
        python3 python3-pip python3-venv \
    && rm -rf /var/lib/apt/lists/*

# ── Python deps for Futu skills ─────────────────────────────
RUN python3 -m pip install --break-system-packages futu-api pandas

# Chromium path for agent-browser / playwright skill
ENV CHROME_BIN=/usr/bin/chromium
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

# ── Install OpenClaw CLI + ClawHub CLI + Tool CLIs ───────────
# Pin openclaw to latest stable; clawhub for skill management
# todoist-ts-cli = Todoist task management
RUN npm install -g openclaw@2026.3.23 clawhub@0.9.0 \
        todoist-ts-cli@latest \
    && npm cache clean --force

# ── Install gogcli (Google Workspace CLI — Go binary) ────────
RUN ARCH=$(dpkg --print-architecture) && \
    curl -fsSL "https://github.com/steipete/gogcli/releases/download/v0.12.0/gogcli_0.12.0_linux_${ARCH}.tar.gz" \
    | tar -xz -C /usr/local/bin gog && chmod +x /usr/local/bin/gog

# Verify both CLIs are on PATH
RUN openclaw --version && clawhub --cli-version

# ── Create non-root user ────────────────────────────────────
RUN groupadd -r openclaw && useradd -r -g openclaw -m -s /bin/bash openclaw

# ── Directories (will be bind-mounted at runtime) ───────────
RUN mkdir -p /home/openclaw/.openclaw/workspace/skills \
             /home/openclaw/.openclaw/credentials \
             /home/openclaw/.openclaw/agents \
             /home/openclaw/.openclaw/identity \
    && chown -R openclaw:openclaw /home/openclaw

# ── Defaults ────────────────────────────────────────────────
ENV OPENCLAW_STATE_DIR=/home/openclaw/.openclaw
ENV NODE_ENV=production

USER openclaw
WORKDIR /home/openclaw

# Copy entrypoint
COPY --chown=openclaw:openclaw scripts/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Gateway WS port (Ch.8)
EXPOSE 18789
# Web UI port (Ch.11)
EXPOSE 18790

# Use tini as PID 1 for proper signal handling
ENTRYPOINT ["tini", "--", "entrypoint.sh"]

# Default: run the gateway in foreground
CMD ["openclaw", "gateway", "run", "--verbose"]
