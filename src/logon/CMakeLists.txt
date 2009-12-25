########### next target ###############

SET(logon_SRCS
AuthCodes.h
AuthSocket.cpp
AuthSocket.h
Main.cpp
LogonList.cpp
LogonList.h
)

SET(logon_LINK_FLAGS "")

add_executable(logon ${logon_SRCS})
add_definitions(
-D_LOGON_CONFIG='"${CONF_DIR}/logon.conf"'
)
IF (DO_MYSQL)
   SET(logon_LINK_FLAGS "-pthread ${logon_LINK_FLAGS}")
ENDIF(DO_MYSQL)
IF (DO_POSTGRESQL)
   SET(logon_LINK_FLAGS "-pthread ${logon_LINK_FLAGS}")
ENDIF(DO_POSTGRESQL)

IF (CMAKE_SYSTEM_NAME MATCHES "Darwin")
   SET(logon_LINK_FLAGS "-framework Carbon ${logon_LINK_FLAGS}")
ENDIF (CMAKE_SYSTEM_NAME MATCHES "Darwin")

SET_TARGET_PROPERTIES(logon PROPERTIES LINK_FLAGS "${logon_LINK_FLAGS}")

target_link_libraries(
logon
shared
wopccoreframework
wopccoresockets
wopccoredatabase
wopccoreauth
wopccoreconfig
zlib
gomp
${SSLLIB}
${MYSQL_LIBRARIES}
${POSTGRESQL_LIBRARIES}
${OSX_LIBS}
)

install(TARGETS logon DESTINATION bin)


########### install files ###############

install(FILES  logon.conf.dist DESTINATION etc)
