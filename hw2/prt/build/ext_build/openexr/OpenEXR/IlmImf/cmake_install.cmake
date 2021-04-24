# Install script for directory: /home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/lyf/Desktop/GAMES202-homework/hw2/prt/build/ext_build/openexr/OpenEXR/IlmImf/libIlmImf.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenEXR" TYPE FILE FILES
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfForward.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfExport.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfBoxAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfCRgbaFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfChannelList.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfChannelListAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfCompressionAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfDoubleAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfFloatAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfFrameBuffer.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfHeader.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfIO.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfInputFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfIntAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfLineOrderAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfMatrixAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfOpaqueAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfOutputFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfRgbaFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfStringAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfVecAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfHuf.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfWav.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfLut.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfArray.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfCompression.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfLineOrder.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfName.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfPixelType.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfVersion.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfXdr.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfConvert.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfPreviewImage.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfPreviewImageAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfChromaticities.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfChromaticitiesAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfKeyCode.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfKeyCodeAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfTimeCode.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfTimeCodeAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfRational.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfRationalAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfFramesPerSecond.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfStandardAttributes.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfEnvmap.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfEnvmapAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfInt64.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfRgba.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfTileDescription.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfTileDescriptionAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledInputFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledOutputFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledRgbaFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfRgbaYca.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfTestFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfThreading.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfB44Compressor.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfStringVectorAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfMultiView.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfAcesFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfMultiPartOutputFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfGenericOutputFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfMultiPartInputFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfGenericInputFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfPartType.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfPartHelper.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfOutputPart.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledOutputPart.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfInputPart.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledInputPart.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineOutputFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineOutputPart.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineInputFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineInputPart.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledInputFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledInputPart.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledOutputFile.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledOutputPart.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepFrameBuffer.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepCompositing.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfCompositeDeepScanLine.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfNamespace.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfMisc.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepImageState.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepImageStateAttribute.h"
    "/home/lyf/Desktop/GAMES202-homework/hw2/prt/ext/openexr/OpenEXR/IlmImf/ImfFloatVectorAttribute.h"
    )
endif()

