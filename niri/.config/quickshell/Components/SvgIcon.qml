import Quickshell
import Quickshell.Widgets
import Qt5Compat.GraphicalEffects
import QtQuick

Item {
    id: root
    property string source
    property color color
    property real size: 30

    width: root.size
    height: root.size

    IconImage {
        id: icon
        anchors.fill: parent
        source: Qt.resolvedUrl(Quickshell.shellPath("assets/icons/" + root.source))
    }

    ColorOverlay {
        anchors.fill: parent
        source: icon
        color: root.color
    }
}
