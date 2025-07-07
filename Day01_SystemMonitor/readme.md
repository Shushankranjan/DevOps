````markdown
# Day 01 – System Monitoring Script

## 📄 Description

A simple Bash-based system monitoring script that:
- Logs system health info: CPU, memory, disk, top processes, and network connections
- Stores logs in a timestamped format inside a `logs/` folder
- Automatically deletes older logs, keeping only the latest 5 for cleanup

This is part of the `25DaysDevOps` practical learning series.

---

## ⚙️ Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/25DaysDevOps.git
   cd 25DaysDevOps/Day01_SystemMonitor
````

2. Make the script executable:

   ```bash
   chmod +x system_monitor.sh
   ```

3. (Optional) Create the `logs/` directory if not already present:

   ```bash
   mkdir logs
   ```

---

## 🚀 Usage

To run the script and generate a new log:

```bash
./system_monitor.sh
```

* Log files will be created inside `logs/` with a timestamp.
* Only the last 5 logs are kept — older ones are automatically deleted.

Example log file:

```
logs/system_health_20250707_163010.log
```

---

## 📁 Folder Structure

```
Day01_SystemMonitor/
├── logs/
│   └── system_health_*.log
├── system_monitor.sh
└── readme.md
```


