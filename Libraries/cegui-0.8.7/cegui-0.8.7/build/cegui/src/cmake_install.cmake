# Install script for directory: C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/cegui")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/build/lib/CEGUIBase-0_d.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/build/lib/CEGUIBase-0.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/build/lib/CEGUIBase-0.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/build/lib/CEGUIBase-0.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/build/bin/CEGUIBase-0_d.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/build/bin/CEGUIBase-0.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/build/bin/CEGUIBase-0.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/build/bin/CEGUIBase-0.dll")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cegui-0/CEGUI" TYPE FILE FILES
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Affector.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Animation.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/AnimationInstance.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/AnimationManager.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Animation_xmlHandler.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Base.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/BasicImage.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/BasicRenderedStringParser.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/BidiVisualMapping.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/BoundSlot.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/CEGUI.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/CentredRenderedString.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/ChainedXMLHandler.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Clipboard.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Colour.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/ColourRect.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/CompositeResourceProvider.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Config_xmlHandler.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/CoordConverter.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/DataContainer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/DefaultLogger.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/DefaultRenderedStringParser.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/DefaultResourceProvider.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/DynamicModule.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Element.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Event.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/EventArgs.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/EventSet.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Exceptions.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/FactoryModule.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/FactoryRegisterer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Font.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/FontGlyph.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/FontManager.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Font_xmlHandler.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/FormattedRenderedString.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/ForwardRefs.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/FreeFunctionSlot.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/FreeTypeFont.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/FribidiVisualMapping.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/FunctorCopySlot.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/FunctorPointerSlot.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/FunctorReferenceBinder.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/FunctorReferenceSlot.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/GUIContext.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/GUILayout_xmlHandler.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/GeometryBuffer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/GlobalEventSet.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/IconvStringTranscoder.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Image.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/ImageCodec.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/ImageFactory.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/ImageManager.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/InjectedInputReceiver.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/InputEvent.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Interpolator.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/IteratorBase.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/JustifiedRenderedString.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/KeyFrame.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/LeftAlignedRenderedString.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/LinkedEvent.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Logger.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/MemberFunctionSlot.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/MemoryAllocatedObject.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/MemoryAllocation.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/MemoryOgreAllocator.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/MemorySTLWrapper.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/MemoryStdAllocator.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/MinibidiVisualMapping.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/MinizipResourceProvider.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/MouseCursor.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/NamedElement.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/NamedXMLResourceManager.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/PCRERegexMatcher.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/PixmapFont.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Property.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/PropertyHelper.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/PropertySet.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Quaternion.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Rect.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RefCounted.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RegexMatcher.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RenderEffect.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RenderEffectFactory.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RenderEffectManager.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RenderQueue.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RenderTarget.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RenderedString.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RenderedStringComponent.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RenderedStringImageComponent.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RenderedStringParser.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RenderedStringTextComponent.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RenderedStringWidgetComponent.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RenderedStringWordWrapper.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Renderer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RenderingContext.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RenderingSurface.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RenderingWindow.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/ResourceProvider.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/RightAlignedRenderedString.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Scheme.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/SchemeManager.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Scheme_xmlHandler.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/ScriptModule.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/SimpleTimer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Singleton.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Size.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/SlotFunctorBase.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/String.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/StringTranscoder.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/SubscriberSlot.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/System.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/SystemKeys.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/TextUtils.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Texture.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/TextureTarget.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/TplInterpolators.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/TplProperty.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/TplWRFactoryRegisterer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/TplWindowFactory.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/TplWindowFactoryRegisterer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/TplWindowProperty.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/TplWindowRendererFactory.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/TplWindowRendererProperty.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/TypedProperty.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/UDim.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Vector.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Vertex.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Win32StringTranscoder.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/Window.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/WindowFactory.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/WindowFactoryManager.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/WindowManager.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/WindowRenderer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/WindowRendererManager.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/XMLAttributes.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/XMLHandler.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/XMLParser.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/XMLSerializer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/build/cegui/src/../include/CEGUI/Config.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/build/cegui/src/../include/CEGUI/ModuleConfig.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/build/cegui/src/../include/CEGUI/Version.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cegui-0/CEGUI/widgets" TYPE FILE FILES
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/All.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ButtonBase.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ClippedContainer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ComboDropList.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Combobox.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/DefaultWindow.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/DragContainer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Editbox.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/FrameWindow.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/GridLayoutContainer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/GroupBox.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/HorizontalLayoutContainer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ItemEntry.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ItemListBase.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ItemListbox.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/LayoutCell.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/LayoutContainer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ListHeader.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ListHeaderSegment.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Listbox.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ListboxItem.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ListboxTextItem.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/MenuBase.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/MenuItem.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Menubar.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/MultiColumnList.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/MultiLineEditbox.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/PopupMenu.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ProgressBar.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/PushButton.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/RadioButton.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ScrollablePane.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Scrollbar.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ScrolledContainer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ScrolledItemListBase.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/SequentialLayoutContainer.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Slider.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Spinner.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/TabButton.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/TabControl.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Thumb.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Titlebar.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ToggleButton.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Tooltip.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Tree.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/TreeItem.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/VerticalLayoutContainer.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cegui-0/CEGUI/falagard" TYPE FILE FILES
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/ComponentBase.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/Dimensions.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/Enums.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/EventAction.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/EventLinkDefinition.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/FalagardPropertyBase.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/FormattingSetting.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/FrameComponent.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/ImageryComponent.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/ImagerySection.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/LayerSpecification.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/NamedArea.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/NamedDefinitionCollator.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/PropertyDefinition.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/PropertyDefinitionBase.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/PropertyInitialiser.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/PropertyLinkDefinition.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/SectionSpecification.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/StateImagery.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/TextComponent.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/WidgetComponent.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/WidgetLookFeel.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/WidgetLookManager.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/XMLEnumHelper.h"
    "C:/Users/Gabe/source/repos/CPPGameEngine/Libraries/cegui-0.8.7/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/XMLHandler.h"
    )
endif()

