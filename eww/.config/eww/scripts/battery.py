#!/usr/bin/env python3

import json
import re
import subprocess

process = subprocess.run(
    ["echo", "Battery 0: Charging, 40%, 04:32"], capture_output=True, text=True
)
battery_stdout = process.stdout
battery_stderr = process.stderr


def get_color_and_icon(percent, charging):
    if charging:
        return {"icon": "", "color": "#9ccfd8"}
    if percent > 75:
        return {"icon": " ", "color": "#9ccfd8"}
    if percent > 50:
        return {"icon": " ", "color": "#f6c177"}
    if percent > 25:
        return {"icon": " ", "color": "#ea9a97"}
    return {"icon": " ", "color": "#eb6f92"}


if "No support" in battery_stderr:
    print(
        json.dumps(
            {
                "has_battery": False,
                "percent": 0,
                "charging": False,
                "icon": "",
                "color": "",
            }
        )
    )
else:
    charging = "Discharging" not in battery_stdout
    percent = int(re.findall("\\d+%", battery_stdout)[0].replace("%", ""))

    print(
        json.dumps(
            {
                **{
                    "has_battery": True,
                    "percent": percent,
                    "charging": charging,
                },
                **get_color_and_icon(percent, charging),
            }
        )
    )
