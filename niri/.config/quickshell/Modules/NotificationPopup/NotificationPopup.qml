import Quickshell
import Quickshell.Widgets
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts
import qs.Components
import qs.Config
import qs.Services
import qs.Modules.NotificationPopup

Variants {
    model: Quickshell.screens

    PanelWindow {
        id: notificationWindow
        required property var modelData
        screen: modelData

        anchors {
            right: true
            top: true
        }

        color: "transparent"
        WlrLayershell.layer: WlrLayer.Overlay
        width: content.width
        height: content.height

        property bool open: Notifications.popupNotifications.length > 0
        property real transformY: notificationWindow.open ? 0 : -content.height
        property real cornerTransformY: notificationWindow.open ? 0 : -content.height
        visible: transformY != -content.height

        Behavior on transformY {
            NumberAnimation {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }
        Behavior on cornerTransformY {
            NumberAnimation {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }

        HuggingRectangle {
            id: content
            topEdge: true
            rightEdge: true
            contentHeight: Notifications.popupNotifications.length > 0 ? notificationsWrapper.height : Size.notificationHeight
            Behavior on contentHeight {
                NumberAnimation {
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            }
            contentWidth: Size.notificationWidth
            backgroundColor: Colorscheme.base
            borderColor: Colorscheme.iris

            rectTranslateY: notificationWindow.transformY
            topBottomTranslateY: notificationWindow.transformY
            leftRightTranslateY: notificationWindow.cornerTransformY

            Item {
                id: notificationsWrapper
                width: notifications.implicitWidth + (Size.notificationPadding * 2)
                height: notifications.implicitHeight + (Size.notificationPadding * 2)
                ColumnLayout {
                    anchors.centerIn: parent
                    id: notifications
                    spacing: Size.notificationPadding
                    Repeater {
                        model: Notifications.popupNotifications
                        delegate: Notification {}
                    }
                }
            }
        }
    }
}
