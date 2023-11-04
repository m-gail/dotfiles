#!/usr/bin/env python3

import json
import subprocess

brightnessctl_get_process = subprocess.run(
    ["brightnessctl", "get"], capture_output=True, text=True
)
current_value = int(brightnessctl_get_process.stdout.replace("\n", ""))

brightnessctl_max_process = subprocess.run(
    ["brightnessctl", "max"], capture_output=True, text=True
)
max_value = int(brightnessctl_max_process.stdout.replace("\n", ""))

print(
    json.dumps({"icon": "󰃠 ", "brightness": int((current_value / max_value) * 100)})
)
