#include "Employee.h"
#include <QDebug>

Employee::Employee(QObject *parent)
    : QObject{parent}
{
    qDebug()<<Q_FUNC_INFO;
}

Employee::~Employee()
{
    qDebug()<<Q_FUNC_INFO;
}

QString Employee::getName() const
{
    return m_name;
}

void Employee::setName(const QString &newName)
{
    if (m_name == newName)
        return;
    m_name = newName;
    emit nameChanged();
    qDebug()<<"Name: " <<m_name;
}

QString Employee::getPhoneNumber() const
{
    return m_phoneNumber;
}

void Employee::setPhoneNumber(const QString &newPhoneNumber)
{
    if (m_phoneNumber == newPhoneNumber)
        return;
    m_phoneNumber = newPhoneNumber;
    emit phoneNumberChanged();
}

QString Employee::getEmployeeID() const
{
    return m_EmployeeID;
}

void Employee::setEmployeeID(const QString &newEmployeeeID)
{
    if (m_EmployeeID == newEmployeeeID)
        return;
    m_EmployeeID = newEmployeeeID;
    emit EmployeeIDChanged();
    qDebug()<<"ID: " <<m_EmployeeID;
}

QString Employee::getEmail() const
{
    return m_email;
}

void Employee::setEmail(const QString &newEmail)
{
    if (m_email == newEmail)
        return;
    m_email = newEmail;
    emit emailChanged();
}

QString Employee::getJoinDate() const
{
    return m_joinDate;
}

void Employee::setJoinDate(const QString &newJoinDate)
{
    if (m_joinDate == newJoinDate)
        return;
    m_joinDate = newJoinDate;
    emit joinDateChanged();
}

float Employee::getBasicSalary() const
{
    return m_basicSalary;
}

void Employee::setBasicSalary(const float &newBasicSalary)
{
    if (m_basicSalary == newBasicSalary)
        return;
    m_basicSalary = newBasicSalary;
    emit basicSalaryChanged();
}

float Employee::getVariableSalary() const
{
    return m_variableSalary;
}

void Employee::setVariableSalary(const float &newVariableSalary)
{
    if (m_variableSalary == newVariableSalary)
        return;
    m_variableSalary = newVariableSalary;
    emit variableSalaryChanged();
}

float Employee::getTotalSalary() const
{
    return m_totalSalary;
}

void Employee::setTotalSalary(const float &newTotalSalary)
{
    if (m_totalSalary == newTotalSalary)
        return;
    m_totalSalary = newTotalSalary;
    emit totalSalaryChanged();
}
