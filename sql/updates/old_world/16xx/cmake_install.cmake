# Install script for directory: /opt/riboncore/sql/updates/old_world/16xx

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/opt/riboncore/builds")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sql/updates/old_world/16xx" TYPE FILE FILES
    "/opt/riboncore/sql/updates/old_world/16xx/1697_world_ribon_string.sql"
    "/opt/riboncore/sql/updates/old_world/16xx/1651_world_spell.sql"
    "/opt/riboncore/sql/updates/old_world/16xx/1627_world_spell.sql"
    "/opt/riboncore/sql/updates/old_world/16xx/1658_world_spell.sql"
    "/opt/riboncore/sql/updates/old_world/16xx/1605_world_battlegrounds.sql"
    "/opt/riboncore/sql/updates/old_world/16xx/1659_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/16xx/1635_world_quest_template.sql"
    "/opt/riboncore/sql/updates/old_world/16xx/1630_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/16xx/1628_world_spell.sql"
    "/opt/riboncore/sql/updates/old_world/16xx/1639_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/16xx/1640_world_item.sql"
    "/opt/riboncore/sql/updates/old_world/16xx/1689_world_scripts.sql"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

