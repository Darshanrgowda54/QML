import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: whatsAppHeaderPage
    width: parent.width
    height: parent.height / 6
    color: "#30414D"

    Row {
        id: whatsAPPRowLayout
        anchors.top: parent.top
        anchors.topMargin: parent.height / 8
        width: parent.width
        height: parent.height / 3

        Text {
            id: whatsText
            text: "WhatsAPP"
            color: "#e4f7d9"
            font.bold: true
            font.pixelSize: whatsAppHeaderPage.height / 4
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width / 1.5
        }


        Rectangle {
            id: scanner
            property bool pressedState: false
            color: pressedState ? "#e4f7d9" : "#30414D"
            width: parent.width / 10
            height: parent.height
            anchors.verticalCenter: parent.verticalCenter
            radius: height / 2

            Image {
                id: scannerImage
                width: parent.width / 2
                height: parent.height / 1.5
                anchors.centerIn: parent
                source: "qrc:/Image/Scanner.png"
            }

            MouseArea {
                anchors.fill: parent
                onPressed: scanner.pressedState = true
                onReleased: scanner.pressedState = false
            }
        }

        Rectangle {
            id: camera
            property bool pressedState: false
            color: pressedState ? "#e4f7d9" : "#30414D"
            width: parent.width / 10
            height: parent.height
            anchors.verticalCenter: parent.verticalCenter
            radius: height / 2

            Image {
                id: cameraImage
                width: parent.width / 2
                height: parent.height / 1.5
                anchors.centerIn: parent
                source: "qrc:/Image/Camera.png"
            }

            MouseArea {
                anchors.fill: parent
                onPressed: camera.pressedState = true
                onReleased: camera.pressedState = false
            }
        }

        Rectangle {
            id: settings
            property bool pressedState: false
            color: pressedState ? "#e4f7d9" : "#30414D"
            width: parent.width / 10
            height: parent.height
            anchors.verticalCenter: parent.verticalCenter
            radius: height / 2

            Image {
                id: settingsImage
                height: parent.height / 1.5
                anchors.centerIn: parent
                source: "qrc:/Image/Settings.png"
            }

            MouseArea {
                anchors.fill: parent
                onPressed: settings.pressedState = true
                onReleased: settings.pressedState = false
            }
        }
    }

    TextField {
        id: search
        anchors.top: whatsAPPRowLayout.bottom
        anchors.topMargin: parent.height / 8
        width: parent.width
        height: parent.height / 3
        leftPadding: 20
        placeholderText: "Search..."
        placeholderTextColor: "#e4f7d9"
        font.pixelSize: height / 2

        background: Rectangle {
            anchors.fill: parent
            radius: height / 2
            color: "#a4a9ad"
        }
    }
}
