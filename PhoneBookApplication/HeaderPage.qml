import QtQuick 2.15
import QtQuick.Controls

Rectangle {
    id: headerPage
    color: "#121212"
    // width: parent.width
    // height: 200
    z: 2
    radius: 10

    signal addContactButtonClicked()

    Text {
        id: contact
        text:  "Contacts"
        color: "#BB86FC"
        font.bold: true
        font.pixelSize: 30
        anchors.left: parent.left
        anchors.leftMargin: 40
        anchors.top: parent.top
        anchors.topMargin: 40
    }

    Rectangle {
        id: addContactButton
        color: "#121212"
        anchors.right: parent.right
        anchors.rightMargin: 40
        anchors.top: parent.top
        anchors.topMargin: 40
        width: 50
        height: 50

        Image {
            anchors.fill: parent
            id: addContact
            source: "qrc:/Image/AddProfile.png"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: addContactMouse
            anchors.fill: parent

            onClicked: {
                console.log("Add Contact Button Clicked")
                addContactButtonClicked()
            }
        }
    }


    TextField {
        id: search
        anchors.top: contact.bottom
        anchors.topMargin: 40
        anchors.left: parent.left
        anchors.leftMargin: 40
        width: parent.width * 0.85
        height: 50
        placeholderText: "Search"
        font.pixelSize: 20
        leftPadding: 20
        color: "White"

        background: Rectangle {
            anchors.fill: parent
            radius: 180
            color: "#2A2A2A"
            border.color: "#BB86FC"
        }
    }
}
