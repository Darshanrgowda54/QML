#include "Contact.h"
#include <qdebug.h>

Contact::Contact(QObject *parent)
    : QObject{parent}
{
    qDebug()<<Q_FUNC_INFO;
}

Contact::~Contact()
{
    qDebug()<<Q_FUNC_INFO;
}

QString Contact::getContactName() const
{
    return m_contactName;
}

void Contact::setContactName(const QString &newContactName)
{
    if (m_contactName == newContactName)
        return;
    m_contactName = newContactName;
    emit contactNameChanged();
}

QString Contact::getContactNumber() const
{
    return m_contactNumber;
}

void Contact::setContactNumber(const QString &newContactNumber)
{
    if (m_contactNumber == newContactNumber)
        return;
    m_contactNumber = newContactNumber;
    emit contactNumberChanged();
}

QString Contact::getContactImage() const
{
    return m_contactImage;
}

void Contact::setContactImage(const QString &newContactImage)
{
    if (m_contactImage == newContactImage)
        return;
    m_contactImage = newContactImage;
    emit contactImageChanged();
}

QString Contact::getTime() const
{
    return m_time;
}

void Contact::setTime(const QString &newTime)
{
    if (m_time == newTime)
        return;
    m_time = newTime;
    emit timeChanged();
}

bool Contact::getIsIncoming() const
{
    return m_isIncoming;
}

void Contact::setIsIncoming(bool newIsIncoming)
{
    if (m_isIncoming == newIsIncoming)
        return;
    m_isIncoming = newIsIncoming;
    emit isIncomingChanged();
}

bool Contact::getIsOutgoing() const
{
    return m_isOutgoing;
}

void Contact::setIsOutgoing(bool newIsOutgoing)
{
    if (m_isOutgoing == newIsOutgoing)
        return;
    m_isOutgoing = newIsOutgoing;
    emit isOutgoingChanged();
}

QString Contact::getMessage() const
{
    return m_message;
}

void Contact::setMessage(const QString &newMessage)
{
    if (m_message == newMessage)
        return;
    m_message = newMessage;
    emit messageChanged();
}


