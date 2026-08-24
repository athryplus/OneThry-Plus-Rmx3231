#!/system/bin/sh
# lowRamKill.sh — OneThry Plus (RMX3231)
# Runs in /data/adb/post-fs-data.d/ — BEFORE Zygote/ActivityManager start,
# the only window where a ro.* prop can still be overridden.
# Combines: (1) clearing the Go-edition low_ram flag, (2) relaxing LMK
# thresholds so background apps survive longer instead of being killed early.
# WARNING : this file can take dmamage of the system on sometimes may bootloop , this is on your on risk
LOG="/data/local/tmp/lowRamKill.log"
echo "=== lowRamKill.sh run: $(date) ===" >> "$LOG"
set_prop() {
    name="$1"
    value="$2"
    resetprop "$name" "$value" 2>>"$LOG"
    echo "$name = $(getprop "$name")" >> "$LOG"
}
set_prop ro.config.low_ram false
set_prop ro.lmk.low 350
set_prop ro.lmk.medium 250
set_prop ro.lmk.critical 100
set_prop ro.lmk.kill_heaviest_task false
echo "=== lowRamKill.sh done ===" >> "$LOG"
