#include "logincredentials.h"
#include <qdebug.h>

LoginCredentials::LoginCredentials()
{
    qInfo();
}

LoginCredentials::~LoginCredentials()
{
    qDebug("Login Credentails Destructor");
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

}
