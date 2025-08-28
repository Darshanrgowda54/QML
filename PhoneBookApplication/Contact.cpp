#include "Contact.h"
#include <QDebug>


Contact::Contact(QObject *parent)
    : QObject{parent}
{
    qDebug()<<Q_FUNC_INFO;
}

Contact::~Contact()
{
    qDebug()<<Q_FUNC_INFO;
}

QString Contact::getName() const
{
    return m_name;
}

void Contact::setName(const QString &newName)
{
    if (m_name == newName)
        return;
    m_name = newName;
    emit nameChanged();
}

QString Contact::getEmail() const
{
    return m_email;
}

void Contact::setEmail(const QString &newEmail)
{
    if (m_email == newEmail)
        return;
    m_email = newEmail;
    emit emailChanged();
}

QString Contact::getPhoneNumber() const
{
    return m_phoneNumber;
}

void Contact::setPhoneNumber(const QString &newPhoneNumber)
{
    if (m_phoneNumber == newPhoneNumber)
        return;
    m_phoneNumber = newPhoneNumber;
    emit phoneNumberChanged();
}

QString Contact::getImagePath() const
{
    return m_imagePath;
}

void Contact::setImagePath(const QString &newImagePath)
{
    if (m_imagePath == newImagePath)
        return;
    m_imagePath = newImagePath;
    emit imagePathChanged();
}
