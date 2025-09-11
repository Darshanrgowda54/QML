#include "EmployeeFilterModel.h"


EmployeeFilterModel::EmployeeFilterModel(QObject *parent)
    :QSortFilterProxyModel(parent)
{
    qDebug()<<Q_FUNC_INFO;
}

EmployeeFilterModel::~EmployeeFilterModel()
{
    qDebug()<<Q_FUNC_INFO;
}


bool EmployeeFilterModel::filterAcceptsRow(int source_row, const QModelIndex &source_parent) const
{

}
