import Quickshell
import QtQuick
import QtQuick.Layouts
import qs.Config
import qs.Services

ColumnLayout {
    anchors.horizontalCenter: parent.horizontalCenter

    Text {
        font.pointSize: 14
        font.bold: true
        text: Time.hours
        color: Colorscheme.iris
    }
    Text {
        font.pointSize: 14
        font.bold: true
        text: Time.minutes
        color: Colorscheme.text
    }
}
