import QtQuick

MouseArea {
    id: root
    required property var modelData
    implicitWidth: content.width
    implicitHeight: content.height
    hoverEnabled: true
    acceptedButtons: Qt.LeftButton | Qt.RightButton

    cursorShape: Qt.PointingHandCursor

    onClicked: event => {
        if (event.button == Qt.LeftButton) {
            modelData.activate();
        }
    }

    Image {
        id: content
        source: root.modelData.icon
        width: 20
        height: 20
    }
}
