import Quickshell
import QtQuick
import QtQuick.Controls
import Quickshell.Services.Pipewire
import qs.Config

MouseArea {
    width: 250
    height: 75
    onClicked: (event) => {
        if (event.button == Qt.RightButton) {
            Quickshell.execDetached(["wpctl", "set-mute", "@DEFAULT_SINK@", "toggle"])
        }
    }
    acceptedButtons: Qt.RightButton

    property var audio: Pipewire.defaultAudioSink.audio

    Slider {
        id: slider
        anchors.fill: parent
        from: 0
        value: audio.volume
        to: 1
        z: 0

        background: Rectangle {
            color: Colorscheme.surface
            radius: 20

            Rectangle {
                width: slider.visualPosition * parent.width
                height: parent.height
                radius: 20
                color: audio.muted ? Colorscheme.overlay : Colorscheme.highlightHigh
            }
        }

        handle: Item {}

        onMoved: {
            Quickshell.execDetached(["wpctl", "set-volume", "@DEFAULT_SINK@", slider.visualPosition])
        } 
    }

    Row {
        anchors.centerIn: parent
        spacing: 10

        VolumeStatus {
            anchors.verticalCenter: parent.verticalCenter
        }
        Text { 
            anchors.verticalCenter: parent.verticalCenter
            font.pointSize: 14
            font.bold: true
            text: (audio.volume * 100).toFixed(0) + "%"
            color: audio.muted ? Colorscheme.muted: Colorscheme.text
        }
    }
}
