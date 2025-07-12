#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "logincredentials.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    LoginCredentials loginBackend;
    loginBackend.setUserName("admin");
    loginBackend.setPassword("1234");

    engine.rootContext()->setContextProperty("loginBackend", &loginBackend);

    const QUrl url(QStringLiteral("qrc:/QML_Login_Application/main.qml"));
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
