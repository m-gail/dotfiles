import QtQuick
import QtQuick.Layouts
import qs.Services
import qs.Config

ColumnLayout {

    Text {
        color: Colorscheme.iris
        text: Time.hours
        font.pointSize: 72
        font.bold: true
    }

    Text {
        leftPadding: 60
        color: Colorscheme.subtle
        text: Time.minutes
        font.pointSize: 72
        font.bold: true
    }
}
