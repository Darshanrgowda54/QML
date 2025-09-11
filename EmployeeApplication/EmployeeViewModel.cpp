#include "EmployeeViewModel.h"

EmployeeViewModel::EmployeeViewModel(QObject *parent)
    : QAbstractListModel(parent)
{
    qDebug()<<Q_FUNC_INFO;
    m_employeeDataModel = new EmployeeDataModel(this);
}

EmployeeViewModel::~EmployeeViewModel()
{
    qDebug()<<Q_FUNC_INFO;
}

int EmployeeViewModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent)
    return m_employeeDataModel->getRowCount();
}

QVariant EmployeeViewModel::data(const QModelIndex &index, int role) const
{
    const Employee* employee = m_employeeDataModel->getIndexData(index.row());

    switch (role) {
    case NAME:
        return employee->getName();
    case PHONE_NUMBER:
        return employee->getPhoneNumber();
    case EMPLOYEE_ID:
        return employee->getEmployeeID();
    case EMAIL:
        return employee->getEmail();
    case JOIN_DATE:
        return employee->getJoinDate();
    case BASIC_SALARY:
        return employee->getBasicSalary();
    case VARIABLE_SALARY:
        return employee->getVariableSalary();
    case TOTAL_SALARY:
        return employee->getTotalSalary();
    default:
        return QVariant();
    }
    return QVariant();
}

QHash<int, QByteArray> EmployeeViewModel::roleNames() const
{
    QHash<int, QByteArray> roleNames;
    roleNames.insert(NAME,"name");
    roleNames.insert(EMPLOYEE_ID, "employeeID");
    roleNames.insert(PHONE_NUMBER,"phoneNumber");
    roleNames.insert(EMAIL, "email");
    roleNames.insert(JOIN_DATE, "joinDate");
    roleNames.insert(BASIC_SALARY, "basicSalary");
    roleNames.insert(VARIABLE_SALARY, "variableSalary");
    roleNames.insert(TOTAL_SALARY, "totalSalary");
    return roleNames;
}

Employee *EmployeeViewModel::getEmployeeDetails(QString name, QString id)
{
    return m_employeeDataModel->getEmployeeDetails(name,id);
}












































































// QVariantMap EmployeeViewModel::getEmployeeDetails(const QString &name, const QString &employeeID) const
// {
//     QVariantMap result;
//     for (int i = 0; i < m_employeeDataModel->getRowCount(); ++i) {
//         const Employee* emp = m_employeeDataModel->getIndexData(i);

//         if (emp->getName() == name && emp->getEmployeeID() == employeeID) {
//             result["name"] = emp->getName();
//             result["employeeID"] = emp->getEmployeeID();
//             result["phoneNumber"] = emp->getPhoneNumber();
//             result["email"] = emp->getEmail();
//             result["joinDate"] = emp->getJoinDate();
//             return result;
//         }
//     }
//     return result; //
// }
