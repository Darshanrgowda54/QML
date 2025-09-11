#ifndef EMPLOYEEFILTERMODEL_H
#define EMPLOYEEFILTERMODEL_H

#include <QSortFilterProxyModel>

class EmployeeFilterModel : public QSortFilterProxyModel
{
    Q_OBJECT
public:
    explicit EmployeeFilterModel(QObject *parent = nullptr);
    ~EmployeeFilterModel();

protected:
    bool filterAcceptsRow(int source_row, const QModelIndex &source_parent) const;
};

#endif // EMPLOYEEFILTERMODEL_H
