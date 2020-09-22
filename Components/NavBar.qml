import QtQuick 2.0

Rectangle {
    y: root.height - 84
    width: root.width
    height: 84

    NavBarIcon {
        pageName: "Home"
        boxIndex: 0
        imageSource: "../Assets/ico-system-bar-home.png"
    }

    NavBarIcon {
        pageName: "Radio"
        boxIndex: 1
        imageSource: "../Assets/ico-system-bar-radio.png"
    }
    NavBarIcon {
        pageName: "Music"
        boxIndex: 2
        imageSource: "../Assets/ico-system-bar-music.png"
    }
    NavBarIcon {
        pageName: "Location"
        boxIndex: 3
        imageSource: "../Assets/ico-system-bar-nav.png"
    }

    NavBarIcon {
        pageName: "Phone"
        boxIndex: 4
        imageSource: "../Assets/ico-system-bar-phone.png"
    }

    NavBarIcon {
        pageName: "HVAC"
        boxIndex: 5
        imageSource: "../Assets/ico-system-bar-hvac.png"
    }

    NavBarIcon {
        pageName: "Car"
        boxIndex: 6
        imageSource: "../Assets/ico-system-bar-car.png"
    }
}
