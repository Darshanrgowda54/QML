import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

GridLayout {
    columns: 3
    rowSpacing: 10
    columnSpacing: 10

    MyRectangle {
        id: ncCuttting
        text: "Nc Cutting"

        onClicked: {
            console.log("Nc Cutting Button Clicked")
        }
    }

    MyRectangle {
        id: directCutting
        text: "Direct Cutting"

        onClicked: {
            console.log("Direct Cutting Button Clicked")
        }
    }

    MyRectangle {
        id: easyCutting
        text: "Easy Cutting"

        onClicked: {
            console.log("Easy Cutting Button Clicked")
        }
    }

    MyRectangle {
        id: optiCutting
        text: "Opti Cutting"

        onClicked: {
            console.log("Opti Cutting Button Clicked")
        }
    }

    MyRectangle {
        id: jobManagement
        text: "Job Management"

        onClicked: {
            console.log("Job Cutting Button Clicked")
        }
    }

}
