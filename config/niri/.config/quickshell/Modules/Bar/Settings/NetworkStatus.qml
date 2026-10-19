import QtQuick
import qs.Config
import qs.Components
import qs.Services

Item {
    id: root
    implicitWidth: svgIcon.width
    implicitHeight: svgIcon.height

    SvgIcon {
        id: svgIcon
        color: Network.connected ? Colorscheme.text : Colorscheme.muted
        source: Network.activeConnectionIcon
        size: 24
        Behavior on color {
            ColorAnimation {
                duration: 200
            }
        }
    }
}
