import Quickshell
import QtQuick
import qs.Config
import qs.Components
import qs.Services

Item {
    required property var modelData
    property string icon: {
        const icons = {
            "terminal": "fa_terminal.svg",
            "dev": "fa_dev.svg",
            "browser": "fa_globe.svg",
            "chat": "fa_comment.svg",
            "browserdev": "fa_flask_vial.svg",
            "other": "fa_window_restore.svg",
            "notes": "fa_note_sticky.svg"
        };
        return icons[modelData.name.slice(0, -2)] ?? "fa_plus.svg";
    }

    visible: modelData.output == barWindow.modelData.name
    implicitWidth: mouseArea.implicitWidth
    implicitHeight: mouseArea.implicitHeight

    MouseArea {
        id: mouseArea
        implicitWidth: rectangle.implicitWidth
        implicitHeight: rectangle.implicitHeight
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor

        onClicked: {
            Quickshell.execDetached(["niri", "msg", "action", "focus-workspace", modelData.idx]);
        }

        Rectangle {
            id: rectangle
            anchors.fill: parent
            color: modelData.isActive ? Colorscheme.highlightMed : Colorscheme.surface
            implicitWidth: svg.width + 10
            implicitHeight: modelData.isActive ? svg.width + 40 : svg.width + 10
            radius: 10

            Behavior on implicitHeight {
                NumberAnimation {
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            }
            Behavior on color {
                ColorAnimation {
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            }

            SvgIcon {
                id: svg
                anchors.centerIn: parent
                color: modelData.isActive ? Colorscheme.iris : mouseArea.containsMouse ? Colorscheme.subtle : Colorscheme.text
                source: icon
                width: 24
                height: 24
                Behavior on color {
                    ColorAnimation {
                        duration: 200
                    }
                }
            }
        }
    }
}
