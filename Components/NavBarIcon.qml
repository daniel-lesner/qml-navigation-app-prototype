import QtQuick 2.0
import QtGraphicalEffects 1.12

Rectangle {
    id: navBarIcon

    property string imageSource
    property string pageName
    property int boxIndex: 0

    x: boxIndex * width
    width: 1024 / 7
    height: 84
    color: mainScreen.activePage === pageName ? "grey" : "black"

    Image {
        id: pageIcon

        source: imageSource
        anchors.centerIn: parent

        ColorOverlay {
            anchors.fill: pageIcon
            source: pageIcon
            color: mainScreen.activePage === pageName ? "white" : "#999999"
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: mainScreen.activePage = pageName
    }

    Rectangle {
        id: bottomBorder

        y: parent.height - height
        width: parent.width
        height: 5
        color: "white"
        visible: mainScreen.activePage === pageName ? true : false
    }
}
