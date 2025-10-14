import Quickshell
import QtQuick
import qs.Config
import qs.Components

MouseArea {
    id: mouseArea
    hoverEnabled: true
    onClicked: {
        Quickshell.execDetached(["fuzzel"]);
    }
    cursorShape: Qt.PointingHandCursor
    implicitWidth: content.width
    implicitHeight: content.height

    Rectangle {
        id: content
        width: launcher.width + 6
        height: launcher.height + 6
        color: mouseArea.containsMouse ? Colorscheme.highlightHigh : Colorscheme.highlightMed
        radius: 10

        Behavior on color {
            ColorAnimation {
                duration: 200
            }
        }

        SvgIcon {
            id: launcher
            anchors.centerIn: parent
            source: "fa_rocket.svg"
            color: Colorscheme.gold
        }
    }
}
