#ifndef LOGINCREDENTIALS_H
#define LOGINCREDENTIALS_H

#include <qobject.h>
class LoginCredentials:public QObject
{
    Q_OBJECT
public:
    LoginCredentials();
    ~LoginCredentials();

    void setUserName(const QString &newUserName);
    QString userName() const;

    QString password() const;
    void setPassword(const QString &newPassword);

    bool checkLoginCredentails(QString name,QString password);

private:
    QString m_userName;
    QString m_password;
};

#endif // LOGINCREDENTIALS_H
