#!/bin/bash
CURRENT=$(cat /sys/class/backlight/intel_backlight/actual_brightness)
MAX=$(cat /sys/class/backlight/intel_backlight/max_brightness)
DIV=$(( ${MAX} / 4 )) 

if [[ ${1} = '-d' ]]
then
	echo "$(( ${CURRENT} - ${DIV} ))" > /sys/class/backlight/intel_backlight/brightness
elif [[ ${1} = '-i' ]]
then
	echo $(( ${CURRENT} + ${DIV} )) > /sys/class/backlight/intel_backlight/brightness
fi
