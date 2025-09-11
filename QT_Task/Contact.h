#ifndef CONTACT_H
#define CONTACT_H

#include <QObject>

class Contact : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString contactName READ getContactName WRITE setContactName NOTIFY contactNameChanged FINAL)
    Q_PROPERTY(QString contactNumber READ getContactNumber WRITE setContactNumber NOTIFY contactNumberChanged FINAL)
    Q_PROPERTY(QString contactImage READ getContactImage WRITE setContactImage NOTIFY contactImageChanged FINAL)
    Q_PROPERTY(QString time READ getTime WRITE setTime NOTIFY timeChanged FINAL)
    Q_PROPERTY(bool isIncoming READ getIsIncoming WRITE setIsIncoming NOTIFY isIncomingChanged FINAL)
    Q_PROPERTY(bool isOutgoing READ getIsOutgoing WRITE setIsOutgoing NOTIFY isOutgoingChanged FINAL)
    Q_PROPERTY(QString message READ getMessage WRITE setMessage NOTIFY messageChanged FINAL)
public:
    explicit Contact(QObject *parent = nullptr);
    ~Contact();

    QString getContactName() const;
    void setContactName(const QString &newContactName);

    QString getContactNumber() const;
    void setContactNumber(const QString &newContactNumber);

    QString getContactImage() const;
    void setContactImage(const QString &newContactImage);

    QString getTime() const;
    void setTime(const QString &newTime);

    bool getIsIncoming() const;
    void setIsIncoming(bool newIsIncoming);

    bool getIsOutgoing() const;
    void setIsOutgoing(bool newIsOutgoing);

    QString getMessage() const;
    void setMessage(const QString &newMessage);

signals:

    void contactNameChanged();
    void contactNumberChanged();
    void contactImageChanged();
    void timeChanged();
    void isIncomingChanged();
    void isOutgoingChanged();

    void messageChanged();

private:
    QString m_contactName;
    QString m_contactNumber;
    QString m_contactImage;
    QString m_time;
    QString m_message;
    bool m_isIncoming = false;
    bool m_isOutgoing = false;
};

#endif // CONTACT_H
