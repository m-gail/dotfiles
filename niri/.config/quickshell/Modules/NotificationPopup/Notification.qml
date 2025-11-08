import Quickshell
import Quickshell.Widgets
import QtQuick
import qs.Components
import qs.Config

MouseArea {
    id: root
    required property var modelData
    width: Size.notificationWidth - (2 * Size.notificationPadding)
    height: Size.notificationHeight - (2 * Size.notificationPadding)
    cursorShape: Qt.PointingHandCursor

    property real textWidth: root.width - root.height - row.spacing

    onClicked: {
        modelData.dismiss()
    }

    Row {
        id: row
        width: parent.width
        height: parent.height
        spacing: Size.notificationPadding
        Loader {
            id: image
            active: modelData.image != ""
            visible: active
            height: parent.height
            width: parent.height
            sourceComponent: RoundedImage {
                height: parent.height
                width: parent.height
                fillMode: Image.PreserveAspectFit
                source: modelData.image
                radius: Size.borderRadiusLarge
            }
        }
        Loader {
            id: svgIcon
            active: modelData.image == ""
            visible: active
            height: parent.height
            width: parent.height
            sourceComponent: Item {
                SvgIcon {
                    anchors.centerIn: parent
                    size: parent.height * 0.8
                    source: "fa_bell.svg"
                    color: Colorscheme.gold
                }
            }
        }
        Column {
            id: column
            anchors.verticalCenter: parent.verticalCenter
            Text {
                text: modelData.summary
                font.bold: true
                color: Colorscheme.text
                font.pointSize: Size.notificationTitleFontSize
                width: root.textWidth
                elide: Text.ElideRight
            }
            Text {
                text: modelData.body
                color: Colorscheme.text
                font.pointSize: Size.notificationBodyFontSize
                elide: Text.ElideRight
                width: root.textWidth
            }
        }
    }
}
