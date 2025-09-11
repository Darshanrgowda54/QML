import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 800
    height: 800
    visible: true
    title: qsTr("Employee Application")

    Loader {
        id: loader
        width: parent.width
        height: parent.height
        source: "Employee/MenuPage.qml"
    }

    Connections {
        target: loader.item
        ignoreUnknownSignals: true

        function onSignInButtonClicked() {
            loader.source = "Employee/MenuPage.qml"
        }
    }
}
