#!/bin/bash
if [[ $(nvidia-settings -q 'DigitalVibrance' | grep 'Attribute.*1023\.') ]]
then
	nvidia-settings -a 'DigitalVibrance=0' > /dev/null
	echo "Vibrance Disabled"
else 
	nvidia-settings -a 'DigitalVibrance=1023' > /dev/null
	echo "Vibrance Enabled"
fi
