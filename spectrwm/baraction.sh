#!/bin/sh
# baraction.sh for spectrwm status bar
HOSTNAME=$(cat /etc/hostname)

## DATE
dte() {
  dte="$(date +"%H:%M | %a, %B %d")"
  echo -e "$dte"
}

## DISK
hdd() {
  hdd="$(df -h | awk 'NR==4{print $3, $5}')"
  echo -e "HDD: $hdd"
}

## RAM
mem() {
  mem=`free | awk '/Mem/ {printf "%d MiB/%d MiB\n", $3 / 1024.0, $2 / 1024.0 }'`
  echo -e "MEM: $mem"
}

## CPU
cpu() {
  read cpu a b c previdle rest < /proc/stat
  prevtotal=$((a+b+c+previdle))
  sleep 0.5
  read cpu a b c idle rest < /proc/stat
  total=$((a+b+c+idle))
  cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
  echo -e "CPU: $cpu%"
}

## VOLUME
vol() {
    vol=`pamixer --get-volume-human`
    echo -e "VOL: $vol"
}

## BATTERY
bat() {
	CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)
	echo "BAT: ${CAPACITY}%"
}

bat_stat() {
	STATUS=$(cat /sys/class/power_supply/BAT0/status)
	if [[ "${STATUS}" = 'Charging' ]]
	then
		echo '(Chg)'
	fi
}

SLEEP_SEC=1
#loops forever outputting a line every SLEEP_SEC secs
while :; do
	echo "$(dte) | $(cpu) | $(vol) $(if [[ "${HOSTNAME}" = 'crunchtop' ]]; then echo "| $(bat) $(bat_stat)"; fi)"
	sleep $SLEEP_SEC
done
