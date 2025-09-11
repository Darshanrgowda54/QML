#ifndef EMPLOYEEVIEWMODEL_H
#define EMPLOYEEVIEWMODEL_H

#include <QAbstractListModel>
#include <QList>
#include <QVariant>
#include "EmployeeDataModel.h"

class EmployeeViewModel : public QAbstractListModel
{
    Q_OBJECT

    enum Roles {
        NAME = 1,
        PHONE_NUMBER,
        EMPLOYEE_ID,
        EMAIL,
        JOIN_DATE,
        BASIC_SALARY,
        VARIABLE_SALARY,
        TOTAL_SALARY
    };

public:
    explicit EmployeeViewModel(QObject *parent = nullptr);
    ~EmployeeViewModel();

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;

    Employee* getEmployeeDetails(QString name, QString id);

private:
    EmployeeDataModel *m_employeeDataModel;
};

#endif // EMPLOYEEVIEWMODEL_H
