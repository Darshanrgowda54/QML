#ifndef PHONEBOOK_H
#define PHONEBOOK_H

#include <QObject>
#include <ContactDataModel.h>

class PhoneBook : public ContactDataModel
{
    Q_OBJECT
public:
    explicit PhoneBook(QObject *parent = nullptr);
    ~PhoneBook();

    int rowCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;
    QHash<int, QByteArray> roleNames() const;

    void createContactData();
};

#endif // PHONEBOOK_H
