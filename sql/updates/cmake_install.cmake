# Install script for directory: /opt/riboncore/sql/updates

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/IxiliumEmu/sql/updates" TYPE FILE FILES
    "/opt/riboncore/sql/updates/2241_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/2015_01_characters_character_skills.sql"
    "/opt/riboncore/sql/updates/2219_01_world_changes_330.sql"
    "/opt/riboncore/sql/updates/2204_01_world_item_template.sql"
    "/opt/riboncore/sql/updates/2227_01_world_champion_instance.sql"
    "/opt/riboncore/sql/updates/2253_01_world_battleground_system.sql"
    "/opt/riboncore/sql/updates/1991_01_logon_access_per_realm.sql"
    "/opt/riboncore/sql/updates/2209_01_world_ra_commands.sql"
    "/opt/riboncore/sql/updates/2291_world_scripts.sql"
    "/opt/riboncore/sql/updates/2267_01_world_creature.sql"
    "/opt/riboncore/sql/updates/2266_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/2290_world_scripts.sql"
    "/opt/riboncore/sql/updates/2252_01_world_script.sql"
    "/opt/riboncore/sql/updates/2259_01_world_script.sql"
    "/opt/riboncore/sql/updates/2255_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/2219_01_characters_changes_330.sql"
    "/opt/riboncore/sql/updates/2263_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/2214_01_world_scriptnames.sql"
    "/opt/riboncore/sql/updates/2242_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/2251_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/2254_01_world_scripts.sql"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/opt/riboncore/sql/updates/old_characters/cmake_install.cmake")
  INCLUDE("/opt/riboncore/sql/updates/old_logon/cmake_install.cmake")
  INCLUDE("/opt/riboncore/sql/updates/old_world/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

