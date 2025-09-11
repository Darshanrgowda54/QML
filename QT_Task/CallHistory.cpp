#include "CallHistory.h"

CallHistory::CallHistory(QObject *parent)
    : ContactDataModel{parent}
{
    qDebug()<<Q_FUNC_INFO;
}

CallHistory::~CallHistory()
{
    qDebug()<<Q_FUNC_INFO;
}

int CallHistory::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent)
    return m_contactList.size();
}

QVariant CallHistory::data(const QModelIndex &index, int role) const
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
    case INCOMING:
        return c->getIsIncoming();
    case OUTGOING:
        return c->getIsOutgoing();
    default:
        return QVariant();
    }
}

QHash<int, QByteArray> CallHistory::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[NAME] = "contactName";
    roles[NUMBER] = "contactNumber";
    roles[IMAGE] = "contactImage";
    roles[TIME] = "time";
    roles[INCOMING] = "isIncoming";
    roles[OUTGOING] = "isOutgoing";
    return roles;
}

void CallHistory::createContactData()
{
    QList<QStringList> rows = readCsvFile(":/Data/callhistory.csv");
    for (const QStringList &fields : rows) {
        Contact* c = new Contact;
        c->setContactName(fields[0]);
        c->setContactNumber(fields[1]);
        c->setContactImage(fields[2]);
        c->setTime(fields[3]);
        addContactData(c);
    }
}

































































// c->setIsIncoming(fields[4].toInt() == 1);
// c->setIsOutgoing(fields[5].toInt() == 1);
