#include "EmployeeManagement.h"

EmployeeManagement::EmployeeManagement(QObject *parent)
    : QObject{parent}
{
    qDebug()<<Q_FUNC_INFO;
    m_employeeViewModel = new EmployeeViewModel(this);
    m_employeeFilterModel = new EmployeeFilterModel(this);
    m_employeeFilterModel->setSourceModel(m_employeeViewModel);
}

EmployeeManagement::~EmployeeManagement()
{
    qDebug()<<Q_FUNC_INFO;
}

EmployeeViewModel *EmployeeManagement::getEmployeeViewModel() const
{
    return m_employeeViewModel;
}

void EmployeeManagement::setEmployeeViewModel(EmployeeViewModel *newEmployeeViewModel)
{
    if (m_employeeViewModel == newEmployeeViewModel)
        return;
    m_employeeViewModel = newEmployeeViewModel;
    emit employeeViewModelChanged();
}

EmployeeFilterModel *EmployeeManagement::getEmployeeFilterModel() const
{
    return m_employeeFilterModel;
}

void EmployeeManagement::setEmployeeFilterModel(EmployeeFilterModel *newEmployeeFilterModel)
{
    if (m_employeeFilterModel == newEmployeeFilterModel)
        return;
    m_employeeFilterModel = newEmployeeFilterModel;
    emit employeeFilterModelChanged();
}

void EmployeeManagement::submitButtonClicked(QString name, QString Id)
{
    Employee *emp = m_employeeViewModel->getEmployeeDetails(name,Id);

    if(emp == nullptr)
    {
        qDebug() << Q_FUNC_INFO << "Employee not found";
        emit errroMessage("Employee not found");
    }
    else
    {
        qDebug() << Q_FUNC_INFO << "Employee found";
        emit employeeFound(emp);
    }
}
