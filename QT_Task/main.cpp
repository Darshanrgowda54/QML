#include "CallHistory.h"
#include "PhoneBook.h"
#include "WhatsApp.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    PhoneBook phoneBook;
    phoneBook.createContactData();

    WhatsApp whatsapp;
    whatsapp.createContactData();

    CallHistory callHistory;
    callHistory.createContactData();

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("phoneBookModel", &phoneBook);
    engine.rootContext()->setContextProperty("whatsappModel", &whatsapp);
    engine.rootContext()->setContextProperty("callHistoryModel", &callHistory);

    const QUrl url(QStringLiteral("qrc:/QT_Task/main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
