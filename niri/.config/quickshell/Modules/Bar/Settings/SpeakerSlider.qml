import Quickshell
import qs.Services

SettingsSlider {
    onRightClick: () => {
        Volume.toggleSinkMute()
    }
    onChange: (newValue) => {
        Volume.setSinkVolume(newValue)
    }
    value: Volume.sinkVolume
    icon: Volume.sinkIcon
    disabled: Volume.sinkMuted
}
