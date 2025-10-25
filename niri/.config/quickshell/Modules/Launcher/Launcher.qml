import Quickshell
import Quickshell.Wayland
import Quickshell.Io
import QtQuick
import qs.Components
import qs.Config

PanelWindow {
    id: launcher
    anchors {
        top: true
    }

    exclusiveZone: 0
    WlrLayershell.layer: WlrLayer.Overlay
    color: "transparent"
    implicitWidth: leftCorner.width + rectangle.width + rightCorner.width
    implicitHeight: rectangle.height
    visible: transformY != -rectangle.height

    property var open: false
    property real transformY: open ? 0 : -rectangle.height
    property real transformCornerY: open ? 0 : -rightCorner.height


    Behavior on transformY {
        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuad
        }
    }
    Behavior on transformCornerY {
        NumberAnimation {
            duration: 200
            easing.type: Easing.InOutQuad
        }
    }

    RoundedCorner {
        id: leftCorner
        anchors {
            left: parent.left
        }
        position: RoundedCorner.Position.TopRight
        color: Colorscheme.base

        transform: Translate {
            y: launcher.transformCornerY
        }
    }

    Rectangle {
        id: rectangle
        anchors {
            left: leftCorner.right
        }
        color: Colorscheme.base
        width: 800
        height: 300
        bottomLeftRadius: 20
        bottomRightRadius: 20

        transform: Translate {
            y: launcher.transformY
        }
    }


    RoundedCorner {
        id: rightCorner
        anchors {
            left: rectangle.right
        }
        position: RoundedCorner.Position.TopLeft
        color: Colorscheme.base

        transform: Translate {
            y: launcher.transformCornerY
        }
    }

    IpcHandler {
        target: "launcher"
        function toggle() {
            launcher.open = !launcher.open
        }
    }
}
