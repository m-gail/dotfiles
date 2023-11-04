#!/usr/bin/env python3

import json
import re
import subprocess

process = subprocess.run(
    ["nmcli", "-t", "-f", "active,ssid,signal", "dev", "wifi"], capture_output=True, text=True
)
network_stdout = process.stdout
network_stderr = process.stderr


def get_icon(percent):
    if percent > 75:
        return {"icon": "󰤨 "}
    if percent > 50:
        return {"icon": "󰤥 "}
    if percent > 25:
        return {"icon": "󰤢 "}
    return {"icon": "󰤟 "}


current_wifi = list(
    filter(lambda line: line.startswith("yes"), network_stdout.splitlines())
)

if len(current_wifi) > 0:
    _, name, percent = current_wifi[0].split(":")
    percent = int(percent)
    print(
        json.dumps(
            {
                **{
                    "name": name,
                },
                **get_icon(percent),
            }
        )
    )
else:
    print(json.dumps({"name": "Ethernet", "icon": "󰈀 "}))
