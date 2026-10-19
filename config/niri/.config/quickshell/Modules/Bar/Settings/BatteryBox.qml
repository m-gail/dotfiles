import QtQuick
import Quickshell
import Quickshell.Services.UPower
import qs.Config
import qs.Components

SettingsSlider {
    property bool hasBattery: UPower.displayDevice.isLaptopBattery
    value: hasBattery ? UPower.displayDevice.percentage : 1
    icon: {
        if (!hasBattery) {
            return "fa_bolt.svg";
        }
        if (value >= 0.90) {
            return "fa_battery_full.svg"
        } else if (value >= 0.75) {
            return "fa_battery_three_quarters.svg"
        } else if (value >= 0.5) {
            return "fa_battery_half.svg"
        } else if (value >= 0.25) {
            return "fa_battery_quarter.svg"
        }
        return "fa_battery_empty.svg"
    }
    disabled: !hasBattery
    fixed: true
    disabledText: "N/A"
}
