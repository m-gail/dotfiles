import QtQuick
import qs.Config
import qs.Components

Item {
    required property var modelData
    property string icon: {
        const icons = {
            "terminal": "fa_terminal.svg",
            "dev": "fa_code.svg",
            "browser": "fa_globe.svg",
            "chat": "fa_comment.svg",
            "browserdev": "fa_dev.svg",
            "browsertest": "fa_vial.svg",
            "music": "fa_music.svg",
            "virtualmachine": "fa_computer.svg",
            "notes": "fa_note_sticky.svg"
        };
        return icons[modelData.name.slice(0, -2)] ?? "fa_plus.svg";
    }

    visible: modelData.output == root.modelData.name
    implicitWidth: rectangle.width
    implicitHeight: rectangle.height

    Rectangle {
        id: rectangle
        color: modelData.isActive ? Colorscheme.highlightMed : Colorscheme.highlightLow
        implicitWidth: svg.width + 10
        implicitHeight: modelData.isActive ? svg.width + 40 : svg.width + 10
        radius: 10

        Behavior on implicitHeight {
            NumberAnimation {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }
        Behavior on color {
            ColorAnimation {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }

        SvgIcon {
            id: svg
            anchors.centerIn: parent
            color: modelData.isActive ? Colorscheme.iris : Colorscheme.text
            source: icon
            width: 24
            height: 24
        }
    }
}
