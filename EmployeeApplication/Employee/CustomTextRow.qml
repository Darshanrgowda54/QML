import QtQuick
import QtQuick.Layouts

RowLayout {
    id: row
    spacing: 20
    Layout.fillWidth: true
    Layout.preferredHeight: 40

    property alias label: textLabel.text
    property alias dataInput: textInput.text

    Text {
        id: textLabel
        text: label
        font.bold: true
        color: "#FFFFFF"
        Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
        Layout.preferredWidth: parent.width * 0.2
        Layout.leftMargin: parent.width / 3
    }

    Text {
        id: textInput
        text: dataInput
        color: "#FFFFFF"
        Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
        Layout.fillWidth: true
    }
}

