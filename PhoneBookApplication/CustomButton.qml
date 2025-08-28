import QtQuick 2.15
import QtQuick.Controls


Rectangle {
    id: myButton
    property alias text: buttonText.text
    property color normalColor: "#BB86FC"
    property color pressedColor: "#9B5DE5"
    property color textColor: "Black"
    signal clicked()

    width: 100
    height: 40
    radius: height / 2

    color: mouseArea.pressed ? pressedColor : normalColor

    Text {
        id: buttonText
        text: "Button"
        anchors.centerIn: parent
        font.bold: true
        font.pixelSize: 20
        color: myButton.textColor
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: myButton.clicked()
    }
}
