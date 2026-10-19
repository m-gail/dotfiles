#!/usr/bin/env python3

import json
import subprocess

process = subprocess.run(["powerprofilesctl", "get"], capture_output=True, text=True)
powerprofiles_stdout = process.stdout

icon = {"balanced": "󰾅 ", "power_saver": "󰾆 ", "performance": "󰓅 "}[
    powerprofiles_stdout.strip()
]

print(
    json.dumps(
        {
            "powerprofile": powerprofiles_stdout.strip(),
            "icon": icon,
        }
    )
)
