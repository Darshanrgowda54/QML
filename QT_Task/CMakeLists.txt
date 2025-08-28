cmake_minimum_required(VERSION 3.16)

project(QT_Task VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)
find_package(Qt6 REQUIRED COMPONENTS Core)

qt_add_executable(appQT_Task
    main.cpp
)

qt_add_qml_module(appQT_Task
    URI QT_Task
    VERSION 1.0

    QML_FILES
    main.qml
    PhoneBook/PhoneBook.qml
    CallHistory/CallHistory.qml
    WhatsApp/WhatsApp.qml

    SOURCES
    Contact.h Contact.cpp
    ContactDataModel.h ContactDataModel.cpp
    PhoneBook.h PhoneBook.cpp
    CallHistory.h CallHistory.cpp
    WhatsApp.h WhatsApp.cpp

    QML_FILES
    WhatsApp/WhatsAppHeader.qml

    RESOURCES
    QML_FILES PhoneBook/PhoneBookHeader.qml
    RESOURCES Image/AddProfile.png
    QML_FILES CallHistory/CallHistoryHeader.qml
    QML_FILES MenuPage.qml
)

# Add resources (images, etc.)
qt_add_resources(appQT_Task "resources"
    PREFIX "/"
    FILES
        Image/Boy.png
        Image/Calls.png
        Image/Camera.png
        Image/Chats.png
        Image/Communities.png
        Image/Scanner.png
        Image/Settings.png
        Image/Updates.png
        Image/AddProfile.png
        Data/phonebook.csv
        Data/whatsapp.csv
        Data/callhistory.csv
)



# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appQT_Task PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appQT_Task
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQT_Task
    PRIVATE Qt6::Quick)
target_link_libraries(appQT_Task PRIVATE Qt6::Core)

include(GNUInstallDirs)
install(TARGETS appQT_Task
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
