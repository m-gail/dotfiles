import QtQuick
import Quickshell
import Quickshell.Services.UPower
import qs.Config
import qs.Components

MouseArea {
    id: root
    width: 250
    height: 75

    property bool hasBattery: UPower.displayDevice.isLaptopBattery
    property color background: {
        if (!hasBattery) {
            return Colorscheme.overlay;
        }
        if (batteryPercent >= 0.75) {
            return Colorscheme.pine
        } else if (batteryPercent >= 0.5) {
            return Colorscheme.gold
        } else if (batteryPercent >= 0.25) {
            return Colorscheme.rose
        }
        return Colorscheme.love
    }
    property color foreground: {
        if (!hasBattery) {
            return Colorscheme.muted;
        }
        return Colorscheme.text
    }
    property string icon: {
        if (!hasBattery) {
            return "fa_bolt.svg";
        }
        if (batteryPercent >= 0.90) {
            return "fa_battery_full.svg"
        } else if (batteryPercent >= 0.75) {
            return "fa_battery_three_quarters.svg"
        } else if (batteryPercent >= 0.5) {
            return "fa_battery_half.svg"
        } else if (batteryPercent >= 0.25) {
            return "fa_battery_quarter.svg"
        }
        return "fa_battery_empty.svg"
    }
    property real batteryPercent: hasBattery ? UPower.displayDevice.percentage : 1
    property string batteryPercentText: hasBattery ? (batteryPercent * 100).toFixed(0) : "No Battery"

    Rectangle {
        anchors.fill: parent
        radius: 20

        color: Colorscheme.surface

        Rectangle {
            radius: 20
            height: parent.height
            width: parent.width * batteryPercent
            color: root.background
        }

        Row {
            anchors.centerIn: parent
            spacing: 10
            SvgIcon {
                anchors.verticalCenter: parent.verticalCenter
                source: root.icon
                size: 24
                color: root.foreground
            }
            Text {
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 14
                font.bold: true
                text: root.batteryPercentText
                color: root.foreground
            }
        }
    }
}
