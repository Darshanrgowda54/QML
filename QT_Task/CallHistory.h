#ifndef CALLHISTORY_H
#define CALLHISTORY_H

#include <QObject>
#include <ContactDataModel.h>

class CallHistory : public ContactDataModel
{
    Q_OBJECT
public:
    explicit CallHistory(QObject *parent = nullptr);
    ~CallHistory();

    int rowCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;
    QHash<int, QByteArray> roleNames() const;

    void createContactData();
};

#endif // CALLHISTORY_H
