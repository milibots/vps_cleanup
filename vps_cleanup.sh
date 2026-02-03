#!/usr/bin/env bash

# ================== COLORS ==================
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
CYAN="\e[36m"
BOLD="\e[1m"
RESET="\e[0m"

# ================== HELPERS ==================
ok()    { echo -e "${GREEN}✔ $1${RESET}"; }
info()  { echo -e "${CYAN}➜ $1${RESET}"; }
warn()  { echo -e "${YELLOW}⚠ $1${RESET}"; }
err()   { echo -e "${RED}✘ $1${RESET}"; }

line()  { echo -e "${BLUE}--------------------------------------------------${RESET}"; }

# ================== START ==================
clear
echo -e "${BOLD}${BLUE}"
echo "🔥 VPS CLEANUP & HEALTH SCRIPT"
echo "🧹 Logs • APT • Pip • Docker • Stats"
echo -e "${RESET}"
line

info "Disk usage BEFORE cleanup"
df -h /
line

# ================== SYSTEMD LOGS ==================
info "Cleaning systemd journal logs"
journalctl --vacuum-size=100M >/dev/null 2>&1 && ok "Journal logs reduced to 100MB"

# ================== LOG FILES ==================
info "Removing rotated & compressed logs"
rm -rf /var/log/*.gz /var/log/*.[0-9] /var/log/*/*.gz /var/log/*/*.[0-9]
ok "Old log files removed"

info "Truncating active log files"
find /var/log -type f -exec truncate -s 0 {} \;
ok "Active logs truncated"

# ================== CRASH REPORTS ==================
info "Removing crash reports"
rm -rf /var/crash/*
ok "Crash reports cleared"

# ================== APT CLEAN ==================
info "Cleaning APT cache & unused packages"
apt clean >/dev/null 2>&1
apt autoremove -y >/dev/null 2>&1
ok "APT cache cleaned"

# ================== PIP CACHE ==================
info "Cleaning pip cache (if exists)"
pip cache purge >/dev/null 2>&1 || rm -rf ~/.cache/pip
ok "Pip cache cleaned"

# ================== DOCKER (OPTIONAL) ==================
if command -v docker &>/dev/null; then
    info "Docker detected — cleaning unused resources"
    docker system prune -af >/dev/null 2>&1
    docker volume prune -f >/dev/null 2>&1
    ok "Docker cleaned"
else
    warn "Docker not installed — skipped"
fi

line

# ================== RESULTS ==================
info "Disk usage AFTER cleanup"
df -h /
line

info "Memory status"
free -h
line

echo -e "${BOLD}${GREEN}✅ CLEANUP COMPLETE — VPS IS HEALTHY${RESET}"
echo -e "${CYAN}💡 Tip: run this weekly or before deployments${RESET}"
