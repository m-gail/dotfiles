pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: root
    readonly property string hours: {
        Qt.formatDateTime(clock.date, "hh")
    }
    readonly property string minutes: {
        Qt.formatDateTime(clock.date, "mm")
    }

    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }
}
