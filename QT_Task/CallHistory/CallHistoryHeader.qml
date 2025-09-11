import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: callHistoryHeaderPage
    width: parent.width
    height: parent.height / 6
    color: "#30414D"

    Row {
        id: callHistoryRowLayout
        anchors.top: parent.top
        anchors.topMargin: parent.height / 8
        width: parent.width
        height: parent.height / 3

        Text {
            id: whatsText
            text: "Contacts History"
            color: "#e4f7d9"
            font.bold: true
            font.pixelSize: callHistoryHeaderPage.height / 4
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width / 2
        }
    }

    TextField {
        id: search
        anchors.top: callHistoryRowLayout.bottom
       anchors.topMargin: parent.height / 8
        width: parent.width
        height: parent.height / 3
        leftPadding: 20
        placeholderText: "Search"
        font.pixelSize: height / 2

        background: Rectangle {
            anchors.fill: parent
            radius: height / 2
            color: "#a4a9ad"
        }
    }
}
