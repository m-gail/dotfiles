import Quickshell
import QtQuick
import QtQuick.Layouts
import qs.Config
import qs.Services

ColumnLayout {
    Text {
        font.pointSize: 14
        font.bold: true
        text: Time.hours
        color: Colorscheme.pine
    }
    Text {
        font.pointSize: 14
        font.bold: true
        text: Time.minutes
        color: Colorscheme.text
    }
}
