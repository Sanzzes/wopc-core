# Install script for directory: /opt/riboncore/sql/updates/old_world/21xx

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sql/updates/old_world/21xx" TYPE FILE FILES
    "/opt/riboncore/sql/updates/old_world/21xx/2168_01_world_gossip_menu.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2111_01_world_gossip_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2198_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2175_01_world_item_template.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2128_01_world_spells.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2146_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2198_02_world_scourge_gryphon_fix.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2175_04_world_scourge_gryphon_fix.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2122_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2145_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2175_02_world_quest.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2156_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2144_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2162_01_world_gossip_menu.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2175_03_world_ra_commands.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2113_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2121_01_world_command.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2175_01_world_scourge_gryphon_fix.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2154_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2106_01_world_new_gossip_system.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2175_05_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/21xx/2161_01_world_spells.sql"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

