#ifndef CONTACT_H
#define CONTACT_H

#include <QObject>

class Contact: public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString name READ getName WRITE setName NOTIFY nameChanged FINAL)
    Q_PROPERTY(QString email READ getEmail WRITE setEmail NOTIFY emailChanged FINAL)
    Q_PROPERTY(QString phoneNumber READ getPhoneNumber WRITE setPhoneNumber NOTIFY phoneNumberChanged FINAL)
    Q_PROPERTY(QString imagePath READ getImagePath WRITE setImagePath NOTIFY imagePathChanged FINAL)
public:
    explicit Contact(QObject *parent = nullptr);
    ~Contact();

    QString getName() const;
    void setName(const QString &newName);

    QString getEmail() const;
    void setEmail(const QString &newEmail);

    QString getPhoneNumber() const;
    void setPhoneNumber(const QString &newPhoneNumber);

    QString getImagePath() const;
    void setImagePath(const QString &newImagePath);

signals:
    void nameChanged();
    void emailChanged();
    void phoneNumberChanged();
    void imagePathChanged();

private:
    QString m_name;
    QString m_email;
    QString m_phoneNumber;
    QString m_imagePath;
};

#endif // CONTACT_H
