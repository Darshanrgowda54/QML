import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: employeeMenuPage
    color: "#202D36"
    anchors.fill: parent

    Rectangle {
        id: employeeDetails
        color: "#202D36"
        width: parent.width
        height: parent.height / 3

        ColumnLayout {
            id: background
            anchors.fill: parent
            anchors.topMargin: 20
            spacing: 15

            CustomTextField {
                id: employeeName
                label: "Name "
                role: "name"
                Layout.preferredWidth: parent.width
                Layout.preferredHeight: parent.height / 4.5
            }

            CustomTextField {
                id: employeeID
                label: "Employee ID"
                role: "employeeID"
                Layout.preferredWidth: parent.width
                Layout.preferredHeight: parent.height / 4.5
            }

            Button {
                id: submitbtn
                Layout.preferredWidth: parent.width / 5
                Layout.preferredHeight: parent.height / 5
                Layout.alignment: Qt.AlignHCenter
                text: "Submit"
                font.bold: true
                font.pixelSize: Layout.preferredHeight / 2

                background: Rectangle {
                    anchors.fill: parent
                    radius: 10
                    color: submitbtn.pressed ? "#97dfd5" : "#2dbdaa"
                }

                onClicked: {
                    console.log("Submit Button Clicked")
                    EmployeeManagement.submitButtonClicked(employeeName.empData, employeeID.empData)
                    employeeDetailsPage.visible = true
                }
            }
        }
    }

    EmployeeDetailsPage {
        id :employeeDetailsPage
        anchors.top: employeeDetails.bottom
        width: parent.width
        height: parent.height - employeeDetails.height
        visible: false
    }

    Connections{
        target: EmployeeManagement

        function onEmployeeFound(emp) {
            employeeDetailsPage.employeeName = emp.name
            employeeDetailsPage.employeeId = emp.phoneNumber
            employeeDetailsPage.employeeNumber = emp.employeeID
            employeeDetailsPage.employeeEmail = emp.email
            employeeDetailsPage.employeeJoinDate = emp.joinDate
            employeeDetailsPage.employeeBasicSalary = emp.basicSalary
            employeeDetailsPage.employeeVaraiableSalary = emp.variableSalary
            employeeDetailsPage.employeeTotalSalary = emp.totalSalary
        }
    }
}
