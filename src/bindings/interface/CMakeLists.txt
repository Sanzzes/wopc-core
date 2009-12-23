
########### next target ###############

SET(riboninterface_LIB_SRCS
   ScriptMgr.cpp
   ScriptMgr.h
   config.h
   system.cpp
   Scripts/sc_default.cpp
   Scripts/sc_defines.cpp
   Scripts/sc_defines.h
   Scripts/on_events.cpp
)

add_library(riboninterface SHARED ${riboninterface_LIB_SRCS})

target_link_libraries(riboninterface)

set_target_properties(riboninterface PROPERTIES VERSION 4.2.0 SOVERSION 4)
install(TARGETS riboninterface DESTINATION lib)
