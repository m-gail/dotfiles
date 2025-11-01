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
    implicitWidth: rect.width
    implicitHeight: rect.height

    anchor.window: window
    anchor.adjustment: PopupAdjustment.None
    anchor.rect.x: bar.contentWidth
    anchor.rect.y: bar.height - settingsPopup.height

    Item {
        id: content
        property real transformTopCornerX: settingsPopup.open ? 0 : -24
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

        HuggingRectangle {
            id: rect
            leftEdge: true
            bottomEdge: true

            contentWidth: grid.width
            contentHeight: grid.height

            rectTranslateX: content.transformX
            leftRightTranslateX: content.transformX
            topBottomTranslateX: content.transformTopCornerX

            MarginWrapperManager {
                margin: 30
            }

            Grid {
                id: grid
                columns: 2
                spacing: 30

                BluetoothBox {}
                NetworkBox {}
                SpeakerSlider {}
                MicrophoneSlider {}
                BatteryBox {}
                BrightnessSlider {}
            }
        }
    }
}
