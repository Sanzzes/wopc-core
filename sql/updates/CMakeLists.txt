add_subdirectory(old_characters)
add_subdirectory(old_logon)
add_subdirectory(old_world)

FILE(GLOB _SQL_UPDATES *.sql)

INSTALL(FILES ${_SQL_UPDATES} DESTINATION share/IxiliumEmu/sql/updates)

