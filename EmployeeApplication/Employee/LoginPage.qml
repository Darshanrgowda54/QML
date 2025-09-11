import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: mainPage
    color: "#202D36"

    signal signInButtonClicked()

    property string username: "admin"
    property string password: "admin"


    Column {
        anchors.top: parent.top
        anchors.topMargin: parent.height / 3
        anchors.fill: parent
        spacing: 40


        Rectangle {
            id: employeeText
            color: "#202D36"
            width: parent.width / 2
            height: parent.height  / 8
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                text: "Welcome Back"
                color: "#e4f7d9"
                font.bold: true
                font.pixelSize: parent.height / 2
                anchors.centerIn: parent
            }
        }


        TextField {
            id: userInputtext
            width: parent.width / 2
            height: parent.height  / 8
            anchors.horizontalCenter: parent.horizontalCenter

            placeholderText: "Username"
            font.pixelSize: userInputtext.height / 4
            color: "black"
            padding: 15

            background: Rectangle {
                color: "#E1E5EF";
                radius: 180
            }
        }

        TextField {
            id: passwordtext
            width: parent.width / 2
            height: parent.height  / 8
            anchors.horizontalCenter: parent.horizontalCenter

            placeholderText: "Password"
            font.pixelSize: passwordtext.height / 4
            color: "Black"
            padding: 15

            background: Rectangle {
                color: "#E1E5EF";
                radius: 180
            }
        }

        Button {
            id: signInButton
            text: "Log In"
            font.bold: true
            font.pixelSize: signInButton.height / 2
            width: parent.width / 2
            height: parent.height  / 8
            anchors.horizontalCenter: parent.horizontalCenter


            background: Rectangle {
                anchors.fill: parent
                radius: height / 2
                color: signInButton.pressed ? "#5A5A5A" : "Purple"
            }

            onClicked: {
                if (userInputtext.text === username && passwordtext.text === password){
                    signInButtonClicked()
                } else {
                    console.log("Invalid username or password")
                }
            }
        }
    }
}
