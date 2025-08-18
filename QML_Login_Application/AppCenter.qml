import QtQuick
import QtQuick.Controls

Item {

    Rectangle{
        id: _ShoppingPage
        color: "#2C2C2C"
        anchors.fill: parent

        Rectangle {
            id: _leftRectangle1
            width: parent.width / 8
            height: parent.height
            anchors.left: parent.left
            color: "#2C2C2C"
            border.color: "black"
            bottomRightRadius: 5
            topRightRadius: 5

            Text {
                id: _AppCenter
                text: qsTr("App Center")
                font.bold: true
                font.pixelSize: 18
                color: "White"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 30
            }


            Column{
                spacing: 30
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: _AppCenter.top
                anchors.topMargin: 50

                Button{
                    id: _Explore
                    text: qsTr("Explore")
                    font.pixelSize: 18
                    width: 200
                    height: 40

                    Text {
                        color: "White"
                        anchors.centerIn: parent
                    }

                    background: Rectangle{
                        anchors.fill: parent
                        radius: 5
                        border.color: "black"
                        color: _Explore.pressed ? "#5A5A5A" : "#2C2C2C"
                    }

                    onClicked: {
                        console.log("Clicked", text)
                    }
                }

                Button{
                    id: _Featured
                    text: qsTr("Featured")
                    font.pixelSize: 18
                    width: 200
                    height: 40

                    Text {
                        color: "White"
                        anchors.centerIn: parent
                    }

                    background: Rectangle{
                        anchors.fill: parent
                        color: _Featured.pressed ? "#5A5A5A" : "#2C2C2C"
                        radius: 5
                        border.color: "black"
                    }

                    onClicked: {
                        console.log("Clicked",text)
                    }
                }

                Button{
                    id: _productivity
                    text: qsTr("Productivity")
                    font.pixelSize: 18
                    width: 200
                    height: 40

                    Text {
                        color: "White"
                        anchors.centerIn: parent
                    }

                    background: Rectangle{
                        anchors.fill: parent
                        color: _productivity.pressed ? "#5A5A5A" : "#2C2C2C"
                        radius: 5
                        border.color: "black"
                    }

                    onClicked: {
                        console.log("Clicked",text)
                    }
                }

                Button{
                    id: _development
                    text: qsTr("Development")
                    font.pixelSize: 18
                    width: 200
                    height: 40

                    Text {
                        color: "White"
                        anchors.centerIn: parent
                    }

                    background: Rectangle{
                        anchors.fill: parent
                        color: _development.pressed ? "#5A5A5A" : "#2C2C2C"
                        radius: 5
                        border.color: "black"
                    }

                    onClicked: {
                        console.log("Clicked",text)
                    }
                }

                Button{
                    id: _games
                    text: qsTr("Games")
                    font.pixelSize: 18
                    width: 200
                    height: 40

                    Text {
                        color: "White"
                        anchors.centerIn: parent
                    }

                    background: Rectangle{
                        anchors.fill: parent
                        color: _games.pressed ? "#5A5A5A" : "#2C2C2C"
                        radius: 5
                        border.color: "black"
                    }

                    onClicked: {
                        console.log("Clicked",text)
                    }
                }
            }
        }
    }
}
