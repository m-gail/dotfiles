import Quickshell
import Quickshell.Widgets
import QtQuick
import QtQuick.Layouts
import qs.Config

Item {
    id: root

    // external props

    property bool leftEdge: false
    property bool rightEdge: false
    property bool topEdge: false
    property bool bottomEdge: false

    property color backgroundColor: Colorscheme.base
    property real transformRect: 0
    property real transformTopBottom: 0
    property real transformLeftRight: 0

    property alias contentWidth: rect.implicitWidth
    property alias contentHeight: rect.implicitHeight

    property real rectTranslateX: 0
    property real rectTranslateY: 0

    property real topBottomTranslateX: 0
    property real topBottomTranslateY: 0

    property real leftRightTranslateX: 0
    property real leftRightTranslateY: 0

    default property alias content: rect.data

    // internal props

    property bool hasTopLeftCorner: leftEdge && !topEdge
    property bool hasTopRightCorner: rightEdge && !topEdge
    property bool hasLeftTopCorner: topEdge && !leftEdge
    property bool hasLeftBottomCorner: bottomEdge && !leftEdge
    property bool hasRightTopCorner: topEdge && !rightEdge
    property bool hasRightBottomCorner: bottomEdge && !rightEdge
    property bool hasBottomLeftCorner: leftEdge && !bottomEdge
    property bool hasBottomRightCorner: rightEdge && !bottomEdge

    property real rectTopRightRadius: !topEdge && !root.rightEdge ? Size.borderRadiusLarge : 0
    property real rectTopLeftRadius: !topEdge && !leftEdge ? Size.borderRadiusLarge : 0
    property real rectBottomRightRadius: !bottomEdge && !rightEdge ? Size.borderRadiusLarge : 0
    property real rectBottomLeftRadius: !bottomEdge && !leftEdge ? Size.borderRadiusLarge : 0

    width: layout.implicitWidth
    height: layout.implicitHeight

    Row {
        id: layout
        ColumnLayout {
            height: centerColumn.height

            RoundedCorner {
                id: leftTopCorner
                visible: root.hasLeftTopCorner
                position: RoundedCorner.Position.TopRight
                color: root.backgroundColor
                Layout.alignment: Qt.AlignTop
            }

            RoundedCorner {
                id: leftBottomCorner
                visible: root.hasLeftBottomCorner
                position: RoundedCorner.Position.BottomRight
                color: root.backgroundColor
                Layout.alignment: Qt.AlignBottom
            }

            transform: Translate {
                x: root.leftRightTranslateX
                y: root.leftRightTranslateY
            }
        }

        Column {
            id: centerColumn

            RowLayout {
                width: rect.width

                RoundedCorner {
                    id: topLeftCorner
                    visible: root.hasTopLeftCorner
                    position: RoundedCorner.Position.BottomLeft
                    color: root.backgroundColor
                    Layout.alignment: Qt.AlignLeft
                }

                RoundedCorner {
                    id: topRightCorner
                    visible: root.hasTopRightCorner
                    position: RoundedCorner.Position.BottomRight
                    color: root.backgroundColor
                    Layout.alignment: Qt.AlignRight
                }

                transform: Translate {
                    x: root.topBottomTranslateX
                    y: root.topBottomTranslateY
                }
            }

            Rectangle {
                id: rect

                bottomLeftRadius: root.rectBottomLeftRadius
                bottomRightRadius: root.rectBottomRightRadius
                topLeftRadius: root.rectTopLeftRadius
                topRightRadius: root.rectTopRightRadius

                color: root.backgroundColor

                transform: Translate {
                    x: root.rectTranslateX
                    y: root.rectTranslateY
                }
            }

            RowLayout {
                width: rect.width

                RoundedCorner {
                    id: bottomLeftCorner
                    visible: root.hasBottomLeftCorner
                    position: RoundedCorner.Position.TopLeft
                    color: root.backgroundColor
                    Layout.alignment: Qt.AlignLeft
                }

                RoundedCorner {
                    id: bottomRightCorner
                    visible: root.hasBottomRightCorner
                    position: RoundedCorner.Position.TopRight
                    color: root.backgroundColor
                    Layout.alignment: Qt.AlignRight
                }

                transform: Translate {
                    x: root.topBottomTranslateX
                    y: root.topBottomTranslateY
                }
            }
        }

        ColumnLayout {
            height: centerColumn.height

            RoundedCorner {
                id: rightTopCorner
                visible: root.hasRightTopCorner
                position: RoundedCorner.Position.TopLeft
                color: root.backgroundColor
                Layout.alignment: Qt.AlignTop
            }

            RoundedCorner {
                id: rightBottomCorner
                visible: root.hasRightBottomCorner
                position: RoundedCorner.Position.BottomLeft
                color: root.backgroundColor
                Layout.alignment: Qt.AlignBottom
            }

            transform: Translate {
                x: root.leftRightTranslateX
                y: root.leftRightTranslateY
            }
        }
    }
}
