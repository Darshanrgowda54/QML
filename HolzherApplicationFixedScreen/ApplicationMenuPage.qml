import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Rectangle {
    id: menuLayout

    signal productionButtonClicked()
    signal setUpButtonClicked()
    signal supportButtonClicked()
    signal toolsButtonClicked()
    signal favouriteButtonClicked()


    ColumnLayout{
        anchors.fill: parent

        // ButtonGroup {
        //     id: menuGroup
        // }

        MyButton {
            id: productionButton
            text: "Production"
            // ButtonGroup.group: menuGroup

            onClicked: {
                console.log("Production Button Clicked")
                productionButtonClicked()
            }
        }

        MyButton {
            id: setUpButton
            text: "SetUp"
            // ButtonGroup.group: menuGroup

            onClicked: {
                console.log("SetUp Button Clicked")
                setUpButtonClicked()
            }
        }

        MyButton {
            id: supportButton
            text: "Support"
            // ButtonGroup.group: menuGroup

            onClicked: {
                console.log("Support Button Clicked")
                supportButtonClicked()
            }
        }


        MyButton {
            id: toolsButton
            text: "Tools"
            // ButtonGroup.group: menuGroup

            onClicked: {
                console.log("Tools Button Clicked")
                toolsButtonClicked()
            }
        }

        MyButton {
            id: favouriteButton
            text: "Favourite"
            // ButtonGroup.group: menuGroup

            onClicked: {
                console.log("Favourite Button Clicked")
                favouriteButtonClicked()
            }
        }
    }
}
