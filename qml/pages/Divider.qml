import QtQuick 2.2
import Sailfish.Silica 1.0

Item {
    width: parent.width
    height: childrenRect.height
    opacity: 0.4
    Rectangle {
        id: cut_line_fst
        anchors.left: parent.left
        width: parent.width/2
        height: 2
        color: "gray"
    }
    Rectangle {
        id: cut_line_snd
        anchors.left: cut_line_fst.right
        anchors.right: parent.right
        height: 2
        color: "gray"
    }

    OpacityRampEffect {
        sourceItem: cut_line_fst
        direction: OpacityRamp.RightToLeft
        offset: 0
        slope: 1.3
    }
    OpacityRampEffect {
        sourceItem: cut_line_snd
        direction: OpacityRamp.LeftToRight
        offset: 0
        slope: 1.3
    }
}

