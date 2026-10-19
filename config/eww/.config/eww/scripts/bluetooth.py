#!/usr/bin/env python3

import json
import subprocess

process = subprocess.run(
    ["bluetoothctl", "devices", "Connected"], capture_output=True, text=True
)
connected_devices_stdout = process.stdout
connected_devices = connected_devices_stdout.splitlines()

if len(connected_devices) == 0:
    print(json.dumps({"icon": "󰂲 ", "text": "Not connected", "disabled": True}))
else:
    print(
        json.dumps(
            {
                "icon": " ",
                "text": connected_devices[0].split(" ")[2],
                "disabled": False,
            }
        )
    )
