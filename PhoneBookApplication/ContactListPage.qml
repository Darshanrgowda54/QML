import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: contactList
    color: "#121212"

    signal addContactButtonClicked()
    signal contactClicked(string name, string imagePath, string number, string email)

    Column {
        anchors.fill: parent

        HeaderPage {
            id: header
            width: parent.width
            height: 200
            border.color: "#BB86FC"
            onAddContactButtonClicked: {
                contactList.addContactButtonClicked()
            }
        }

        ListView {
            id: contactListview
            model: ContactDataModel
            delegate: myComponent
            anchors.top: header.bottom
            anchors.topMargin: 10
            width: parent.width
            height: parent.height
            spacing: 10
        }
    }

    Component {
        id: myComponent

        Rectangle {
            id: background
            width: contactList.width
            height: 70
            color: pressed ? "royalBlue" : "#1E1E1E"
            radius: 12

            property bool pressed: false

            MouseArea {
                anchors.fill: parent
                onPressed: background.pressed = true
                onReleased: background.pressed = false

                onClicked: {
                    contactList.contactClicked(name,imagePath, phoneNumber, email)
                    console.log("Contact Details: "+name +phoneNumber + email)
                }
            }

            Row {
                spacing: 60
                id: rowLayout
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 20

                Image {
                    id: profileImage
                    source: imagePath
                    width: 50
                    height: 50
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: contactName
                    text: name
                    color: "white"
                    font.pixelSize: 28
                    font.bold: true
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
    }
}
