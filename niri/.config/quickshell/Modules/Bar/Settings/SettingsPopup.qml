import Quickshell
import Quickshell.Widgets
import Quickshell.Io
import QtQuick
import qs.Components
import qs.Config

PopupWindow {
    id: settingsPopup

    property var window
    property var bar

    property bool open: false

    color: "transparent"
    visible: content.transformX != -rect.width
    implicitWidth: rect.width + popupCorner2.width
    implicitHeight: rect.height + popupCorner1.height

    anchor.window: window
    anchor.adjustment: PopupAdjustment.None
    anchor.rect.x: bar.width
    anchor.rect.y: bar.height - settingsPopup.height

    Item {
        id: content
        property real transformTopCornerX: settingsPopup.open ? 0 : -popupCorner1.width
        property real transformX: settingsPopup.open ? 0 : -rect.width
        Behavior on transformTopCornerX {
            NumberAnimation {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }
        Behavior on transformX {
            NumberAnimation {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }

        RoundedCorner {
            id: popupCorner1
            anchors {
                left: parent.left
                top: parent.top
            }
            position: RoundedCorner.Position.BottomLeft
            color: Colorscheme.base
            borderColor: Colorscheme.iris

            transform: Translate {
                x: content.transformTopCornerX
            }
        }

        Rectangle {
            id: rect
            anchors {
                top: popupCorner1.bottom
                left: parent.left
            }
            implicitHeight: grid.implicitHeight
            implicitWidth: grid.implicitWidth
            color: Colorscheme.base
            topRightRadius: 20

            transform: Translate {
                x: content.transformX
            }

            MarginWrapperManager {
                margin: 30
            }

            Grid {
                id: grid
                columns: 2
                spacing: 30

                VolumeSlider {}
                BluetoothBox {}
                BatteryBox {}
            }
        }

        RoundedCorner {
            id: popupCorner2
            anchors {
                left: rect.right
                bottom: rect.bottom
            }
            position: RoundedCorner.Position.BottomLeft
            color: Colorscheme.base
            borderColor: Colorscheme.iris

            transform: Translate {
                x: content.transformX
            }
        }
    }
}
