if xinput --list-props 12 | grep "Device Enabled" | grep -q "0"; then
    echo touchpad enabled
    xinput --enable 12
else
    echo touchpad disabled
    xinput --disable 12
fi
