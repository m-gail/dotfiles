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
        color: Volume.sourceMuted ? Colorscheme.muted : Colorscheme.text
        source: Volume.sourceIcon
        size: 24
        Behavior on color {
            ColorAnimation {
                duration: 200
            }
        }
    }
}
