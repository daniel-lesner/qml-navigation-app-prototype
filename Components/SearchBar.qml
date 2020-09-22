import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12

Rectangle {
    id: root

    height: 70
    color: "#f7f7f7"

    Rectangle {
        id: floatingBar

        width: 72
        height: 70
        color: "#f7f7f7"

        Image {
            id: icoFloatingBar

            anchors.centerIn: parent
            source: "../Assets/ico-floating-bar-search@3x.png"
        }

        ColorOverlay {
            anchors.fill: icoFloatingBar
            source: icoFloatingBar
            color: "#b6b6b6"
        }
    }

    Rectangle {
        x: floatingBar.width
        y: 18
        height: parent.height - 2 * 18

        TextField {
            leftPadding: 0
            anchors.verticalCenter: parent.verticalCenter
            placeholderText: qsTr("Search for an addres or destination")
            placeholderTextColor: "#b6b6b6"
            font { pixelSize: 25; letterSpacing: 0; family: "NotosansDisplay"; weight: Font.Medium }
            
            background: Rectangle {
                implicitWidth: parent.width
                implicitHeight: parent.height
                color: "#f7f7f7"
            }

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    keyboard.state = "open";
                    cancelButton.visible = true;Z
                }
            }
        }

        Canvas {
            id: flickerBar

            width: 5
            height: parent.height

            onPaint: {
                    var ctx = getContext("2d");
                    ctx.strokeStyle = "#5035e3";
                    ctx.lineWidth = 4;
                    ctx.beginPath();
                    ctx.moveTo(0,0);
                    ctx.lineTo(0,70);
                    ctx.stroke();
            }
            
            Timer {
                interval: 1000
                running: true
                repeat: true
                onTriggered: flickerBar.visible = !flickerBar.visible
             }
        }
    }
}
