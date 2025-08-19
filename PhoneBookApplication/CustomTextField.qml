import QtQuick 2.15
import QtQuick.Controls

Rectangle {
    id: root
    property alias label: labelText.text
    property alias text: input.text
    property alias placeholder: input.placeholderText
    property alias inputField: input
    property alias checkValidator: input.validator

    width: parent ? parent.width : 600
    height: 80
    color: "#2C2C2C"
    radius: 10

    Text {
        id: labelText
        text: "Label"
        color: "#9B5DE5"
        height: parent.height
        verticalAlignment: Text.AlignVCenter
        anchors.left: parent.left
        anchors.leftMargin: 20
        font.bold: true
        font.pixelSize: 18
    }

    TextField {
        id: input
        color: "Black"
        leftPadding: 10
        width: 400
        height: 50
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 50

        background: Rectangle {
            color: "#B0B0B0"
            radius: 10
        }
    }
}
