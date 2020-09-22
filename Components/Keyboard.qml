import QtQuick 2.0
import QtGraphicalEffects 1.12

Rectangle {
    property alias shadowVisibility: keyboardShadow.visible

    y: root.height

    Image {
        id: keyboardPicture

        source: "../Assets/keyboard-us-english-uppercase-day.png"
    }

    DropShadow {
        id: keyboardShadow

        visible: false
        anchors.fill: keyboardPicture
        spread: 0
        verticalOffset: -6
        color: Qt.rgba(0, 0, 0, 0.16)
        source: keyboardPicture
        radius: 24
        samples: 49
    }

    states: [
        State {
            name: "close"
            PropertyChanges { target: keyboard; y: root.height; shadowVisibility: false }
        },

        State {
            name: "open"
            PropertyChanges { target: keyboard; y: root.height - keyboardPicture.height; shadowVisibility: true }
        }
    ]

    transitions: Transition {
            to: "*"
            NumberAnimation { properties: "y"; easing.type: Easing.OutExpo; duration: 1500 }
        }
}
