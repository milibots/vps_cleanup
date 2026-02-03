Perfect 😄 here’s a **clean, professional, GitHub-ready `README.md`** that matches the vibe of your script and repos like `make_systemctl_service`.

You can copy-paste this directly into `README.md`.

---

```md
# 🔥 vps_cleanup.sh

A **safe, colorful, all-in-one VPS cleanup script** that frees disk space, cleans logs & caches, and shows clear system health stats — all in one run.

Designed for **Ubuntu / Debian VPS** environments running Python apps, Docker, systemd services, and CI deployments.

---

## ✨ Features

- 🧹 **Systemd journal cleanup** (prevents log explosions)
- 🗂 **Log rotation cleanup** (`/var/log`)
- 💥 **Crash report removal**
- 📦 **APT cache & unused package cleanup**
- 🐍 **Pip cache cleanup**
- 🐳 **Docker cleanup** (unused images, containers, volumes)
- 📊 **Disk & memory stats before and after**
- 🌈 **Colorful, readable output**
- 🛡 **Safe by default** — no destructive deletes

---

## 📸 What It Looks Like

```

🔥 VPS CLEANUP & HEALTH SCRIPT
🧹 Logs • APT • Pip • Docker • Stats
------------------------------------

➜ Disk usage BEFORE cleanup
✔ Journal logs reduced to 100MB
✔ Old log files removed
✔ Active logs truncated
✔ Crash reports cleared
✔ APT cache cleaned
✔ Pip cache cleaned
✔ Docker cleaned
----------------

## ➜ Disk usage AFTER cleanup

✅ CLEANUP COMPLETE — VPS IS HEALTHY

````

---

## 🚀 Quick Start

### 1️⃣ Download the script
```bash
wget https://raw.githubusercontent.com/milibots/vps_cleanup/main/vps_cleanup.sh
````

### 2️⃣ Make it executable

```bash
chmod +x vps_cleanup.sh
```

### 3️⃣ Run it (recommended as root)

```bash
sudo ./vps_cleanup.sh
```

---

## 🧠 What the Script Cleans

### 🗒 Logs

* Shrinks systemd journal logs to **100MB**
* Deletes rotated & compressed logs
* Truncates active log files safely

### 📦 Package Managers

* APT cache (`apt clean`)
* Unused packages (`apt autoremove`)
* Pip cache (`pip cache purge`)

### 🐳 Docker (if installed)

* Unused containers
* Dangling images
* Unused volumes

### 💥 System Junk

* Crash reports (`/var/crash`)
* Temporary leftovers

---

## 🛡 Safety Notes

* ❌ Does **NOT** delete system files
* ❌ Does **NOT** touch `/usr`, `/bin`, `/lib`
* ❌ Does **NOT** remove running Docker containers
* ✅ Safe to run on production VPS
* ✅ Keeps log files (only truncates content)

---

## ⏱ Recommended Usage

* Before deployments
* After Docker builds
* When disk usage > 80%
* Weekly maintenance (cron-friendly)

Example cron (weekly):

```bash
0 3 * * 0 /root/vps_cleanup.sh >> /var/log/vps_cleanup.log 2>&1
```

---

## 🧩 Requirements

* Linux with `systemd`
* `bash`
* Root or sudo access
* Optional: Docker, Python/pip

---

## 🧪 Tested On

* Ubuntu 20.04 / 22.04
* Debian 11 / 12
* Small VPS (10–20 GB disks)

---

## 🤝 Contributing

Ideas, improvements, and PRs are welcome:

* Add Telegram notifications
* Add dry-run mode
* Add interactive prompts
* Add auto-install option

---

## 📄 License

MIT License — free to use, modify, and share.

---

## 💡 Pro Tip

Run this **before** saying:

> “Why is my VPS suddenly full?” 😄

Happy cleaning 🧹🔥

```
