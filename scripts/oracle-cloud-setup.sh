#!/bin/bash
# ============================================================
# 🦞 Oracle Cloud VPS Setup Script for OpenClaw
# Run this on a fresh Oracle Cloud Ubuntu instance
# ============================================================

set -e

echo "🦞 Setting up OpenClaw on Oracle Cloud..."

# 1. Update system
echo "📦 Updating system..."
sudo apt update && sudo apt upgrade -y

# 2. Install Docker
echo "🐳 Installing Docker..."
curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker $USER

# 3. Install Docker Compose plugin
echo "🐙 Installing Docker Compose..."
sudo apt install -y docker-compose-plugin

# 4. Install Git
echo "📂 Installing Git..."
sudo apt install -y git

# 5. Open firewall ports (Oracle Cloud uses iptables)
echo "🔓 Opening firewall ports..."
sudo iptables -I INPUT 6 -m state --state NEW -p tcp --dport 18789 -j ACCEPT
sudo iptables -I INPUT 6 -m state --state NEW -p tcp --dport 18790 -j ACCEPT
sudo netfilter-persistent save 2>/dev/null || true

# 6. Clone repo
echo "📥 Cloning repository..."
cd ~
git clone https://github.com/cheafi/openclaw-docker.git
cd openclaw-docker

echo ""
echo "✅ Docker and dependencies installed!"
echo ""
echo "📋 Next steps:"
echo "  1. Copy your .env file:      scp .env ubuntu@YOUR_VPS_IP:~/openclaw-docker/"
echo "  2. Copy your data folder:    scp -r data/ ubuntu@YOUR_VPS_IP:~/openclaw-docker/"
echo "  3. Log out and back in:      exit && ssh ubuntu@YOUR_VPS_IP"
echo "  4. Start the bot:            cd ~/openclaw-docker && docker compose up -d --build"
echo "  5. Check logs:               docker compose logs claw --since 1m"
echo ""
echo "🎉 Done! Your bot will run 24/7 for free."
