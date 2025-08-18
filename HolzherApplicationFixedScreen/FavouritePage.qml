import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

GridLayout {
    columns: 3

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
}



































// import QtQuick 2.15
// import QtQuick.Layouts
// import QtQuick.Controls

// Rectangle {
//     id: favouritePage
//     radius: 10

//     GridLayout {
//         id: rowLayoutProductionPage
//         anchors.fill: parent
//         columns: 3

//         Rectangle {
//             id: ncCutting
//             color: "Orange"
//             Layout.preferredWidth: parent.width * 0.15
//             Layout.preferredHeight: parent.height * 0.15
//             radius: 10
//         }

//         Rectangle {
//             id: directCutting
//             color: "Orange"
//             Layout.preferredWidth: parent.width * 0.15
//             Layout.preferredHeight: parent.height * 0.15
//             radius: 10
//         }

//         Rectangle {
//             id: easyCutting
//             color: "Orange"
//             Layout.preferredWidth: parent.width * 0.15
//             Layout.preferredHeight: parent.height * 0.15
//             radius: 10
//         }

//         Rectangle {
//             id: optiCutting
//             color: "Orange"
//             Layout.preferredWidth: parent.width * 0.15
//             Layout.preferredHeight: parent.height * 0.15
//             radius: 10
//         }

//         Rectangle {
//             id: jobManagement
//             color: "Orange"
//             Layout.preferredWidth: parent.width * 0.15
//             Layout.preferredHeight: parent.height * 0.15
//             radius: 10
//         }
//     }
// }
