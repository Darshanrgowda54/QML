import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Window {
    width: 1200
    height: 600
    visible: true
    title: qsTr("Holzher Application")

    ColumnLayout {
            anchors.fill: parent
            anchors.margins: 10
            spacing: 10

            Rectangle {
                id: rectangle1
                color: "red"
                Layout.fillWidth: true
                Layout.preferredHeight: parent.height * 0.05
                radius: 10
            }

            Rectangle {
                id: rectangle2
                color: "lightgrey"
                Layout.fillWidth: true
                Layout.preferredHeight: parent.height * 0.06
                radius: 10
            }

            RowLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true
                spacing: 10

                Loader {
                    id: loader
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    source: ""
                }

                ApplicationMenuPage {
                    Layout.preferredWidth: parent.width * 0.14
                    Layout.fillHeight: true
                    radius: 10

                    onProductionButtonClicked: {
                        loader.source = "ProductionPage.qml"
                    }

                    onSetUpButtonClicked: {
                        loader.source = "SetUpPage.qml"
                    }

                    onSupportButtonClicked: {
                        loader.source = "SupportPage.qml"
                    }

                    onToolsButtonClicked: {
                        loader.source = "ToolsPage.qml"
                    }

                    onFavouriteButtonClicked: {
                        loader.source = "FavouritePage.qml"
                    }
                }
            }

            Rectangle {
                id: rectangle3
                color: "lightgrey"
                Layout.fillWidth: true
                Layout.preferredHeight: parent.height * 0.05
                radius: 10
            }
        }
}
