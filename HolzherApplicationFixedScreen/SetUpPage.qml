import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

GridLayout {
    columns: 3

    MyRectangle {
        id: referencing
        text: "Referencing"

        onClicked: {
            console.log("Referencing Button Clicked")
        }
    }

    MyRectangle {
        id: sawBlade
        text: "Saw Blade"

        onClicked: {
            console.log("Saw Blade Button Clicked")
        }
    }

    MyRectangle {
        id: sawManagement
        text: "Saw Management"

        onClicked: {
            console.log("Saw Management Button Clicked")
        }
    }

    MyRectangle {
        id: measurementDialog
        text: "Measurement Dialog"

        onClicked: {
            console.log("Measurement Dialog Button Clicked")
        }
    }

    MyRectangle {
        id: handStock
        text: "Hand Stock"

        onClicked: {
            console.log("Hand Stock Button Clicked")
        }
    }
}
