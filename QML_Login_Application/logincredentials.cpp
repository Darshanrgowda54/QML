#include "logincredentials.h"
#include <qdebug.h>

LoginCredentials::LoginCredentials()
{
    qDebug()<<Q_FUNC_INFO;
}

LoginCredentials::~LoginCredentials()
{
    qDebug()<<Q_FUNC_INFO;
}

void LoginCredentials::setUserName(const QString &newUserName)
{
    m_userName = newUserName;
}

QString LoginCredentials::userName() const
{
    return m_userName;
}

QString LoginCredentials::password() const
{
    return m_password;
}

void LoginCredentials::setPassword(const QString &newPassword)
{
    m_password = newPassword;
}

bool LoginCredentials::checkLoginCredentails(QString userName, QString password)
{
    qDebug()<<Q_FUNC_INFO;

    if(m_userName == userName && m_password == password)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

bool LoginCredentials::accountCreated(QString userName, QString password, QString name, QString mobileNumber)
{
    qDebug() << Q_FUNC_INFO;

    m_userName = userName;
    m_password = password;
    m_name = name;
    m_mobileNumber = mobileNumber;

    return true;
}
