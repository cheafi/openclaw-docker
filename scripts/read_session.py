#!/usr/bin/env python3
import json, sys, glob, os

base = os.path.expanduser("data/agents/main/sessions")
files = sorted(glob.glob(f"{base}/*.jsonl"), key=os.path.getmtime, reverse=True)

for f in files[:4]:
    print(f"\n=== {os.path.basename(f)} ===")
    with open(f) as fh:
        for line in fh:
            d = json.loads(line.strip())
            t = d.get("type","")
            if t == "message":
                msg = d.get("message", {})
                role = msg.get("role","")
                content = msg.get("content","")
                usage = msg.get("usage", {})
                out_tokens = usage.get("output", "?")
                if isinstance(content, list):
                    for c in content:
                        if isinstance(c, dict) and c.get("type") == "text":
                            print(f"  [{role}] {c['text'][:400]}")
                        elif isinstance(c, dict) and c.get("type") == "thinking":
                            print(f"  [{role}/thinking] ({len(c.get('thinking',''))} chars)")
                        elif isinstance(c, dict) and c.get("type") == "tool_use":
                            print(f"  [{role}/tool_use] {c.get('name','')}")
                    if not content:
                        print(f"  [{role}] EMPTY content=[] output_tokens={out_tokens}")
                elif isinstance(content, str) and content:
                    print(f"  [{role}] {content[:400]}")
            elif t == "tool_use":
                print(f"  [tool_use] {d.get('name','')} input={str(d.get('input',''))[:150]}")
            elif t == "tool_result":
                c = str(d.get("content",""))
                print(f"  [tool_result] {c[:200]}")
