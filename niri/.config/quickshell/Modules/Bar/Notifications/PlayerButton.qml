import Quickshell
import QtQuick
import QtQuick.Layouts
import qs.Config
import qs.Components

MouseArea {
    id: mouseArea
    hoverEnabled: true
    cursorShape: Qt.PointingHandCursor
    width: svgIcon.width
    height: svgIcon.height

    property string icon

    SvgIcon {
        id: svgIcon
        Behavior on color {
            ColorAnimation {
                duration: 200
            }
        }
        size: 24
        source: mouseArea.icon
        color: mouseArea.containsMouse ? Colorscheme.muted : Colorscheme.text
    }
}
