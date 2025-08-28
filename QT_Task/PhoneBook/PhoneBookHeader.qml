import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: phoneBookheaderPage
    width: parent.width
    height: parent.height / 6
    color: "#121212"

    Row {
        id: phoneBookRowLayout
        anchors.top: parent.top
        anchors.topMargin: parent.height / 8
        width: parent.width
        height: parent.height / 3

        Text {
            id: whatsText
            text: "Contacts"
            color: "#BB86FC"
            font.bold: true
            font.pixelSize: phoneBookheaderPage.height / 4
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width / 2
        }

        Rectangle {
            id: addContactButton
            color: "#121212"
            anchors.right: parent.right
            width: parent.width / 10
            height: parent.height
            anchors.verticalCenter: parent.verticalCenter
            radius: height / 2

            Image {
                anchors.centerIn: parent
                width: parent.width
                height: parent.height
                id: addContact
                source: "qrc:/Image/AddProfile.png"
                fillMode: Image.PreserveAspectFit
            }
        }
    }

    TextField {
        id: search
        anchors.top: phoneBookRowLayout.bottom
       anchors.topMargin: parent.height / 8
        width: parent.width
        height: parent.height / 3
        leftPadding: 20
        placeholderText: "Search"
        font.pixelSize: height / 2
        color: "White"

        background: Rectangle {
            anchors.fill: parent
            radius: height / 2
            color: "#2A2A2A"
            border.color: "#BB86FC"
        }
    }
}
