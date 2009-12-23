########### next target ###############

SET(world_SRCS
CliRunnable.cpp
CliRunnable.h
Main.cpp
Master.cpp
Master.h
RASocket.cpp
RASocket.h
WorldRunnable.cpp
WorldRunnable.h
)

SET(world_LINK_FLAGS "")

add_executable(world ${world_SRCS})
add_definitions(
-D_WORLD_CONFIG='"${CONF_DIR}/world.conf"'
)
IF (DO_MYSQL)
    SET(world_LINK_FLAGS "-pthread ${world_LINK_FLAGS}")
ENDIF(DO_MYSQL)
IF (DO_POSTGRESQL)
    SET(world_LINK_FLAGS "-pthread ${world_LINK_FLAGS}")
ENDIF(DO_POSTGRESQL)


IF (CMAKE_SYSTEM_NAME MATCHES "Darwin")
    SET(world_LINK_FLAGS "-framework Carbon ${world_LINK_FLAGS}")
    SET(SCRIPT_LIB "")
ENDIF (CMAKE_SYSTEM_NAME MATCHES "Darwin")

SET_TARGET_PROPERTIES(world PROPERTIES LINK_FLAGS "${world_LINK_FLAGS}")

target_link_libraries(
world
game
shared
zlib
WoPCCoreframework
WoPCCoresockets
WoPCCoredatabase
WoPCCoreauth
WoPCCoreconfig
vmaps
g3dlite
${READLINE_LIBRARY}
${TERMCAP_LIBRARY}
gomp
${SCRIPT_LIB}
${MYSQL_LIBRARIES}
${POSTGRESQL_LIBRARIES}
${SSLLIB}
${ACE_LIBRARY}
${ZLIB}
${OSX_LIBS}
)

install(TARGETS world DESTINATION bin)


########### install files ###############

install(FILES  world.conf.dist DESTINATION etc)

