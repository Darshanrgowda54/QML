// import QtQuick
// import QtQuick.Layouts

// Rectangle {
//     id: employeeDetailsDisplay
//     color: "#202D36"
//     border.color: "Black"

//     property string  employeeName: ""
//     property string  employeeId: ""
//     property string  employeeNumber: ""
//     property string  employeeEmail: ""
//     property string  employeeJoinDate: ""
//     property string  employeeBasicSalary: ""
//     property string  employeeVaraiableSalary: ""
//     property string  employeeTotalSalary: ""


//     Column{
//         id: rowLayout
//         anchors.fill: parent
//         spacing: 20
//         anchors.horizontalCenter: parent.horizontalCenter
//         anchors.top: parent.top
//         anchors.topMargin: parent.height / 5

//         Text {
//             id: employee
//             text: "EMPLOYEE DETAILS"
//             font.bold: true
//             font.pixelSize: 30
//             color: "#FFFFFF"
//             anchors.horizontalCenter: parent.horizontalCenter
//         }

//         Text {
//             id: name
//             text: "Name:     " +employeeName
//             font.bold: true
//             color: "#FFFFFF"
//         }

//         Text {
//             id: id
//             text: "ID:     " +employeeId
//             font.bold: true
//             color: "#FFFFFF"
//         }

//         Text {
//             id: number
//             text: "Number:     " +employeeNumber
//             font.bold: true
//             color: "#FFFFFF"
//         }

//         Text {
//             id: email
//             text: "Email:     " +employeeEmail
//             font.bold: true
//             color: "#FFFFFF"
//         }

//         Text {
//             id: joinDate
//             text: "Join Date:     "+employeeJoinDate
//             font.bold: true
//             color: "#FFFFFF"
//         }

//         Text {
//             id: basicSalary
//             text: "Basic Salary:     "+employeeBasicSalary
//             font.bold: true
//             color: "#FFFFFF"
//         }

//         Text {
//             id: variableSalary
//             text: "Varaiable Salaey:     "+employeeVaraiableSalary
//             font.bold: true
//             color: "#FFFFFF"
//         }

//         Text {
//             id: totalSalary
//             text: "Total Salary:     "+employeeTotalSalary
//             font.bold: true
//             color: "#FFFFFF"
//         }
//     }
// }



import QtQuick
import QtQuick.Layouts

Rectangle {
    id: employeeDetailsDisplay
    color: "#202D36"
    border.color: "White"
    radius: 10

    property string employeeName: ""
    property string employeeId: ""
    property string employeeNumber: ""
    property string employeeEmail: ""
    property string employeeJoinDate: ""
    property string employeeBasicSalary: ""
    property string employeeVaraiableSalary: ""
    property string employeeTotalSalary: ""

    // Text {
    //     id: employeeText
    //     text: "EMPLOYEE DETAILS"
    //     font.bold: true
    //     font.pixelSize: 30
    //     color: "#FFFFFF"
    //     anchors.top: parent.top
    //     anchors.topMargin: parent.height / 12
    //     anchors.horizontalCenter: parent.horizontalCenter
    // }

    ColumnLayout {
        width: parent.width
        height: parent.height * 0.60
        // anchors.top: employeeText.bottom
        anchors.top: parent.top
        anchors.topMargin: parent.height / 9
        anchors.horizontalCenter: parent.horizontalCenter

        CustomTextRow {
            label: "Name"
            dataInput: employeeName
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height / 5
        }

        CustomTextRow {
            label: "ID"
            dataInput: employeeId
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height / 5
        }

        CustomTextRow {
            label: "Number"
            dataInput: employeeNumber
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height / 5
        }

        CustomTextRow {
            label: "Email"
            dataInput: employeeEmail
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height / 5
        }

        CustomTextRow {
            label: "Join Date"
            dataInput: employeeJoinDate
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height / 5
        }

        CustomTextRow {
            label: "Basic Salary"
            dataInput: employeeBasicSalary
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height / 5
        }

        CustomTextRow {
            label: "Variable Salary"
            dataInput: employeeVaraiableSalary
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height / 5
        }

        CustomTextRow {
            label: "Total Salary"
            dataInput: employeeTotalSalary
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height / 5
        }
    }
}


