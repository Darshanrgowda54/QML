import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

GridLayout {
    columns: 2

    MyRectangle {
        id: referencing
        text: "Maintence Schedule"

        onClicked: {
            console.log("Maintence Schedule Button Clicked")
        }
    }

    MyRectangle {
        id: sawBlade
        text: "Data Backup"

        onClicked: {
            console.log("Data Backup Button Clicked")
        }
    }

    MyRectangle {
        id: sawManagement
        text: "Remote Support"

        onClicked: {
            console.log("Remote Support Button Clicked")
        }
    }

    MyRectangle {
        id: measurementDialog
        text: "Status Display"

        onClicked: {
            console.log("Status Display Button Clicked")
        }
    }
}
