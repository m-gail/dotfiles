import QtQuick

MouseArea {
    id: root
    required property var modelData
    implicitWidth: content.width
    implicitHeight: content.height
    hoverEnabled: true
    cursorShape: Qt.PointingHandCursor

    Image {
        id: content
        source: root.modelData.icon
        width: 20
        height: 20
    }
}
