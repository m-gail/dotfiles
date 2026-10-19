import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Widgets
import Quickshell.Services.UPower
import qs.Components
import qs.Config
import qs.Services

Rectangle {
    id: rectangle
    color: Colorscheme.surface
    implicitWidth: content.width
    implicitHeight: content.height
    radius: 10

    MarginWrapperManager {
        margin: 5
    }

    ColumnLayout {
        id: content

        ColumnLayout {
            spacing: 0
            Text {
                Layout.alignment: Qt.AlignHCenter
                font.pointSize: 16
                font.bold: true
                text: Time.day
                color: Colorscheme.text
            }
            Text {
                Layout.alignment: Qt.AlignHCenter
                font.pointSize: 12
                text: Time.month
                color: Colorscheme.subtle
            }
        }

        Rectangle {
            implicitHeight: 1
            implicitWidth: parent.implicitWidth
            color: Colorscheme.text
        }

        ColumnLayout {
            spacing: 0
            Layout.alignment: Qt.AlignHCenter
            Text {
                font.pointSize: 14
                font.bold: true
                text: Time.hours
                color: Colorscheme.subtle
            }
            Text {
                font.pointSize: 14
                font.bold: true
                text: Time.minutes
                color: Colorscheme.text
            }
        }
    }
}
