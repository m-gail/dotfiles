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

    property var popup

    onClicked: {
        popup.open = !popup.open;
    }

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

            NetworkStatus {}
            BluetoothStatus {}
            VolumeStatus {}
            MicrophoneStatus {}
            SvgIcon {
                color: Colorscheme.text
                source: "fa_battery_full.svg"
                size: 24
                visible: UPower.displayDevice.isLaptopBattery
            }
        }
    }
}
