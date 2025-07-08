# 📅 Day 01 – System Monitoring Script

A lightweight Bash-based system monitoring utility — part of the **25DaysDevOps** hands-on challenge.

---

## 📝 Overview

This script captures real-time system health metrics and logs them for audit or debugging purposes. Key features:

- ✅ Logs **CPU**, **memory**, **disk usage**, **top 5 processes**, and **active network connections**
- 🕒 Saves logs with **timestamped filenames** in a structured `logs/` directory
- ♻️ Keeps the last **5 log files** — older ones are **auto-cleaned** to save space

---

## 📦 Folder Structure

```
Day01_SystemMonitor/
├── logs/                   # Auto-generated logs
│   └── system_health_*.log
├── src/
│   └── system_monitor.sh   # Main monitoring script
├── config/                 # (Reserved for future config files)
├── docs/                   # Documentation assets (optional)
├── tests/                  # Test scripts or validation tools
└── readme.md               # Task-specific README
```

---

## ⚙️ Installation & Setup

### 1. Clone the Repository
```bash
git clone https://github.com/your-username/25DaysDevOps.git
cd 25DaysDevOps/Day01_SystemMonitor
```

### 2. Make the Script Executable
```bash
chmod +x src/system_monitor.sh
```

### 3. Create `logs/` Folder (If Not Present)
```bash
mkdir logs
```

---

## 🚀 Usage

Run the monitoring script:
```bash
./src/system_monitor.sh
```

**What happens:**
- A log file is created inside `logs/` with the current timestamp
- Older logs beyond the last 5 are automatically deleted

📂 Example output file:
```
logs/system_health_2025.07.07_163010.log
```

---

## 💡 Notes

- Run this as a cron job or scheduled task for continuous monitoring
- Compatible with most Linux distributions (tested on Ubuntu 22.04)
- Script is modular and ready for further improvements (e.g., email alerts, thresholds)

---

## 🛠️ Future Enhancements (Ideas)
- Email/SMS alerts for high CPU/RAM usage
- Slack webhook integration
- Export to CSV or JSON
- Add config support (thresholds, log retention count)

---

## 📚 Part of:
[`25DaysDevOps`](https://github.com/your-username/25DaysDevOps) – A practical, project-first DevOps learning challenge.
