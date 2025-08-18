import QtQuick
import QtQuick.Controls

Item {
    signal navigateToSignup()
    signal navigatetoAppCenter()

    Rectangle {
        id: _rect1
        color: "#2C2C2C"
        width: 1200
        height: 600
        anchors.fill: parent

        Text {
            id: _text
            color: "White"
            text: qsTr("Welcome Back")
            font.bold: true
            font.pixelSize: 80
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: parent.height * 0.2
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
            anchors.topMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter

            background: Rectangle {
                color: "lightgrey";
                radius: 180
            }
        }

        TextField {
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
            anchors.horizontalCenter: parent.horizontalCenter

            background: Rectangle {
                color: "lightgrey";
                radius: 180
            }
        }

        Button {
            id: _forget_Password
            text: "Forget Password"
            font.pixelSize: 20
            anchors.top: _Password.bottom
            anchors.topMargin: 20
            anchors.right: _Password.right

            background: Rectangle {
                color: "transparent"
            }

            contentItem: Text {
                text: _forget_Password.text
                color: _forget_Password.pressed ? "#5A5A5A" : "lightgrey"
                font.pixelSize: 16
                font.underline: true
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            onClicked: {
                console.log(_forget_Password.text,"Clicked")
            }
        }

        Button {
            id: _Login
            width: 400
            height: 50
            text: "Login"
            font.pixelSize: 20
            anchors.top: _forget_Password.bottom
            anchors.topMargin: 30
            anchors.horizontalCenter: parent.horizontalCenter

            background: Rectangle {
                //color: "Purple";
                color: _Login.pressed ? "#5A5A5A" : "Purple"
                radius: 180
            }

            onClicked: {
                let username = _userInput.text
                let password = _Password.text

                if (loginBackend.checkLoginCredentails(username, password)) {
                    console.log("Login successful",navigatetoAppCenter())
                } else {
                    console.log("Invalid credentials")
                }
            }
        }

        Button {
            id: _Sign_up
            width: 400
            height: 50
            text: "Sign up for an account"
            font.pixelSize: 20
            anchors.top: _Login.bottom
            anchors.topMargin: 30
            anchors.horizontalCenter: parent.horizontalCenter

            background: Rectangle {
                // color: "#2C2C2C"
                color: _Sign_up.pressed ? "#5A5A5A" : "#2C2C2C"
                border.color: "White"
                border.width: 2
                radius: 180
            }

            onClicked: navigateToSignup()
        }
    }
}
