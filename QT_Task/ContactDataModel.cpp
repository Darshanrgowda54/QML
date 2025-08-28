#include "ContactDataModel.h"
#include <QDebug>
#include <QFile>
#include <QTextStream>

ContactDataModel::ContactDataModel(QObject *parent)
    : QAbstractListModel{parent}
{
    qDebug()<<Q_FUNC_INFO;
}

ContactDataModel::~ContactDataModel()
{
    qDebug()<<Q_FUNC_INFO;
}

void ContactDataModel::addContactData(Contact *contact)
{
    beginInsertRows(QModelIndex(), m_contactList.size(), m_contactList.size());
    m_contactList.append(contact);
    endInsertRows();
}

Contact *ContactDataModel::getContactData(int index) const
{
    return m_contactList.at(index);
}

QList<QStringList> ContactDataModel::readCsvFile(const QString &filePath) const
{
    QList<QStringList> rows;
    QFile file(filePath);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qWarning() << "Could not open file:" << filePath;
        return rows;
    }

    QTextStream in(&file);
    bool firstLine = true;
    while (!in.atEnd()) {
        QString line = in.readLine().trimmed();
        if (line.isEmpty()) continue;
        if (firstLine) {
            firstLine = false;
            continue;
        }
        QStringList fields = line.split(",");
        rows.append(fields);
    }
    file.close();
    return rows;
}




