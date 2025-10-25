import QtQuick
import QtQuick.Layouts
import qs.Services
import qs.Config

ColumnLayout {
    spacing: 0

    Text {
        color: Colorscheme.iris
        text: Time.hours
        font.pointSize: 124
        font.bold: true
    }

    Text {
        leftPadding: 120
        color: Colorscheme.subtle
        text: Time.minutes
        font.pointSize: 96
        font.bold: true
    }
}
