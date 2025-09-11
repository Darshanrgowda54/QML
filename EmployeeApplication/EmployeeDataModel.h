#ifndef EMPLOYEEDATAMODEL_H
#define EMPLOYEEDATAMODEL_H

#include "Employee.h"
#include <QObject>

class EmployeeDataModel : public QObject
{
    Q_OBJECT
public:
    explicit EmployeeDataModel(QObject *parent = nullptr);
    ~EmployeeDataModel();

    int getRowCount();
    Employee* getIndexData(int index);

    void addEmployee(Employee *employee);
    Employee* getEmployeeDetails(QString name, QString id);

private:
    QList<Employee* > m_employeeList;
};

#endif // EMPLOYEEDATAMODEL_H
