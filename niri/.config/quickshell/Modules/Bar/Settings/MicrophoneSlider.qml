import Quickshell
import qs.Services

SettingsSlider {
    onRightClick: () => {
        Volume.toggleSourceMute()
    }
    onChange: (newValue) => {
        Volume.setSourceVolume(newValue)
    }
    value: Volume.sourceVolume
    icon: Volume.sourceIcon
    disabled: Volume.sourceMuted
}
