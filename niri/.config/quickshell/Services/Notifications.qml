pragma Singleton

import Quickshell
import QtQuick
import Quickshell.Services.Notifications

Singleton {
    id: root
    property list<var> rawServerNotifications: notificationServer.trackedNotifications.values
    property list<var> centerNotifications: []
    property list<var> popupNotifications: []

    onRawServerNotificationsChanged: {
        root.updateModels()
    }

    NotificationServer {
        id: notificationServer

        onNotification: notification => {
            notification.tracked = true;
            notification.popup = true;
            notificationExpireComponent.createObject(root, {
                notificationId: notification.id,
                timeout: notification.expireTimeout > 0 ? notification.expireTimeout : 5_000
            });
        }
    }

    component NotificationExpire: Timer {
        required property int notificationId
        required property int timeout
        interval: timeout
        running: true
        onTriggered: () => {
            const index = popupNotifications.findIndex(notification => notification.id == notificationId);
            if (index >= 0) {
                popupNotifications[index].popup = false
                root.updateModels()
            }
            destroy();
        }
    }

    function updateModels() {
        root.popupNotifications = notificationServer.trackedNotifications.values.filter(notif => notif.popup);
        root.centerNotifications = notificationServer.trackedNotifications.values
    }

    Component {
        id: notificationExpireComponent
        NotificationExpire {}
    }
}
