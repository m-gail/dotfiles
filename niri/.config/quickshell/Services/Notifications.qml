pragma Singleton

import Quickshell
import QtQuick
import Quickshell.Services.Notifications

Singleton {
    id: root
    property list<var> popupNotifications: notificationServer.trackedNotifications.values.filter(notif => notif.popup)

    NotificationServer {
        id: notificationServer

        onNotification: notification => {
            notification.tracked = true;
            notification.popup = true;
            notificationExpireComponent.createObject(root, {
                notificationId: notification.id,
                timeout: notification.expireTimeout > 0 ? notification.expireTimeout : 10_000
            });
        }
    }

    component NotificationExpire: Timer {
        required property int notificationId
        required property int timeout
        interval: timeout
        running: true
        onTriggered: () => {
            const index = popupNotifications.findIndex(notification => notification.id == notificationId)
            if (index >= 0) {
                popupNotifications[index].expire()
            }
            destroy();
        }
    }
    Component {
        id: notificationExpireComponent
        NotificationExpire {}
    }
}
