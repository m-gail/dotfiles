import Quickshell
import Quickshell.Widgets
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import qs.Components
import qs.Modules.Bar.Notifications
import qs.Services
import qs.Config
import qs.Modules.NotificationPopup

PopupWindow {
    id: notificationCenter

    property var window
    property var bar

    property bool open: false

    color: "transparent"
    visible: content.transformX != -rect.width
    implicitWidth: rect.width
    implicitHeight: rect.height

    anchor.window: window
    anchor.adjustment: PopupAdjustment.None
    anchor.rect.x: bar.contentWidth - 2
    anchor.rect.y: bar.height / 2 - (notificationCenter.height / 2)

    Item {
        id: content
        property real transformTopCornerX: notificationCenter.open ? 0 : -rect.width
        property real transformX: notificationCenter.open ? 0 : -rect.width
        Behavior on transformTopCornerX {
            DefaultNumberAnimation {}
        }
        Behavior on transformX {
            DefaultNumberAnimation {}
        }

        HuggingRectangle {
            id: rect
            leftEdge: true

            contentHeight: rectContent.height + (2 * Size.notificationPadding)
            contentWidth: rectContent.width + (2 * Size.notificationPadding)

            rectTranslateX: content.transformX
            leftRightTranslateX: content.transformX
            topBottomTranslateX: content.transformTopCornerX

            ColumnLayout {
                id: rectContent
                anchors.centerIn: parent
                height: Size.notificationHeight * 3.3
                width: Size.notificationWidth - (2 * Size.notificationPadding)
                spacing: Size.notificationPadding
                MediaPlayer {}
                RowLayout {
                    spacing: Size.iconTextPadding
                    SvgIcon {
                        size: 32
                        color: Colorscheme.gold
                        source: "fa_bell.svg"
                    }
                    Text {
                        color: Colorscheme.text
                        text: "Notifications"
                        font.pointSize: 18
                    }
                }
                Text {
                    visible: Notifications.centerNotifications.length === 0
                    color: Colorscheme.muted
                    text: "No notifications"
                    font.pointSize: 14
                }

                ListView {
                    id: notificationList
                    spacing: Size.notificationPadding
                    clip: true
                    Layout.fillHeight: true
                    width: Size.notificationWidth
                    model: Notifications.centerNotifications
                    delegate: Notification {}
                }
            }
        }
    }
}
