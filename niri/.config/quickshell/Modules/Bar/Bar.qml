import Quickshell
import Quickshell.Widgets
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts
import qs.Modules.Bar.Workspaces
import qs.Modules.Bar.Components
import qs.Modules.Bar.Clock
import qs.Modules.Bar.Tray
import qs.Modules.Bar.Settings
import qs.Components
import qs.Config

Variants {
    model: Quickshell.screens

    PanelWindow {
        id: barWindow
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
        width: barContent.width + topLeftCorner.width

        Rectangle {
            id: barContent
            implicitWidth: 52
            color: Colorscheme.base
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
                spacing: 10

                LauncherButton {}
                Workspaces {}
            }

            ColumnLayout {
                anchors {
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
                spacing: 10

                Clock {}
                NotificationsButton {}
            }

            ColumnLayout {
                anchors {
                    bottomMargin: 10
                    bottom: parent.bottom
                    horizontalCenter: parent.horizontalCenter
                }
                spacing: 10

                Tray {}
                Settings {
                    popup: settingsPopup
                }
                PowerButton {}
            }
        }

        RoundedCorner {
            id: topLeftCorner
            position: RoundedCorner.Position.TopLeft
            anchors {
                left: barContent.right
                top: barContent.top
            }
            color: Colorscheme.base
            borderColor: Colorscheme.iris
        }

        RoundedCorner {
            position: RoundedCorner.Position.BottomLeft
            anchors {
                left: barContent.right
                bottom: barContent.bottom
            }
            color: Colorscheme.base
            borderColor: Colorscheme.iris
        }

        SettingsPopup {
            id: settingsPopup
            window: barWindow
            bar: barContent
        }
    }
}
