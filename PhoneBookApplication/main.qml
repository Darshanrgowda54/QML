import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 600
    height: 1010
    visible: true
    title: qsTr("Hello World")

    Loader {
        id: loader
        width: 600
        height: parent.height
        anchors.centerIn: parent
        source: "ContactListPage.qml"
    }

    Connections {
        target: loader.item

        function onAddContactButtonClicked() {
            loader.source = "AddContactPage.qml"
        }

        function onBackButtonClicked() {
            loader.source = "ContactListPage.qml"
        }

        function onSaveButtonClicked() {
            loader.source = "ContactListPage.qml"
        }

        function onBackFormProfile() {
            loader.source = "ContactListPage.qml"
        }

        function onContactClicked(name, imagePath, number, email) {
                loader.setSource("ContactProfilePage.qml", {
                    "name": name,
                    "imagePath": imagePath,
                    "number": number,
                    "email": email
            })
        }
    }
}
