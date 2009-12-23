# Install script for directory: /opt/riboncore/sql/updates/old_world/15xx

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sql/updates/old_world/15xx" TYPE FILE FILES
    "/opt/riboncore/sql/updates/old_world/15xx/1545_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/15xx/1552_world_gameobject_template.sql"
    "/opt/riboncore/sql/updates/old_world/15xx/1509_world_command.sql"
    "/opt/riboncore/sql/updates/old_world/15xx/1576_world_01_playercreateinfo_spell.sql"
    "/opt/riboncore/sql/updates/old_world/15xx/1507_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/15xx/1522_fix_power_word_shield.sql"
    "/opt/riboncore/sql/updates/old_world/15xx/1534_world_fix_arena_and_bg.sql"
    "/opt/riboncore/sql/updates/old_world/15xx/1542_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/15xx/1540_multi_passengers_support.sql"
    "/opt/riboncore/sql/updates/old_world/15xx/1517_world_ribon_string.sql"
    "/opt/riboncore/sql/updates/old_world/15xx/1567_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/15xx/1538_world_bg_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/15xx/1576_world_02_playercreateinfo_action.sql"
    "/opt/riboncore/sql/updates/old_world/15xx/1575_world_spell_elixir.sql"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

