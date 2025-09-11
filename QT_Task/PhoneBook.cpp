#include "PhoneBook.h"

PhoneBook::PhoneBook(QObject *parent)
    : ContactDataModel{parent}
{
    qDebug()<<Q_FUNC_INFO;
}

PhoneBook::~PhoneBook()
{
    qDebug()<<Q_FUNC_INFO;
}

int PhoneBook::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent)
    return m_contactList.size();
}

QVariant PhoneBook::data(const QModelIndex &index, int role) const
{
    Contact* c = m_contactList.at(index.row());

    switch (role) {
    case NAME:
        return c->getContactName();
    case NUMBER:
        return c->getContactNumber();
    case IMAGE:
        return c->getContactImage();
    default:
        return QVariant();
    }
}

QHash<int, QByteArray> PhoneBook::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[NAME] = "contactName";
    roles[NUMBER] = "contactNumber";
    roles[IMAGE] = "contactImage";
    return roles;
}

void PhoneBook::createContactData()
{
    QList<QStringList> rows = readCsvFile(":/Data/phonebook.csv");
    for (const QStringList &fields : rows) {
        Contact* c = new Contact;
        c->setContactName(fields[0]);
        c->setContactNumber(fields[1]);
        c->setContactImage(fields[2]);
        addContactData(c);
    }
}
