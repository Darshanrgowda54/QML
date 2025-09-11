#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "EmployeeManagement.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    EmployeeManagement employeeManagement;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("EmployeeManagement", &employeeManagement);

    const QUrl url(QStringLiteral("qrc:/EmployeeApplication/main.qml"));
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
