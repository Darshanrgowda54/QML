import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: screen.width
    height: screen.height
    visible: true
    title: qsTr("Hello World")

    Loader {
        id: loader
        width: parent.width
        height: parent.height
        source: "MenuPage.qml"
    }

    Connections {
        target: loader.item

        function onWhatsAppButtonClicked() {
            loader.source = "WhatsApp/WhatsApp.qml"
        }

        function onPhoneBookButtonClicked() {
            loader.source = "PhoneBook/PhoneBook.qml"
        }

        function onCallHistoryButtonClicked() {
            loader.source = "CallHistory/CallHistory.qml"
        }

        function onWhatsAppBackButtonClicked() {
            loader.source = "MenuPage.qml"
        }

        function onCallHistoryBackButtonClicked() {
            loader.source = "MenuPage.qml"
        }

        function onPhonebookBackButtonClicked() {
            loader.source = "MenuPage.qml"
        }
    }
}
