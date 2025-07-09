#!/bin/bash

# System Monitor Script

set -euo pipefail
trap 'echo "An error occured while executing the script. Exiting..."; exit 1' ERR

RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RESET="\033[0m"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
LOG_DIR="$SCRIPT_DIR/../logs"
mkdir -p "$LOG_DIR"

TIMESTAMP=$(date +%Y.%m.%d_%H%M%S)
LOG_FILE="${LOG_DIR}/system_health_${TIMESTAMP}.log"

{
echo -e "${GREEN}=== System Health Report ===${RESET}"
echo ""
echo "Date : $(date)"
echo "System: $(uname -a)"
echo ""

echo "=== CPU and Memory Usage ==="
echo "Memory Usage"
free -h
echo "uptime: $(uptime)"
echo ""

echo "=== Disk Usage ==="
df -P | awk -v RED="$RED" -v RESET="$RESET" '
NR > 1 {
  usage = int($5);
  if (usage > 80)
    printf "%s⚠️ %s usage at %d%%%s\n",RED, $6, usage, RESET
}'
} >> "$LOG_FILE"

echo ""

echo "=== Top 5 processes ==="
ps aux --sort=-%cpu | head -n 6
echo ""

echo "=== Network Connections ==="
netstat -tuln | head -10

#Keep only the last 5 logs
find "$LOG_DIR" -type f -name "system_health_*.log" | sort -r | tail -n +6 | xargs -r rm -f
