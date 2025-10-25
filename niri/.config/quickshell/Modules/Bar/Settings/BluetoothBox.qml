import QtQuick
import Quickshell
import Quickshell.Bluetooth
import qs.Config
import qs.Components

MouseArea {
    id: root
    width: 250
    height: 75

    property bool enabled: Bluetooth.defaultAdapter.enabled
    property color background: enabled ? Colorscheme.pine : Colorscheme.overlay
    property color foreground: enabled ? Colorscheme.foam : Colorscheme.muted

    Rectangle {
        anchors.fill: parent
        radius: 20

        color: root.background


        Row {
            anchors.centerIn: parent
            spacing: 20
            SvgIcon {
                anchors.verticalCenter: parent.verticalCenter
                source: "fa_bluetooth_b.svg"
                size: 24
                color: root.foreground
            }
        }
    }
}
