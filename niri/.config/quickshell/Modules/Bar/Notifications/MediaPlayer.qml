import Quickshell
import Quickshell.Widgets
import Quickshell.Services.Mpris
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import qs.Modules.Bar.Notifications
import qs.Components
import qs.Config

RowLayout {
    id: root
    readonly property var player: Mpris.players.values[0]
    width: parent.width
    visible: Mpris.players.values.length > 0

    spacing: Size.iconTextPaddingLarge

    RoundedImage {
        id: cover
        Layout.preferredWidth: Size.mediaPlayerCoverSize
        Layout.preferredHeight: Size.mediaPlayerCoverSize
        fillMode: Image.PreserveAspectCrop
        source: player.trackArtUrl
        radius: Size.borderRadiusLarge
    }
    ColumnLayout {
        Layout.preferredHeight: Size.mediaPlayerCoverSize
        Layout.maximumHeight: Layout.preferredHeight
        Layout.preferredWidth: root.width - cover.Layout.preferredWidth - root.spacing
        Layout.maximumWidth: Layout.preferredWidth
        spacing: 0
        Text {
            text: player.trackTitle
            color: Colorscheme.text
            font.pointSize: Size.mediaPlayerTitle
            font.bold: true

            Layout.preferredWidth: parent.Layout.preferredWidth
            clip: true
            elide: Text.ElideRight
        }
        Text {
            text: player.trackArtist
            color: Colorscheme.text
            font.pointSize: Size.mediaPlayerArtist

            Layout.preferredWidth: parent.Layout.preferredWidth
            clip: true
            elide: Text.ElideRight
        }
        Item {
            Layout.fillHeight: true
        }
        RowLayout {
            PlayerButton {
                icon: "fa_backward_step.svg"
                onClicked: {
                    root.player.previous();
                }
            }
            PlayerButton {
                icon: root.player.isPlaying ? "fa_pause.svg" : "fa_play.svg"
                onClicked: {
                    root.player.togglePlaying();
                }
            }
            PlayerButton {
                icon: "fa_forward_step.svg"
                onClicked: {
                    root.player.next();
                }
            }
            Slider {
                id: slider
                enabled: false
                value: root.player.position / root.player.length
                Layout.fillWidth: true

                background: ClippingRectangle {
                    height: Size.mediaPlayerPositionHeight
                    color: Colorscheme.muted
                    radius: Size.borderRadiusLarge
                    anchors.verticalCenter: parent.verticalCenter

                    Rectangle {
                        width: slider.visualPosition * parent.width
                        height: parent.height
                        radius: Size.borderRadiusLarge
                        color: Colorscheme.text
                    }
                }

                handle: Item {}
            }
        }
    }
}
