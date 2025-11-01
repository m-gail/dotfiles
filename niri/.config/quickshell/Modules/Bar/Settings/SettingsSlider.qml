import Quickshell
import QtQuick
import QtQuick.Controls
import qs.Config
import qs.Components

MouseArea {
    id: root
    property var onRightClick
    property var onChange
    property real value
    property string icon
    property bool disabled
    property bool fixed: false
    property string disabledText: ""

    width: Size.settingsBoxWidth
    height: Size.settingsBoxHeight

    acceptedButtons: Qt.RightButton
    onClicked: event => {
        if (event.button == Qt.RightButton) {
            root.onRightClick();
        }
    }

    Slider {
        id: slider
        anchors.fill: parent
        from: 0
        value: root.value
        to: 1
        z: 0
        enabled: !root.disabled && !root.fixed

        background: Rectangle {
            color: Colorscheme.surface
            radius: 20

            Rectangle {
                width: slider.visualPosition * parent.width
                height: parent.height
                radius: 20
                color: root.disabled ? Colorscheme.overlay : Colorscheme.highlightHigh
            }
        }

        handle: Item {}

        onMoved: {
            root.onChange(slider.visualPosition);
        }
    }

    Row {
        anchors.centerIn: parent
        spacing: Size.settingsBoxSpacing

        SvgIcon {
            id: svgIcon
            color: root.disabled ? Colorscheme.muted : Colorscheme.text
            source: root.icon
            size: Size.settingsBoxIconSize
            Behavior on color {
                ColorAnimation {
                    duration: 200
                }
            }
        }
        Text {
            anchors.verticalCenter: parent.verticalCenter
            font.pointSize: Size.settingsBoxFontSize
            font.bold: true
            text: root.disabled && root.disabledText != "" ? root.disabledText : (root.value * 100).toFixed(0) + "%"
            color: root.disabled ? Colorscheme.muted : Colorscheme.text
        }
    }
}
