import QtQuick
import Quickshell
import Quickshell.Bluetooth
import qs.Config
import qs.Components

MouseArea {
    id: root
    width: Size.settingsBoxWidth
    height: Size.settingsBoxHeight

    property bool enabled: Bluetooth.defaultAdapter.enabled
    property color background: enabled ? Colorscheme.pine : Colorscheme.overlay
    property color foreground: enabled ? Colorscheme.foam : Colorscheme.muted

    Rectangle {
        anchors.fill: parent
        radius: Size.borderRadiusLarge

        color: root.background

        SvgIcon {
            anchors.centerIn: parent
            source: "fa_bluetooth_b.svg"
            size: Size.settingsBoxIconSize
            color: root.foreground
        }
    }
}
