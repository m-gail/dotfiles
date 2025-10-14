import Quickshell
import Quickshell.Widgets
import Qt5Compat.GraphicalEffects
import QtQuick

Item {
    id: root
    property string source
    property color color

    width: 30
    height: 30

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
