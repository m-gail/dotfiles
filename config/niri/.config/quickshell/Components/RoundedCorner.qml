import QtQuick.Shapes
import QtQuick
import qs.Config

Item {
    id: root

    enum Position {
        TopLeft,
        BottomLeft,
        TopRight,
        BottomRight
    }

    property real size: 24
    property color color
    property color borderColor: "transparent"
    property var position: RoundedCorner.Position.TopLeft

    property bool isLeft: position == RoundedCorner.Position.TopLeft || position == RoundedCorner.Position.BottomLeft
    property bool isTop: position == RoundedCorner.Position.TopLeft || position == RoundedCorner.Position.TopRight

    width: corner.width
    height: corner.height

    Shape {
        id: corner
        implicitWidth: root.size
        implicitHeight: root.size

        ShapePath {
            strokeWidth: 0
            fillColor: root.color
            PathAngleArc {
                startAngle: switch (root.position) {
                case RoundedCorner.Position.TopLeft:
                    return 180;
                case RoundedCorner.Position.BottomLeft:
                    return 90;
                case RoundedCorner.Position.TopRight:
                    return -90;
                case RoundedCorner.Position.BottomRight:
                    return 0;
                }
                sweepAngle: 90
                centerX: root.isLeft ? root.size : 0
                centerY: root.isTop ? root.size : 0
                radiusX: root.size
                radiusY: root.size
            }
            PathLine {
                x: root.isLeft ? 0 : root.size
                y: root.isTop ? 0 : root.size
            }
        }
    }

    Shape {
        ShapePath {
            strokeWidth: Size.borderWidth
            strokeColor: root.borderColor
            fillColor: "transparent"
            PathAngleArc {
                startAngle: switch (root.position) {
                case RoundedCorner.Position.TopLeft:
                    return 180;
                case RoundedCorner.Position.BottomLeft:
                    return 90;
                case RoundedCorner.Position.TopRight:
                    return -90;
                case RoundedCorner.Position.BottomRight:
                    return 0;
                }
                sweepAngle: 90
                centerX: root.isLeft ? root.size : 0
                centerY: root.isTop ? root.size : 0
                radiusX: root.size
                radiusY: root.size
            }
        }
    }
}
