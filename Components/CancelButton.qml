import QtQuick 2.0

Rectangle {
    visible: false
    width: 70
    height: 70

    Image{
        anchors.centerIn: parent
        source: "../Assets/ico-button-action-bar-end.png"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            keyboard.state = "close";
            cancelButton.visible = false;
        }
    }
}
