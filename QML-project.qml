import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12
import "./Components"

Window {
    id: root

    width: 1024
    height: 768
    title: qsTr("My App")

    Image {
        id: topBar
        source: "Assets/system-bar-top.png"
    }

    Rectangle{
        id: mainScreen

        property string activePage: "Home"

        y: topBar.height + 12
        width: root.width
        height: root.height - topBar.height - navBar.height - 12

        CustomPage { pageName: "Home" }

        CustomPage { pageName: "Radio" }

        CustomPage { pageName: "Music" }

        CustomPage { pageName: "Phone" }

        CustomPage { pageName: "HVAC"}

        CustomPage { pageName: "Car"}

        Rectangle {
            visible: mainScreen.activePage === "Location" ? true : false
            width: root.width
            height: root.height - topBar.height - navBar.height

            SearchBar {
                id: searchBar

                x: 12
                width: root.width - 94 - 12
            }

            CancelButton {
                id: cancelButton

                x: 942
            }

            Rectangle {
                x: 26
                y: searchBar.height
                width: 243 * 4
                height: 322

                SwipeView {
                    id: view

                    currentIndex: 0
                    anchors.fill: parent

                    Item {
                        id: firstPage

                        CustomSearchBox {
                            boxIndex: 0
                            imageSource: "../Assets/ico-search-recents.png"
                            imageText: "Recents"
                        }

                        CustomSearchBox {
                            boxIndex: 1
                            imageSource: "../Assets/ico-search-saved.png"
                            imageText: "Saved"
                        }

                        CustomSearchBox {
                            boxIndex: 2
                            imageSource: "../Assets/ico-search-gas-stations.png"
                            imageText: "Gas Stations"
                        }

                        CustomSearchBox {
                            boxIndex: 3
                            imageSource: "../Assets/ico-search-food.png"
                            imageText: "Food"
                        }
                    }

                    Item { id: secondPage }

                    Item { id: thirdPage }
                }

                PageIndicator {
                    id: indicator

                    x: 492 - 26
                    y: 364 - searchBar.height - 12
                    count: view.count
                    currentIndex: view.currentIndex

                    delegate: Rectangle {
                        implicitWidth: 8
                        implicitHeight: 8
                        radius: width / 2
                        color: index === view.currentIndex ? "#5035e3" : "#cfd0d1"
                    }
                }
            }
        }
    }

    NavBar { id: navBar }

    Keyboard { id: keyboard }
}
