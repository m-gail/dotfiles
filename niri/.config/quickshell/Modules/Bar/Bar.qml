import Quickshell
import Quickshell.Widgets
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts
import qs.Modules.Bar.Workspaces
import qs.Modules.Bar.Launcher
import qs.Modules.Bar.Clock
import qs.Components

Variants {
    model: Quickshell.screens

    PanelWindow {
        id: root
        required property var modelData
        screen: modelData

        anchors {
            left: true
            top: true
            bottom: true
        }

        color: "transparent"
        exclusiveZone: barContent.implicitWidth
        WlrLayershell.layer: WlrLayer.Top
        mask: Region {
            item: barContent
        }

        Rectangle {
            id: barContent
            implicitWidth: 52
            color: "#191724"
            anchors {
                top: parent.top
                bottom: parent.bottom
                left: parent.left
            }

            ColumnLayout {
                anchors {
                    topMargin: 10
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter
                }

                Launcher { }
            }

            ColumnLayout {
                anchors {
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }

                Workspaces { }
            }

            ColumnLayout {
                anchors {
                    bottomMargin: 10
                    bottom: parent.bottom
                    horizontalCenter: parent.horizontalCenter
                }

                Clock { }
            }
        }

        RoundedCorner {
            id: topLeftCorner
            position: RoundedCorner.Position.TopLeft
            anchors {
                left: barContent.right
                top: barContent.top
            }
            size: 24
            color: "#191724"
        }

        RoundedCorner {
            position: RoundedCorner.Position.BottomLeft
            anchors {
                left: barContent.right
                bottom: barContent.bottom
            }
            size: 24
            color: "#191724"
        }
    }
}
