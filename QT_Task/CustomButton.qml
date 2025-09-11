import QtQuick
import QtQuick.Controls

Button {
    id: button
    property alias textInput: label.text
    signal clickedSignal

    font.bold: true
    width: parent.width / 2
    height: parent.height  / 8
    anchors.horizontalCenter: parent.horizontalCenter

    background: Rectangle {
        anchors.fill: parent
        radius: height / 2
        color: button.pressed ? "#202D36" : "#02B099"
    }

    Text {
        id: label
        anchors.centerIn: parent
        text: button.text
        color: "white"
        font.bold: true
    }

    onClicked: {
        clickedSignal()
    }
}
