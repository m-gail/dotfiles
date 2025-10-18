import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Widgets
import Quickshell.Services.UPower
import qs.Components
import qs.Config

MouseArea {
    id: mouseArea
    height: rectangle.height
    width: rectangle.width
    hoverEnabled: true
    cursorShape: Qt.PointingHandCursor

    Rectangle {
        id: rectangle
        color: mouseArea.containsMouse ? Colorscheme.highlightMed : Colorscheme.surface
        radius: 10

        Behavior on color {
            ColorAnimation {
                duration: 200
            }
        }

        MarginWrapperManager {
            margin: 5
        }

        ColumnLayout {
            id: content
            spacing: 10

            SvgIcon {
                color: Colorscheme.text
                source: "fa_ethernet.svg"
                size: 24
            }
            SvgIcon {
                color: Colorscheme.text
                source: "fa_bluetooth_b.svg"
                size: 24
            }
            VolumeStatus {  }
            SvgIcon {
                color: Colorscheme.text
                source: "fa_battery_full.svg"
                size: 24
                visible: UPower.displayDevice.isLaptopBattery
            }
        }
    }
}
