#!/bin/bash
# ============================================================
# 🦞 entrypoint.sh — OpenClaw Docker entrypoint
# ============================================================
# Copies seed config into the state dir on first boot,
# then starts the requested command (gateway by default).
# ============================================================
set -euo pipefail

CONFIG_SRC="/home/openclaw/.openclaw-config/openclaw.json"
CONFIG_DST="/home/openclaw/.openclaw/openclaw.json"

# Seed config on first boot, if empty, or if forced
if [[ -f "$CONFIG_SRC" ]]; then
  if [[ ! -s "$CONFIG_DST" ]] || [[ "${OPENCLAW_FORCE_CONFIG:-}" == "true" ]]; then
    echo "🦞 Seeding openclaw.json from mounted config..."
    cp "$CONFIG_SRC" "$CONFIG_DST"
  fi
fi

# Patch models.json: set thinking=off for gpt-5.4 every 30s
# (OpenClaw strips this field on startup, so we re-apply it)
MODELS_JSON="/home/openclaw/.openclaw/agents/main/agent/models.json"
if [[ -f "$MODELS_JSON" ]] && command -v python3 &>/dev/null; then
  (
    while true; do
      sleep 30
      python3 -c "
import json
p='$MODELS_JSON'
with open(p) as f: d=json.load(f)
changed=False
for m in d.get('providers',{}).get('reelx',{}).get('models',[]):
    if m.get('id')=='gpt-5.4' and m.get('thinking')!='off':
        m['thinking']='off'; m['reasoning']=False; changed=True
if changed:
    with open(p,'w') as f: json.dump(d,f,indent=2); f.write('\n')
" 2>/dev/null || true
    done
  ) &
fi

exec "$@"
