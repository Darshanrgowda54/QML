import QtQuick
import QtQuick.Controls
import QtQuick.Layouts


Rectangle {
    id: menuBackgroud
    width: parent.width
    height: parent.height

    signal whatsAppButtonClicked()
    signal phoneBookButtonClicked()
    signal callHistoryButtonClicked()

    Column
    {
        anchors.top: parent.top
        anchors.topMargin: parent.height / 4
        anchors.fill: parent
        spacing: 40

        Button {
            id: whatsAppButton
            text: "WhatsApp"
            font.bold: true
            width: parent.width / 2
            height: parent.height  / 8
            anchors.horizontalCenter: parent.horizontalCenter


            background: Rectangle {
                anchors.fill: parent
                radius: height / 2
                color: whatsAppButton.pressed ? "#202D36" : "#02B099"
            }

            onClicked: {
                whatsAppButtonClicked()
                console.log("WhatsApp Button Clicked")
            }
        }

        Button {
            id: phoneBookButton
            text: "Phone Book"
            font.bold: true
            width: parent.width / 2
            height: parent.height  / 8
            anchors.horizontalCenter: parent.horizontalCenter


            background: Rectangle {
                anchors.fill: parent
                radius: height / 2
                color: phoneBookButton.pressed ? "#202D36" : "#02B099"
            }

            onClicked: {
                phoneBookButtonClicked()
                console.log("Phone Book Button Clicked")
            }
        }


        Button {
            id: callHistoryButton
            text: "Call History"
            font.bold: true
            width: parent.width / 2
            height: parent.height  / 8
            anchors.horizontalCenter: parent.horizontalCenter


            background: Rectangle {
                anchors.fill: parent
                radius: height / 2
                color: callHistoryButton.pressed ? "#202D36" : "#02B099"
            }

            onClicked: {
                callHistoryButtonClicked()
                console.log("Call History Button Clicked")
            }
        }
    }
}
