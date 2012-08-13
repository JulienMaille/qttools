load(qt_build_config)

TARGET = QtHelp
QT = core-private gui widgets

DEFINES += QHELP_LIB QT_CLUCENE_SUPPORT

load(qt_module_config)

# private dependencies
QT += network sql clucene-private

DEFINES -= QT_ASCII_CAST_WARNINGS

RESOURCES += helpsystem.qrc
SOURCES += qhelpenginecore.cpp \
    qhelpengine.cpp \
    qhelpdbreader.cpp \
    qhelpcontentwidget.cpp \
    qhelpindexwidget.cpp \
    qhelpgenerator.cpp \
    qhelpdatainterface.cpp \
    qhelpprojectdata.cpp \
    qhelpcollectionhandler.cpp \
    qhelpsearchengine.cpp \
    qhelpsearchquerywidget.cpp \
    qhelpsearchresultwidget.cpp \
    qhelpsearchindex_default.cpp \
    qhelpsearchindexwriter_default.cpp \
    qhelpsearchindexreader_default.cpp \
    qhelpsearchindexreader.cpp \
    qclucenefieldnames.cpp \
    qhelp_global.cpp

# access to clucene
SOURCES += qhelpsearchindexwriter_clucene.cpp \
    qhelpsearchindexreader_clucene.cpp
HEADERS += qhelpenginecore.h \
    qhelpengine.h \
    qhelpengine_p.h \
    qhelp_global.h \
    qhelpdbreader_p.h \
    qhelpcontentwidget.h \
    qhelpindexwidget.h \
    qhelpgenerator_p.h \
    qhelpdatainterface_p.h \
    qhelpprojectdata_p.h \
    qhelpcollectionhandler_p.h \
    qhelpsearchengine.h \
    qhelpsearchquerywidget.h \
    qhelpsearchresultwidget.h \
    qhelpsearchindex_default_p.h \
    qhelpsearchindexwriter_default_p.h \
    qhelpsearchindexreader_default_p.h \
    qhelpsearchindexreader_p.h \
    qclucenefieldnames_p.h

# access to clucene
HEADERS += qhelpsearchindexwriter_clucene_p.h \
    qhelpsearchindexreader_clucene_p.h
