#! [0]
CONFIG      += designer plugin
#! [0]
TARGET      = $$qtLibraryTarget($$TARGET)
#! [1]
TEMPLATE    = lib
#! [1]
QTDIR_build:DESTDIR     = $$QT_BUILD_TREE/plugins/designer

#! [2]
HEADERS     = worldtimeclock.h \
              worldtimeclockplugin.h
SOURCES     = worldtimeclock.cpp \
              worldtimeclockplugin.cpp
#! [2]

# install
target.path = $$[QT_INSTALL_PLUGINS]/designer
sources.files = $$SOURCES $$HEADERS *.pro
sources.path = $$[QT_INSTALL_EXAMPLES]/qttools/designer/worldtimeclockplugin
INSTALLS += target sources

symbian: CONFIG += qt_example
