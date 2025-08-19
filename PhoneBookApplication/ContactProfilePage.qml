import QtQuick 2.15
import QtQuick.Controls

Rectangle {
    color: "#121212"

    property string imagePath: ""
    property string name: ""
    property string number: ""
    property string email: ""

    signal backFormProfile()

    CustomButton {
        id: backButton
        text: "Back"

        anchors.top: parent.top
        anchors.topMargin: 40
        anchors.left: parent.left
        anchors.leftMargin: 30

        onClicked: {
            console.log("Back Button Clicked")
            backFormProfile()
        }
    }

    Rectangle {
        id: profileImage
        radius: 360
        width: 200
        height: 200
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 50

        Image {
            id: profileqrc
            source: imagePath
            fillMode: Image.PreserveAspectFit
            anchors.fill: parent
        }
    }

    Column {
        anchors.top: profileImage.bottom
        anchors.topMargin: 40
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 30

        Text {
            text: name
            color: "white"
            font.pixelSize: 34
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            text: "Number: " + number
            color: "white"
            font.pixelSize: 20
        }

        Text {
            text: "Email: " + email
            color: "white"
            font.pixelSize: 20
        }
    }
}
