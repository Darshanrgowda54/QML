import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

GridLayout {
    columns: 2

    MyRectangle {
        id: referencing
        text: "Calculator"

        onClicked: {
            console.log("Calculator Button Clicked")
        }
    }

    MyRectangle {
        id: sawBlade
        text: "Editor"

        onClicked: {
            console.log("Editor Button Clicked")
        }
    }

    MyRectangle {
        id: sawManagement
        text: "Manual"

        onClicked: {
            console.log("Manual Button Clicked")
        }
    }

    MyRectangle {
        id: measurementDialog
        text: "Circuit Diagram"

        onClicked: {
            console.log("Circuit Diagram Button Clicked")
        }
    }
}
