#ifndef CONTACTDATAMODEL_H
#define CONTACTDATAMODEL_H

#include <QList>
#include <QAbstractListModel>
#include "Contact.h"

class ContactDataModel : public QAbstractListModel
{
    Q_OBJECT
public:
    explicit ContactDataModel();
    ~ContactDataModel();

    // QAbstractItemModel interface
    int rowCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;
    QHash<int, QByteArray> roleNames() const;

    void add();

    Q_INVOKABLE void addContact(const QString &name,
                                const QString &phoneNumber,
                                const QString &email,
                                const QString &imagePath);


    enum contactDataModel {
        NAME = 1,
        EMAIL,
        PHONE_NUMBER,
        IMAGE_PATH
    };


private:
    QList<Contact*> m_contactList;
};

#endif // CONTACTDATAMODEL_H
