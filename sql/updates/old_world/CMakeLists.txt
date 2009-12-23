add_subdirectory(15xx)
add_subdirectory(16xx)
add_subdirectory(17xx)
add_subdirectory(18xx)
add_subdirectory(19xx)
add_subdirectory(20xx)
add_subdirectory(21xx)

FILE(GLOB _SQL_UPDATES *.sql)

INSTALL(FILES ${_SQL_UPDATES} DESTINATION share/sql/updates/old_world)
