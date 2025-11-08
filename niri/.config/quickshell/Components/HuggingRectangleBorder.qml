import QtQuick
import QtQuick.Shapes
import qs.Config

ShapePath {
    id: root
    property bool hasStartHug
    property bool hasEndHug
    property bool horizontal
    property real xPos
    property real yPos
    property real maxWidth
    property real maxHeight
    property bool visible
    property color color: Colorscheme.highlightMed

    property real startOffset: hasStartHug ? 24 : 20
    property real endOffset: hasEndHug ? 24 : 20

    strokeWidth: visible ? 3 : 0
    strokeColor: root.color
    startX: xPos + (horizontal ? startOffset : 0)
    startY: yPos + (!horizontal ? startOffset : 0)
    PathLine {
        x: !root.horizontal ? root.startX : root.maxWidth - root.endOffset
        y: root.horizontal ? root.startY : root.maxHeight - root.endOffset
    }
}
