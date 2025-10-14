import Quickshell
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts
import qs.Services
import qs.Config

Variants {
    model: Quickshell.screens

    PanelWindow {
        id: root
        required property var modelData
        screen: modelData

        WlrLayershell.layer: WlrLayer.Background

        anchors {
            top: true
            bottom: true
            left: true
            right: true
        }

        Image {
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
            source: Qt.resolvedUrl(Quickshell.shellPath("assets/wallpapers/bay.JPG"))
        }

        ColumnLayout {
            anchors {
                right: parent.right
                verticalCenter: parent.verticalCenter
                rightMargin: 200
            }

            Text {
                color: Colorscheme.iris
                text: Time.hours
                font.pointSize: 72
                font.bold: true
            }

            Text {
                leftPadding: 60
                color: Colorscheme.text
                text: Time.minutes
                font.pointSize: 72
                font.bold: true
            }
        }
    }
}
