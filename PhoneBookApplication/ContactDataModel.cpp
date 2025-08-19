#include "ContactDataModel.h"

ContactDataModel::ContactDataModel()
{
    qDebug()<<Q_FUNC_INFO;
}

ContactDataModel::~ContactDataModel()
{
    qDebug()<<Q_FUNC_INFO;
}

int ContactDataModel::rowCount(const QModelIndex &parent) const
{
    qDebug()<<Q_FUNC_INFO;

    Q_UNUSED(parent)
    return m_filtercontactList.size();
}

QVariant ContactDataModel::data(const QModelIndex &index, int role) const
{
    qDebug()<<Q_FUNC_INFO;

    const Contact* contact = m_filtercontactList.at(index.row());

    switch (role) {
    case NAME:
        return contact->getName();
    case EMAIL:
        return contact->getEmail();
    case PHONE_NUMBER:
        return contact->getPhoneNumber();
    case IMAGE_PATH:
        return contact->getImagePath();
    default:
        return QVariant();
    }
    return QVariant();

}

QHash<int, QByteArray> ContactDataModel::roleNames() const
{
    qDebug()<<Q_FUNC_INFO;

    QHash<int,QByteArray> l_roleNames;
    l_roleNames.insert(NAME, "name");
    l_roleNames.insert(EMAIL, "email");
    l_roleNames.insert(PHONE_NUMBER, "phoneNumber");
    l_roleNames.insert(IMAGE_PATH, "imagePath");
    return l_roleNames;
}


void ContactDataModel::addContact(const QString &name, const QString &phoneNumber, const QString &email, const QString &imagePath)
{
    qDebug()<<Q_FUNC_INFO;

    Contact *contact = new Contact;
    contact->setName(name);
    contact->setPhoneNumber(phoneNumber);
    contact->setEmail(email);
    contact->setImagePath(imagePath);

    m_contactList.append(contact);
    m_filtercontactList.append(contact);
}


// void ContactDataModel::filterContacts(const QString &searchTerm)
// {
//     qDebug()<<Q_FUNC_INFO;

//     beginResetModel();
//     m_filtercontactList.clear();

//     if (searchTerm.isEmpty()) {
//         m_filtercontactList = m_contactList;
//     } else {
//         for (Contact* c : m_contactList) {
//             if (c->getName().contains(searchTerm, Qt::CaseInsensitive) ||
//                 c->getEmail().contains(searchTerm, Qt::CaseInsensitive) ||
//                 c->getPhoneNumber().contains(searchTerm, Qt::CaseInsensitive)) {
//                 m_filtercontactList.append(c);
//             }
//         }
//     }
//     endResetModel();
// }













































// void ContactDataModel::add()
// {
//     qDebug() << Q_FUNC_INFO;

//     for (int i = 0; i < 10; ++i) {
//         Contact* contact = new Contact;
//         contact->setName("Darshan " + QString::number(i+1));
//         contact->setEmail("darshangowda" + QString::number(i+1) + "@gmail.com");
//         contact->setPhoneNumber("123456789" + QString::number(i));
//         contact->setImagePath("qrc:/Image/Boy.png");

//         m_contactList.append(contact);
//         m_filtercontactList.append(contact);
//     }

// }
