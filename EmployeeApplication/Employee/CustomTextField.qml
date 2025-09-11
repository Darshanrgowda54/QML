import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: customtextfield
    color: "#202D36"
    radius: 10

    property alias label: textlabel.text
    property string empData: ""
    property string role: ""

    RowLayout {
        id: rowLayout
        anchors.fill: parent

        Text {
            id: textlabel
            text: "label"
            color: "White"
            font.bold: true
            // font.pixelSize: parent.height * 0.4

            Layout.leftMargin: parent.width * 0.02
            Layout.preferredWidth: parent.width * 0.3
            Layout.preferredHeight: parent.height * 0.4
        }

        TextField {
            id: searchField
            color: "Black"
            // font.pixelSize: height * 0.4

            Layout.preferredWidth: parent.width * 0.6
            Layout.preferredHeight: parent.height * 0.8

            background: Rectangle {
                anchors.fill: parent
                radius: 10
                color: "#E1E5EF"
            }

            onTextChanged: {
                suggestionPopup.open()
            }
        }
    }


    Popup {
        id: suggestionPopup
        x: searchField.x
        y: searchField.y + searchField.height
        width: searchField.width
        height: 100

        background: Rectangle {
            anchors.fill: parent
            color: "#E1E5EF"
            radius: 5
        }

        ListView {
            id: listview
            anchors.fill: parent
            clip: true
            model: EmployeeManagement.employeeViewModel
            delegate: myComponent
            spacing: 5
        }

        Component {
            id: myComponent

            Rectangle {
                width: listview.width
                height: 40
                color: "#02B099"
                border.color: "Black"
                radius: height / 8

                Text {
                    text: model[customtextfield.role]
                    color: "Black"
                    font.bold: true
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        searchField.text = model[customtextfield.role]
                        customtextfield.empData = model[customtextfield.role]
                        suggestionPopup.close()
                    }
                }
            }
        }
    }
}

