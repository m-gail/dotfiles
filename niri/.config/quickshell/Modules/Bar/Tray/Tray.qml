import Quickshell.Services.SystemTray
import QtQuick

Item {
    id: root
    property bool open: false

    anchors.horizontalCenter: parent.horizontalCenter
    implicitHeight: openButton.height + trayItems.height

    TrayButton {
        anchors.top: parent.top
        id: openButton
        onClicked: { root.open = !root.open }
    }

    Column {
        id: trayItems
        anchors.top: openButton.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        clip: true

        height: root.open ? implicitHeight : 0
        topPadding: 5

        Behavior on height {
            NumberAnimation {
                duration: 200
            }
        }

        spacing: 10
        Repeater {
            model: SystemTray.items
            delegate: TrayItem {}
        }
    }
}
