import Quickshell
import QtQuick
import QtQuick.Layouts
import qs.Config
import qs.Components

MouseArea {
    id: mouseArea
    hoverEnabled: true
    cursorShape: Qt.PointingHandCursor
    implicitWidth: content.width
    implicitHeight: content.height
    property string icon
    property color color
    property color colorHover: mouseArea.color
    property color background: "transparent"
    property color backgroundHover: "transparent"
    property real iconSize: 24
    anchors.horizontalCenter: parent.horizontalCenter

    Rectangle {
        id: content
        width: svgIcon.width + 6
        height: svgIcon.height + 6
        color: mouseArea.containsMouse ? mouseArea.backgroundHover : mouseArea.background
        radius: 10

        Behavior on color {
            ColorAnimation {
                duration: 200
            }
        }

        SvgIcon {
            id: svgIcon
            Behavior on color {
                ColorAnimation {
                    duration: 200
                }
            }
            size: mouseArea.iconSize
            anchors.centerIn: parent
            source: mouseArea.icon
            color: mouseArea.containsMouse ? mouseArea.colorHover : mouseArea.color
        }
    }
}
