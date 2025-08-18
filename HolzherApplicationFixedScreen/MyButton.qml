import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Button {
    id: myButton

    property color normalColor: "#4D4D4D"
    property color pressedColor: "#A6A6A6"
    property int radiusValue: 10
    font.bold: true
    // checkable: true

    Layout.alignment: Qt.AlignCenter
    Layout.preferredWidth: parent.width * 0.6
    Layout.preferredHeight: parent.height * 0.1

    background: Rectangle {
        anchors.fill: parent
        radius: myButton.radiusValue
        color: myButton.pressed ? myButton.pressedColor : myButton.normalColor
    }
}
