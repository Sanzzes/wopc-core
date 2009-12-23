# Install script for directory: /opt/riboncore/sql/updates/old_world/14xx

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sql/updates/old_world/14xx" TYPE FILE FILES
    "/opt/riboncore/sql/updates/old_world/14xx/1429_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1464_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1411_world_spells.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1480_01_world_creature.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1435_world_ribon_string.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1476_02_world_creature.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1419_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1418_world_template.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1475_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1403_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1442_world_ribon_string.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1489_world_mail_level_reward.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1401_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1485_world_ribon_string.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1480_02_world_gameobject.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1476_01_world_creature_template.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1465_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1496_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1432_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1437_world_wintergrasp.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1491_world_quest_template.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1476_03_world_gameobject.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1441_world_outdoorpvp.sql"
    "/opt/riboncore/sql/updates/old_world/14xx/1443_world_scripts.sql"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

