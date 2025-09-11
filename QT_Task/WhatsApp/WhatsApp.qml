import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: whatsAppPage
    width: parent.width
    height: parent.height
    color: "#30414D"

    signal whatsAppBackButtonClicked()

    Column {
        anchors.fill: parent

        WhatsAppHeader {

        }

        ListView {
            id: whatsAppListview
            width: parent.width
            height: parent.height
            model: whatsappModel
            delegate: myComponent
            spacing: 10
            clip: true
        }
    }

    Component {
        id: myComponent

        Rectangle {
            id: background
            width: whatsAppListview.width
            height: whatsAppListview.height / 12
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
                //     width: whatsAppListview.width * 0.6
                // }

                Column {
                    id: coloumLayout
                    width: whatsAppListview.width * 0.6
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2

                    Text {
                        id: contactNameText
                        text: contactName
                        color: "white"
                        font.pixelSize: background.height / 3
                        width: whatsAppListview.width * 0.6
                    }

                    Text {
                        id: messageText
                        text: contactNumber
                        color: "white"
                        font.pixelSize: background.height / 3
                        width: whatsAppListview.width * 0.6
                    }
                }


                Text {
                    id: messageTime
                    text: time
                    color: "white"
                    font.pixelSize: background.height / 4
                    width: whatsAppListview.width * 0.2
                }
            }
        }
    }

    Button {
        id: backFromWhatsApp
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
            whatsAppBackButtonClicked()
        }
    }
}






















































// Column {
//     id: coloumLayout
//     width: whatsAppListview.width * 0.4
//     anchors.verticalCenter: parent.verticalCenter
//     spacing: 2

//     Text {
//         id: contactNameText
//         text: contactName
//         color: "white"
//         font.pixelSize: background.height / 3
//         font.bold: true
//         width: whatsAppListview.width * 0.6
//     }

//     // Text {
//     //     id: contactNameText1
//     //     text: contactName
//     //     color: "white"
//     //     font.pixelSize: background.height / 3
//     //     font.bold: true
//     //     width: whatsAppListview.width * 0.6
//     // }
// }
