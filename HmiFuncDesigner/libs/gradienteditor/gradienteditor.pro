QT += core gui widgets

TARGET = gradienteditor
TEMPLATE = lib

BUILD_DIR = $$clean_path($$OUT_PWD)

DESTDIR = $$BUILD_DIR/../../../lib
win32 {
    DLLDESTDIR = $$BUILD_DIR/../../../HmiFuncDesignerBin/bin
}
unix {
    DESTDIR = $$BUILD_DIR/../../../HmiFuncDesignerBin/bin
}

DEFINES += GRADIENTEDITOR_LIBRARY

DEFINES += QT_DEPRECATED_WARNINGS

INCLUDEPATH += $$PWD

unix {
    QMAKE_LFLAGS += "-Wl,-rpath,\'"$$clean_path($$DESTDIR)"\'"
}

SOURCES += \
    qtgradienteditor.cpp \
    qtgradientstopscontroller.cpp \
    qtgradientstopsmodel.cpp \
    qtcolorline.cpp \
    qtcolorbutton.cpp \
    qtgradientstopswidget.cpp \
    qtgradientwidget.cpp \
    qtgradientdialog.cpp

HEADERS += \
    gradientEditor_global.h \
    qtgradienteditor.h \
    qtgradientstopscontroller.h \
    qtgradientstopsmodel.h \
    qtcolorline.h \
    qtcolorbutton.h \
    qtgradientstopswidget.h \
    qtgradientwidget.h \
    qtgradientdialog.h

FORMS += \
    qtgradienteditor.ui \
    qtgradientdialog.ui

RESOURCES += \
    gradienteditor.qrc
