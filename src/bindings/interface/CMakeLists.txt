
########### next target ###############

SET(wopccoreinterface_LIB_SRCS
   ScriptMgr.cpp
   ScriptMgr.h
   config.h
   system.cpp
   Scripts/sc_default.cpp
   Scripts/sc_defines.cpp
   Scripts/sc_defines.h
   Scripts/on_events.cpp
)

add_library(wopccoreinterface SHARED ${riboninterface_LIB_SRCS})

target_link_libraries(wopccoreinterface)

set_target_properties(wopccoreinterface PROPERTIES VERSION 4.2.0 SOVERSION 4)
install(TARGETS wopccoreinterface DESTINATION lib)
