import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: phoneBookPage
    width: parent.width
    height: parent.height
    color: "#121212"

    signal phonebookBackButtonClicked()

    Column {
        anchors.fill: parent

        PhoneBookHeader {

        }

        ListView {
            id: phoneBookListview
            width: parent.width
            height: parent.height
            model: phoneBookModel
            delegate: myComponent
            spacing: 10
            clip: true
        }
    }

    Component {
        id: myComponent

        Rectangle {
            id: background
            width: phoneBookListview.width
            height: phoneBookListview.height / 12
            color:"#1E1E1E"
            radius: 10

            Row {
                spacing: 60
                id: rowLayout
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 20

                Image {
                    id: profileImage
                    source: contactImage
                    width: background.height
                    height: background.height
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: contactNameText
                    text: contactName
                    color: "white"
                    font.pixelSize: background.height / 3
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
    }

    Button {
        id: backFromPhoneBook
        text: "Back"
        font.bold: true
        width: parent.width / 12
        height: parent.height / 12
        anchors.bottom: parent.bottom
        anchors.bottomMargin: width  / 8
        anchors.right: parent.right
        anchors.rightMargin: width  / 8

        background: Rectangle {
            radius: height / 8
            color: "Black"
        }

        onClicked: {
            phonebookBackButtonClicked()
        }
    }
}
