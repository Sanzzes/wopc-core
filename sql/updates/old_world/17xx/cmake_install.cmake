# Install script for directory: /opt/riboncore/sql/updates/old_world/17xx

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sql/updates/old_world/17xx" TYPE FILE FILES
    "/opt/riboncore/sql/updates/old_world/17xx/1742_world_spells.sql"
    "/opt/riboncore/sql/updates/old_world/17xx/1722_world_spells.sql"
    "/opt/riboncore/sql/updates/old_world/17xx/1710_world_ixilium_string.sql"
    "/opt/riboncore/sql/updates/old_world/17xx/1745_world_instance_template.sql"
    "/opt/riboncore/sql/updates/old_world/17xx/1783_world_fix_arena.sql"
    "/opt/riboncore/sql/updates/old_world/17xx/1773_world_ixilium_strings.sql"
    "/opt/riboncore/sql/updates/old_world/17xx/1793_world_command.sql"
    "/opt/riboncore/sql/updates/old_world/17xx/1753_world_quest_template.sql"
    "/opt/riboncore/sql/updates/old_world/17xx/1739_world_ixilium_string.sql"
    "/opt/riboncore/sql/updates/old_world/17xx/1715_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/17xx/1760_world_xilium_strings.sql"
    "/opt/riboncore/sql/updates/old_world/17xx/1716_world_scripts.sql"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

