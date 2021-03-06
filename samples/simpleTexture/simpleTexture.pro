#-------------------------------------------------
#
# Project created by QtCreator 2014-09-18T12:26:54
#
#-------------------------------------------------

QT       += core gui opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = simpleTextureViewer
TEMPLATE = app

EIGEN_PATH  =  /usr/include/eigen3

TUCANO_PATH = ../../

BUILDDIR = $$TUCANO_PATH/build/samples/simpleTexture/

#GLEW_PATH = ../../../glew
#INCLUDEPATH += $$GLEW_PATH/include
#LIBS += -L$$GLEW_PATH/lib

LIBS += -lGLEW -lGLU

INCLUDEPATH +=  $$TUCANO_PATH/src $$TUCANO_PATH/effects $$EIGEN_PATH

OBJECTS_DIR =   $$BUILDDIR/obj
MOC_DIR =       $$BUILDDIR/moc
RCC_DIR =       $$BUILDDIR/rcc
UI_DIR =        $$BUILDDIR/ui
DESTDIR =       $$TUCANO_PATH/bin
QMAKE_CXXFLAGS += -DTUCANODEBUG

QMAKE_CXXFLAGS += -DTUCANODEBUG

SOURCES += main.cpp\
        mainwindow.cpp \
        glwidget.cpp

HEADERS  += mainwindow.h \
        glwidget.hpp \
        $$TUCANO_PATH/src/utils/qtplainwidget.hpp \
        $$TUCANO_PATH/effects/rendertexture.hpp

FORMS    += mainwindow.ui

OTHER_FILES += \
        $$TUCANO_PATH/effects/shaders/rendertexture.frag \
        $$TUCANO_PATH/effects/shaders/rendertexture.vert
