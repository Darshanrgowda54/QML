#ifndef WHATSAPP_H
#define WHATSAPP_H

#include <QObject>
#include <ContactDataModel.h>

class WhatsApp : public ContactDataModel
{
    Q_OBJECT
public:
    explicit WhatsApp(QObject *parent = nullptr);
    ~WhatsApp();

    int rowCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;
    QHash<int, QByteArray> roleNames() const;

    void createContactData();
};

#endif // WHATSAPP_H
