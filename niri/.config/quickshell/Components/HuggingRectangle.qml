import Quickshell
import Quickshell.Widgets
import QtQuick
import QtQuick.Shapes
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
    property color borderColor: Colorscheme.highlightMed
    property real transformRect: 0
    property real transformTopBottom: 0
    property real transformLeftRight: 0

    property alias contentWidth: rectContent.implicitWidth
    property alias contentHeight: rectContent.implicitHeight

    property real rectTranslateX: 0
    property real rectTranslateY: 0

    property real topBottomTranslateX: 0
    property real topBottomTranslateY: 0

    property real leftRightTranslateX: 0
    property real leftRightTranslateY: 0

    default property alias content: rectContent.data

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
                borderColor: root.borderColor
                Layout.alignment: Qt.AlignTop
            }

            RoundedCorner {
                id: leftBottomCorner
                visible: root.hasLeftBottomCorner
                position: RoundedCorner.Position.BottomRight
                color: root.backgroundColor
                borderColor: root.borderColor
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
                    borderColor: root.borderColor
                    Layout.alignment: Qt.AlignLeft
                }

                RoundedCorner {
                    id: topRightCorner
                    visible: root.hasTopRightCorner
                    position: RoundedCorner.Position.BottomRight
                    color: root.backgroundColor
                    borderColor: root.borderColor
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

                implicitWidth: rectContent.width
                implicitHeight: rectContent.height

                transform: Translate {
                    x: root.rectTranslateX
                    y: root.rectTranslateY
                }

                Item {
                    id: rectContent
                    implicitWidth: parent.implicitWidth
                    implicitHeight: parent.implicitHeight
                }

                Shape {
                    id: corner
                    width: rect.implicitWidth
                    height: rect.implicitHeight
                    HuggingRectangleBorder {
                        color: root.borderColor
                        horizontal: true
                        hasStartHug: root.hasBottomLeftCorner
                        hasEndHug: root.hasBottomRightCorner
                        maxWidth: rect.implicitWidth
                        maxHeight: rect.implicitHeight
                        xPos: 0
                        yPos: corner.height
                        visible: !root.bottomEdge
                    }
                    HuggingRectangleBorder {
                        color: root.borderColor
                        horizontal: true
                        hasStartHug: root.hasTopLeftCorner
                        hasEndHug: root.hasTopRightCorner
                        maxWidth: rect.implicitWidth
                        maxHeight: rect.implicitHeight
                        xPos: 0
                        yPos: 0
                        visible: !root.topEdge
                    }
                    HuggingRectangleBorder {
                        color: root.borderColor
                        horizontal: false
                        hasStartHug: root.hasLeftTopCorner
                        hasEndHug: root.hasLeftBottomCorner
                        maxWidth: rect.implicitWidth
                        maxHeight: rect.implicitHeight
                        xPos: 0
                        yPos: 0
                        visible: !root.leftEdge
                    }
                    HuggingRectangleBorder {
                        color: root.borderColor
                        horizontal: false
                        hasStartHug: root.hasRightTopCorner
                        hasEndHug: root.hasRightBottomCorner
                        maxWidth: rect.implicitWidth
                        maxHeight: rect.implicitHeight
                        xPos: corner.width
                        yPos: 0
                        visible: !root.rightEdge
                    }
                    HuggingRectangleCornerBorder {
                        color: root.borderColor
                        visible: !root.topEdge && !root.rightEdge
                        maxWidth: rect.implicitWidth
                        maxHeight: rect.implicitHeight
                        position: HuggingRectangleCornerBorder.Position.TopRight
                        radius: Size.borderRadiusLarge
                    }
                    HuggingRectangleCornerBorder {
                        color: root.borderColor
                        visible: !root.topEdge && !root.leftEdge
                        maxWidth: rect.implicitWidth
                        maxHeight: rect.implicitHeight
                        position: HuggingRectangleCornerBorder.Position.TopLeft
                        radius: Size.borderRadiusLarge
                    }
                    HuggingRectangleCornerBorder {
                        color: root.borderColor
                        visible: !root.bottomEdge && !root.leftEdge
                        maxWidth: rect.implicitWidth
                        maxHeight: rect.implicitHeight
                        position: HuggingRectangleCornerBorder.Position.BottomLeft
                        radius: Size.borderRadiusLarge
                    }
                    HuggingRectangleCornerBorder {
                        color: root.borderColor
                        visible: !root.bottomEdge && !root.rightEdge
                        maxWidth: rect.implicitWidth
                        maxHeight: rect.implicitHeight
                        position: HuggingRectangleCornerBorder.Position.BottomRight
                        radius: Size.borderRadiusLarge
                    }
                }
            }

            RowLayout {
                width: rect.width

                RoundedCorner {
                    id: bottomLeftCorner
                    visible: root.hasBottomLeftCorner
                    position: RoundedCorner.Position.TopLeft
                    color: root.backgroundColor
                    borderColor: root.borderColor
                    Layout.alignment: Qt.AlignLeft
                }

                RoundedCorner {
                    id: bottomRightCorner
                    visible: root.hasBottomRightCorner
                    position: RoundedCorner.Position.TopRight
                    color: root.backgroundColor
                    borderColor: root.borderColor
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
                borderColor: root.borderColor
                Layout.alignment: Qt.AlignTop
            }

            RoundedCorner {
                id: rightBottomCorner
                visible: root.hasRightBottomCorner
                position: RoundedCorner.Position.BottomLeft
                color: root.backgroundColor
                borderColor: root.borderColor
                Layout.alignment: Qt.AlignBottom
            }

            transform: Translate {
                x: root.leftRightTranslateX
                y: root.leftRightTranslateY
            }
        }
    }
}
