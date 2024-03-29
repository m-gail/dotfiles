#!/usr/bin/env python3

import json
import subprocess

default_sink_process = subprocess.run(
    ["pactl", "get-default-sink"], capture_output=True, text=True
)
default_sink = default_sink_process.stdout.splitlines()[0]

pactl_list_process = subprocess.run(
    ["pactl", "--format=json", "list", "sinks"], capture_output=True, text=True
)
pactl_sinks = json.loads(pactl_list_process.stdout)

for sink in pactl_sinks:
    if sink["name"] == default_sink:
        channel = sink["volume"]["mono"] if "mono" in sink["volume"] else sink["volume"]["front-left"]
        volume = int(channel["value_percent"].replace("%", ""))
        mute = sink["mute"]
        print(
            json.dumps({"icon": " " if mute else " ", "volume": volume, "mute": mute})
        )
