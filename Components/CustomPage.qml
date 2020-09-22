import QtQuick 2.0

Rectangle {
    property string pageName

    anchors.centerIn: parent
    visible: mainScreen.activePage === pageName ? true : false

    Text {
        text: qsTr(pageName)
        font { pixelSize: 25; letterSpacing: 0; family: "NotosansDisplay"; weight: Font.Medium }
        anchors.centerIn: parent
    }
}
