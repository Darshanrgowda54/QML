import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: whatsAppPage
    width: parent.width
    height: parent.height
    color: "#30414D"

    signal callHistoryBackButtonClicked()

    Column {
        anchors.fill: parent

        CallHistoryHeader {

        }

        ListView {
            id: callHistoryListview
            width: parent.width
            height: parent.height
            model: callHistoryModel
            delegate: myComponent
            spacing: 10
            clip: true
        }
    }


    Component {
        id: myComponent

        Rectangle {
            id: background
            width: callHistoryListview.width
            height: callHistoryListview.height / 12
            color: "#55636c"
            radius: 10

            Row {
                id: rowLayout
                anchors.left: parent.left
                anchors.leftMargin: 10

                Image {
                    id: profileImage
                    source: contactImage
                    width: background.height
                    height: background.height
                    fillMode: Image.PreserveAspectFit
                }

                // Text {
                //     id: contactNameText
                //     text: contactName
                //     color: "white"
                //     font.pixelSize: background.height / 3
                //     width: callHistoryListview.width * 0.6
                //     anchors.verticalCenter: parent.verticalCenter
                //     font.bold: true
                // }

                Column {
                    id: coloumLayout
                    width: callHistoryListview.width * 0.6
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    Text {
                        id: contactNameText
                        text: contactName
                        color: "white"
                        font.pixelSize: background.height / 3
                        width: callHistoryListview.width * 0.6
                    }

                    Text {
                        id: contactNumberText
                        text: contactNumber
                        color: "white"
                        font.pixelSize: background.height / 3
                        width: callHistoryListview.width * 0.6
                    }
                }


                Column {
                    id: rightColumn
                    width: callHistoryListview.width * 0.2
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    Text {
                        id: messageTime
                        text: time
                        color: "white"
                        font.pixelSize: background.height / 4
                        horizontalAlignment: Text.AlignRight
                        width: parent.width
                    }
                }
            }
        }
    }

    Button {
        id: backFromCallHistory
        text: "Back"
        font.bold: true
        width: parent.width / 12
        height: parent.height / 12
        anchors.bottom: parent.bottom
        anchors.bottomMargin: width  / 8
        anchors.right: parent.right
        anchors.rightMargin: width  / 8

        background: Rectangle {
            radius: height / 8
            color: "Black"
        }

        onClicked: {
            callHistoryBackButtonClicked()
        }
    }
}



























































// Text {
//     id: callType
//     text: isIncoming ? "Incoming" : (isOutgoing ? "Outgoing" : "")
//     color: isIncoming ? "lightgreen" : (isOutgoing ? "lightblue" : "white")
//     font.pixelSize: background.height / 5
//     horizontalAlignment: Text.AlignRight
//     width: parent.width
// }
