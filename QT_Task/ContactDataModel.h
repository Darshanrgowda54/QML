#ifndef CONTACTDATAMODEL_H
#define CONTACTDATAMODEL_H

#include "Contact.h"
#include <QAbstractListModel>
#include <QObject>

class ContactDataModel : public QAbstractListModel
{
    Q_OBJECT
public:
    explicit ContactDataModel(QObject *parent = nullptr);
    virtual ~ContactDataModel();

    virtual void createContactData() = 0;
    void addContactData(Contact* contact);
    Contact* getContactData(int index) const;

    enum ContactData {
        NAME = 1,
        NUMBER,
        IMAGE,
        TIME,
        MESSAGE,
        INCOMING,
        OUTGOING
    };

protected:
    QList<Contact* > m_contactList;
    QList<QStringList> readCsvFile(const QString &filePath) const;
};

#endif // CONTACTDATAMODEL_H
