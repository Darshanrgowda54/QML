import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Button {
    id: myRectangle

    property color normalColor: "#E77A1D"
    property color pressedColor: "#A6A6A6"
    property int radiusValue: 10
    font.bold: true

    Layout.alignment: Qt.AlignCenter
    // Layout.alignment:  Qt.AlignHCenter | Qt.AlignVCenter
    Layout.preferredWidth: parent.width * 0.25
    Layout.preferredHeight: parent.height * 0.25

    background: Rectangle {
        anchors.fill: parent
        radius: myRectangle.radiusValue
        color: myRectangle.pressed ? myRectangle.pressedColor : myRectangle.normalColor
    }
}




// import QtQuick
// import QtQuick.Controls
// import QtQuick.Layouts


// RowLayout{
//     id: rowLayoutButton

//     property alias textName: buttonText.text
//     // Layout.alignment: Qt.AlignCenter
//     // Layout.fillHeight: true
//     // Layout.fillWidth: true
//     // Layout.preferredWidth: parent.width * 0.25
//     // Layout.preferredHeight: parent.height * 0.25

//     Button {
//         id: myRectangle

//         property color normalColor: "#E77A1D"
//         property color pressedColor: "#A6A6A6"
//         property int radiusValue: 10
//         font.bold: true

//         Layout.alignment: Qt.AlignCenter
//         Layout.preferredWidth: parent.width * 0.25
//         Layout.preferredHeight: parent.height * 0.25

//         background: Rectangle {
//             anchors.fill: parent
//             radius: myRectangle.radiusValue
//             color: myRectangle.pressed ? myRectangle.pressedColor : myRectangle.normalColor
//             border.color: "Black"
//         }
//     }

//     Text{
//         id: buttonText
//         text: buttonText.textName
//         color: "Black"
//         font.bold: true
//     }
// }
