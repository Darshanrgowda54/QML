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
            text: qsTr("Welcome Back...")
            font.pixelSize: 40
            anchors.top: parent.top
            anchors.topMargin: 100
            anchors.right: parent.right
            anchors.rightMargin: 100
        }

        Rectangle{
            id: _rect2
            color: "lightgrey"
            border.color: "lightgrey"
            width: 400
            height: 50
            radius: 180
            anchors.top: _text.bottom
            anchors.topMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 50
        }

        Rectangle{
            id: _rect3
            color: "lightgrey"
            border.color: "lightgrey"
            width: 400
            height: 50
            radius: 180
            anchors.top: _rect2.bottom
            anchors.topMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 50
        }

        Text {
            id: _forget_Password
            text: qsTr("Forget Password")
            color: "lightgrey"
            anchors.top: _rect3.bottom
            anchors.topMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 50
        }

        Rectangle{
            id: _rect4
            color: "purple"
            width: 400
            height: 50
            radius: 180
            anchors.top: _forget_Password.bottom
            anchors.topMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 50

            Text {
                id: _login
                text: qsTr("Login")
                color: "White"
                font.pixelSize: 18
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: _rect5
            color: "#2C2C2C"
            border.color: "White"
            width: 400
            height: 50
            radius: 180
            anchors.top: _rect4.bottom
            anchors.topMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 50

            Text {
                id: _Sign_up
                text: qsTr("Sign up for an account")
                color: "White"
                font.pixelSize: 18
                anchors.centerIn: parent
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
