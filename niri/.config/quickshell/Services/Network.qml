pragma Singleton

import Quickshell
import Quickshell.Io

Singleton {
    id: root

    property bool connected: activeConnectionType != ""
    property string activeConnection: ""
    property string activeConnectionType: ""
    property string activeConnectionIcon: ""

    function refresh() {
        refreshProcess.running = true;
    }

    Process {
        id: refreshProcess
        command: ["nmcli", "-t", "-f", "NAME,TYPE", "con", "show", "--active"]
        stdout: StdioCollector {
            onStreamFinished: () => {
                const interfaces = this.text.split("\n");
                const activeInterface = interfaces[0];
                const fields = activeInterface.split(":");
                const connectionType = refreshProcess.getConnectionType(fields[1]);
                root.activeConnectionType = connectionType;
                root.activeConnectionIcon = refreshProcess.getConnectionIcon(connectionType);
                root.activeConnection = connectionType != "" ? fields[0] : "N/A";
            }
        }

        function getConnectionType(nmcliOutput: string): string {
            if (nmcliOutput.includes("ethernet")) {
                return "ETHERNET";
            } else if (nmcliOutput.includes("wireless")) {
                return "WIFI";
            }
            return "";
        }

        function getConnectionIcon(type: string): string {
            switch (type) {
            case "ETHERNET":
                return "fa_ethernet.svg";
            case "WIFI":
                return "fa_wifi.svg";
            default:
                return "fa_plane.svg";
            }
        }
    }

    Process {
        running: true
        command: ["nmcli", "monitor"]
        stdout: SplitParser {
            onRead: root.refresh()
        }
    }
}
