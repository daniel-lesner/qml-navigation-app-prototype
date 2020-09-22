import QtQuick 2.0

Rectangle {
    property int boxIndex: 0
    property string imageSource
    property string imageText

    x: boxIndex * width
    y: 28
    width: 243
    height: 240


    Image {
        y: 22
        source: imageSource
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {
        x: 6
        y: 134
        width: parent.width - 2 * 6
        height: parent.height - 8 - 134

        Text {
            text: imageText
            color: "#5035e3"
            font { pixelSize: 25; letterSpacing: 0; family: "NotosansDisplay"; weight: Font.Medium }
            anchors { top: parent.top; horizontalCenter: parent.horizontalCenter }
        }
    }
}
