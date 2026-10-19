import QtQuick
import QtQuick.Layouts
import qs.Services
import qs.Config

Rectangle {
    implicitWidth: content.width
    implicitHeight: content.height
    radius: 10
    color: Colorscheme.surface

    ColumnLayout {
        id: content
        anchors.centerIn: parent
        Repeater {
            model: Niri.workspaces
            delegate: WorkspaceItem {}
        }
    }
}
