import QtQuick
import QtQuick.Controls

Item {

    Rectangle {
        id: _rect1
        color: "#2C2C2C"
        width: 1200
        height: 600
        anchors.fill: parent
        //anchors.centerIn: parent

        Text {
            id: _text
            color: "White"
            text: qsTr("Create Account")
            font.bold: true
            font.pixelSize: 80
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: parent.height * 0.2
        }

        Column {
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: _text.bottom
            anchors.topMargin: 30

            TextField {
                id: nameField
                width: 400
                height: 50
                placeholderText: "Full Name"
                placeholderTextColor: "black"
                font.pixelSize: 18
                color: "black"
                padding: 15

                background: Rectangle {
                    color: "lightgrey";
                    radius: 180
                }
            }

            TextField {
                id: signupUser
                width: 400
                height: 50
                placeholderText: "Username"
                placeholderTextColor: "black"
                font.pixelSize: 18
                color: "black"
                padding: 15

                background: Rectangle {
                    color: "lightgrey";
                    radius: 180
                }
            }

            TextField {
                id: signupPassword
                width: 400
                height: 50
                placeholderText: "Password"
                echoMode: TextInput.Password
                placeholderTextColor: "black"
                font.pixelSize: 18
                color: "black"
                padding: 15

                background: Rectangle {
                    color: "lightgrey";
                    radius: 180
                }
            }

            TextField {
                id: mobileField
                width: 400
                height: 50
                placeholderText: "Mobile Number"
                placeholderTextColor: "black"
                font.pixelSize: 18
                color: "black"
                padding: 15

                background: Rectangle {
                    color: "lightgrey";
                    radius: 180
                }
            }

            Button {
                id: _create_Account
                text: "Create Account"
                width: 400
                height: 50
                font.pixelSize: 20

                background: Rectangle {
                    // color: "Purple";
                    color: _create_Account.pressed ? "#5A5A5A" : "Purple"
                    radius: 180
                }

                onClicked: {
                    if (loginBackend.accountCreated(signupUser.text, signupPassword.text, nameField.text, mobileField.text)) {
                        console.log("Signup successful")
                    } else {
                        console.log("Signup failed")
                    }
                }
            }

            Button {
                id: _back_Button
                text: "Back to Login"
                width: 400
                height: 50
                font.pixelSize: 20

                background: Rectangle {
                    // color: "#2C2C2C"
                    color: _back_Button.pressed ? "#5A5A5A" : "#2C2C2C"
                    border.color: "White"
                    border.width: 2
                    radius: 180
                }

                onClicked: {
                    stackView.pop()
                }
            }
        }
    }
}
