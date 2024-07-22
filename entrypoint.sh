#!/bin/bash

echo "Starting ADB logcat streaming for device: $ADB_DEVICE"

while true; do
    if adb connect $ADB_DEVICE; then
        echo "Connected to $ADB_DEVICE"
        adb logcat
    else
        echo "Failed to connect to $ADB_DEVICE. Retrying in 5 seconds..."
        sleep 5
    fi
done
