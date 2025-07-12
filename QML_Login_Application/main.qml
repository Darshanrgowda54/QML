import QtQuick
import QtQuick.Controls

Window {
    id: _mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Login Application")


    Rectangle{
        id: _rect1
        color: "#2C2C2C"
        width: 1200
        height: 600
        anchors.centerIn: parent

        Text {
            id: _text
            color: "White"
            text: qsTr("Welcome Back")
            font.pixelSize: 40
            anchors.top: parent.top
            anchors.topMargin: 100
            anchors.right: parent.right
            anchors.rightMargin: 100
        }

        TextField {
            id: _userInput
            width: 400
            height: 50
            placeholderText: "Username"
            placeholderTextColor: "black"
            font.pixelSize: 18
            color: "black"

            padding: 15
            anchors.top: _text.bottom
            anchors.topMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 50

            background: Rectangle {
                color: "lightgrey"
                radius: 180
            }
        }

        TextField{
            id: _Password
            width: 400
            height: 50
            placeholderText: "Password"
            placeholderTextColor: "black"
            font.pixelSize: 18
            color: "Black"

            padding: 15
            anchors.top: _userInput.bottom
            anchors.topMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 50

            background: Rectangle {
                color: "lightgrey"
                radius: 180
            }
        }

        Button {
            id: _forget_Password
            text: "Forget Password"
            font.pixelSize: 20
            anchors.top: _Password.bottom
            anchors.topMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 50

            background: Rectangle {
                color: "transparent"
            }

            contentItem: Text {
                text: qsTr("Forget Password")
                color: "lightgrey"
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
            }

            onClicked: {
                console.log("Clicked",text)
            }
        }

        Button{
            id: _Login
            width: 400
            height: 50
            text: "Login"
            font.pixelSize: 20
            anchors.top: _forget_Password.bottom
            anchors.topMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 50

            background: Rectangle{
                color: "Purple"
                radius: 180
            }

            onClicked: {
                let username = _userInput.text
                let password = _Password.text

                if (loginBackend.checkLoginCredentails(username, password)) {
                    console.log("Login successful")
                } else {
                    console.log("Invalid credentials")
                }
            }
        }

        Button{
            id: _Sign_up
            width: 400
            height: 50
            anchors.top: _Login.bottom
            anchors.topMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 50

            background: Rectangle {
                color: "#2C2C2C"
                border.color: "White"
                border.width: 2
                radius: 180
            }

            text: "Sign up for an account"
            font.pixelSize: 20

            onClicked: {
                console.log("Clicked",text)
            }
        }

        Image {
            id: _watch
            source: "file:///home/darshan-gowda/Pictures/Screenshots/watch.png"
            fillMode: Image.PreserveAspectFit
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.horizontalCenter
        }

    }
}
