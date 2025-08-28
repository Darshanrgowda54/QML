import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: mainPage
    width: parent.width
    height: parent.height
    color: "#30414D"

    Column {
        anchors.fill: parent

        WhatsAppHeader {

        }

        ListView {
            id: listview
            width: parent.width
            height: parent.height
            model: ContactDataModel
            delegate: myComponent
            spacing: 10
            clip: true
        }
    }

    Component {
        id: myComponent

        Rectangle {
            id: background
            width: listview.width
            height: listview.height / 12
            radius: 10
            color: "#55636c"

            Row {
                // spacing: 60
                id: rowLayout
                anchors.left: parent.left
                anchors.leftMargin: 10

                Image {
                    id: profileImage
                    source: imagePath
                    width: background.height
                    height: background.height
                    // fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: contactName
                    text: name
                    color: "white"
                    font.pixelSize: background.height / 3
                    font.bold: true
                    width: listview.width * 0.6
                }

                Text {
                    id: messageTime
                    text: Qt.formatTime(new Date(), "hh:mm AP")
                    color: "white"
                    font.pixelSize: background.height / 4
                    // anchors.verticalCenter: parent.verticalCenter
                    // horizontalAlignment: Text.AlignRight
                    width: listview.width * 0.2
                }

                // Timer to update the time every minute
                Timer {
                    interval: 60000  // 1 minute
                    running: true
                    repeat: true
                    onTriggered: {
                        messageTime.text = Qt.formatTime(new Date(), "hh:mm AP")
                    }
                }
            }
        }
    }

    WhatsAppFotter {

    }
}
