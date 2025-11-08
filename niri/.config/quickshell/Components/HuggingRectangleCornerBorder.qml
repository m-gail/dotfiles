import QtQuick
import QtQuick.Shapes
import qs.Config

ShapePath {
    id: root
    enum Position {
        TopLeft,
        BottomLeft,
        TopRight,
        BottomRight
    }

    property bool visible
    property var position
    property real maxWidth
    property real maxHeight
    property real radius
    property color color: Colorscheme.highlightMed

    strokeWidth: root.visible ? 3 : 0
    strokeColor: root.color
    fillColor: "transparent"
    PathAngleArc {
        sweepAngle: 90
        startAngle: switch (root.position) {
        case HuggingRectangleCornerBorder.Position.TopLeft:
            return 180;
        case HuggingRectangleCornerBorder.Position.BottomLeft:
            return 90;
        case HuggingRectangleCornerBorder.Position.TopRight:
            return -90;
        case HuggingRectangleCornerBorder.Position.BottomRight:
            return 0;
        }
        centerX: root.position == HuggingRectangleCornerBorder.Position.TopLeft || root.position == HuggingRectangleCornerBorder.Position.BottomLeft ? root.radius : root.maxWidth - root.radius
        centerY: root.position == HuggingRectangleCornerBorder.Position.TopLeft || root.position == HuggingRectangleCornerBorder.Position.TopRight ? root.radius : root.maxHeight - root.radius
        radiusX: root.radius
        radiusY: root.radius
    }
}
