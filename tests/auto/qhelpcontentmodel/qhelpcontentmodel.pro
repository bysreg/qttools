TARGET = tst_qhelpcontentmodel
CONFIG += testcase
QT += help testlib
SOURCES += tst_qhelpcontentmodel.cpp

DEFINES += QT_USE_USING_NAMESPACE

wince*: {
   DEFINES += SRCDIR=\\\"./\\\"
   QT += network
   addFiles.files = $$PWD/data/*.*
   addFiles.path = data
   clucene.files = $$QT.clucene.libs/QtCLucene*.dll

   DEPLOYMENT += addFiles
   DEPLOYMENT += clucene

   DEPLOYMENT_PLUGIN += qsqlite
} else {
   DEFINES += SRCDIR=\\\"$$PWD\\\"
}
