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

    Q_INVOKABLE bool checkLoginCredentails(QString userName,QString password);
    Q_INVOKABLE bool accountCreated(QString userName, QString password,QString name, QString mobileNumber);

private:
    QString m_userName;
    QString m_password;
    QString m_name;
    QString m_mobileNumber;
};

#endif // LOGINCREDENTIALS_H
