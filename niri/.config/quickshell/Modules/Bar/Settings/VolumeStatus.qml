import QtQuick
import qs.Config
import qs.Components
import Quickshell.Services.Pipewire

Item {
    id: root
    implicitWidth: svgIcon.width
    implicitHeight: svgIcon.height
    property bool muted: Pipewire.defaultAudioSink.audio.muted
    property string icon: {
        const audio = Pipewire.defaultAudioSink.audio;
        if (muted) {
            return "fa_volume_xmark.svg";
        }
        if (audio.volume > 0.8) {
            return "fa_volume_high.svg";
        }
        if (audio.volume > 0.2) {
            return "fa_volume_low.svg";
        }
        return "fa_volume_off.svg";
    }

    PwObjectTracker {
        objects: Pipewire.defaultAudioSink
    }

    SvgIcon {
        id: svgIcon
        color: muted ? Colorscheme.muted : Colorscheme.text
        source: root.icon
        size: 24
    }
}
