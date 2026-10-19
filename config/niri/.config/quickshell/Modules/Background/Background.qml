import Quickshell
import Quickshell.Wayland
import QtQuick
import qs.Components

Variants {
    model: Quickshell.screens

    PanelWindow {
        id: root
        required property var modelData
        screen: modelData

        WlrLayershell.layer: WlrLayer.Background
        WlrLayershell.namespace: "wallpaper"
        exclusionMode: ExclusionMode.Ignore

        anchors {
            top: true
            bottom: true
            left: true
            right: true
        }

        Image {
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
            source: Qt.resolvedUrl(Quickshell.shellPath("assets/wallpapers/pexels-mahdibafande-14128008.jpg"))
        }

        BackgroundClock {
            anchors {
                right: parent.right
                verticalCenter: parent.verticalCenter
                rightMargin: 200
            }
        }
    }
}
