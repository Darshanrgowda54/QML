#ifndef EMPLOYEEMANAGEMENT_H
#define EMPLOYEEMANAGEMENT_H

#include <QObject>
#include "EmployeeViewModel.h"
#include "EmployeeFilterModel.h"

class EmployeeManagement : public QObject
{
    Q_OBJECT

    Q_PROPERTY(EmployeeViewModel *employeeViewModel READ getEmployeeViewModel WRITE setEmployeeViewModel NOTIFY employeeViewModelChanged FINAL)
    Q_PROPERTY(EmployeeFilterModel *employeeFilterModel READ getEmployeeFilterModel WRITE setEmployeeFilterModel NOTIFY employeeFilterModelChanged FINAL)

public:
    explicit EmployeeManagement(QObject *parent = nullptr);
    ~EmployeeManagement();

    EmployeeViewModel *getEmployeeViewModel() const;
    void setEmployeeViewModel(EmployeeViewModel *newEmployeeViewModel);

    EmployeeFilterModel *getEmployeeFilterModel() const;
    void setEmployeeFilterModel(EmployeeFilterModel *newEmployeeFilterModel);

    Q_INVOKABLE void submitButtonClicked(QString name , QString Id);

signals:
    void employeeFound(Employee * emp);
    void errroMessage(QString message);
    void employeeViewModelChanged();
    void employeeFilterModelChanged();

private:
    EmployeeViewModel *m_employeeViewModel;
    EmployeeFilterModel *m_employeeFilterModel;
};

#endif // EMPLOYEEMANAGEMENT_H
