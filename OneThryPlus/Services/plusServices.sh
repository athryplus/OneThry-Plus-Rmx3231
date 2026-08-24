#!/system/bin/sh
# WARNING !!! : This is On Your OWN RISK
# Created By Alathry+
LOG="/data/local/tmp/plusServices.log"
echo "=== plusServices.sh run: $(date) ===" >> "$LOG"
apply() {
    node="$1"
    value="$2"
    if [ -w "$node" ]; then
        echo "$value" > "$node" 2>>"$LOG"
        echo "OK  $node -> $value" >> "$LOG"
    else
        echo "SKIP $node (not writable/missing)" >> "$LOG"
    fi
}
apply /sys/class/devfreq/60000000.gpu/min_freq 384000000
for i in 0 1 2 3; do
    apply /sys/devices/system/cpu/cpu$i/cpufreq/scaling_min_freq 884000
done
for i in 4 5 6 7; do
    apply /sys/devices/system/cpu/cpu$i/cpufreq/schedutil/up_rate_limit_us 300
done

echo "=== plusServices.sh done ===" >> "$LOG"
