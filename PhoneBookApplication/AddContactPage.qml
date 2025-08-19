import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Dialogs

Rectangle {
    color: "#121212"

    signal backButtonClicked()
    signal saveButtonClicked()

    CustomButton {
        id: backButton
        text: "Back"

        anchors.top: parent.top
        anchors.topMargin: 40
        anchors.left: parent.left
        anchors.leftMargin: 30

        onClicked: {
            backButtonClicked()
            console.log("Back Button Clicked")
        }
    }

    CustomButton {
        id: saveButton
        text: "Save"

        anchors.top: parent.top
        anchors.topMargin: 40
        anchors.right: parent.right
        anchors.rightMargin: 30

        onClicked: {
            // ContactDataModel.addContact(
            //             nameField.text,
            //             numberField.text,
            //             emailField.text,
            //             profileImg.source
            //             )
            if (nameField.text.trim() === "" ||
                numberField.text.trim() === "" ||
                emailField.text.trim() === "") {
                console.warn("All fields are required!");
                return;
            }

            ContactDataModel.addContact(
                nameField.text,
                numberField.text,
                emailField.text,
                profileImg.source
            )
            saveButtonClicked()
            console.log("Save Button Clicked")
        }
    }

    Text {
        id: addPhoneNumberText
        text: "Add Phone Number"
        font.bold: true
        font.pixelSize: 24
        color: "#9B5DE5"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: saveButton.bottom
        anchors.topMargin: 40
    }

    Rectangle {
        id: profileRect
        color: "#121212"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: addPhoneNumberText.bottom
        anchors.topMargin: 10

        // Rectangle {
        //     id: profileImage
        //     radius: 360
        //     width: 200
        //     height: 200
        //     anchors.horizontalCenter: parent.horizontalCenter
        //     anchors.top: profileRect.top
        //     anchors.topMargin: 50

        //     Image {
        //         id: profileqrc
        //         source: ""
        //         anchors.centerIn: parent
        //     }
        // }

        Rectangle {
            id: profileImage
            radius: 360
            width: 200
            height: 200
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: profileRect.top
            anchors.topMargin: 50
            border.width: 4
            border.color: "#9B5DE5"

            property bool pressed: false
            color: pressed ? "lightgrey" : "#121212"

            Image {
                id: rectBackground
                width: 100
                height: 100
                anchors.centerIn: parent
                source: "qrc:/Image/AddProfile.png"
                fillMode: Image.PreserveAspectCrop
            }

            Image {
                id: profileImg
                anchors.fill: parent
                source: ""
                fillMode: Image.PreserveAspectCrop
            }

            MouseArea {
                anchors.fill: parent
                onPressed: profileImage.pressed = true
                onReleased: profileImage.pressed = false
                onClicked: fileDialog.open()
            }

            FileDialog {
                id: fileDialog
                title: "Select Profile Image"
                onAccepted: profileImg.source = selectedFile
            }
        }

        Column{
            id: contactRowLayout
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: profileImage.bottom
            anchors.topMargin: 80
            spacing: 10

            CustomTextField {
                id: nameField
                label: "Name"
                placeholder: "Enter Name"

                checkValidator: RegularExpressionValidator {
                    regularExpression: /^[a-zA-Z ]+$/
                }
            }

            CustomTextField {
                id: numberField
                label: "Number"
                placeholder: "Enter Number"

                checkValidator: RegularExpressionValidator {
                    regularExpression: /^[0-9]{10}+$/
                }
            }

            CustomTextField {
                id: emailField
                label: "Email"
                placeholder: "Enter email"

                checkValidator: RegularExpressionValidator {
                    regularExpression: /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
                }
            }
        }
    }
}
