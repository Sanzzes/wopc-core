# Install script for directory: /opt/riboncore/sql/updates/old_world/11xx

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sql/updates/old_world/11xx" TYPE FILE FILES
    "/opt/riboncore/sql/updates/old_world/11xx/1145_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1158_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1101_world_script.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1178_world_version_changes.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1118_world_spell.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1176_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1164_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1113_world_spells.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1108_world_script.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1141_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1182_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1170_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1161_world_spells.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1156_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1100_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1166_battleground_events.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1133_world_spell.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1163_world_spells.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1172_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/11xx/1121_world_scripts.sql"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

