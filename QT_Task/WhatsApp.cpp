#include "WhatsApp.h"

WhatsApp::WhatsApp(QObject *parent)
    : ContactDataModel{parent}
{
    qDebug()<<Q_FUNC_INFO;
}

WhatsApp::~WhatsApp()
{
    qDebug()<<Q_FUNC_INFO;
}

int WhatsApp::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent)
    return m_contactList.size();
}

QVariant WhatsApp::data(const QModelIndex &index, int role) const
{
    Contact* c = m_contactList.at(index.row());

    switch (role) {
    case NAME:
        return c->getContactName();
    case NUMBER:
        return c->getContactNumber();
    case IMAGE:
        return c->getContactImage();
    case TIME:
        return c->getTime();
    default:
        return QVariant();
    }
}

QHash<int, QByteArray> WhatsApp::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[NAME] = "contactName";
    roles[NUMBER] = "contactNumber";
    roles[IMAGE] = "contactImage";
    roles[TIME] = "time";
    return roles;
}

void WhatsApp::createContactData()
{
    QList<QStringList> rows = readCsvFile(":/Data/whatsapp.csv");
    for (const QStringList &fields : rows) {
        Contact* c = new Contact;
        c->setContactName(fields[0]);
        c->setContactNumber(fields[1]);
        c->setContactImage(fields[2]);
        c->setTime(fields[3]);
        addContactData(c);
    }
}
