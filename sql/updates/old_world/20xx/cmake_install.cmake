# Install script for directory: /opt/riboncore/sql/updates/old_world/20xx

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sql/updates/old_world/20xx" TYPE FILE FILES
    "/opt/riboncore/sql/updates/old_world/20xx/2094_01_world_spell_script_target.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2090_01_world_vehicle_datas.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2096_01_world_spell.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2029_1111_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2012_02_world_spell_learn_spell.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2007_01_world_Battleground_doors.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2030_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2031_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2042_01_world_spell_pet_auras.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2080_2083_world_spell_proc_event.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2032_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2033_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2016_01_deathknight_fixes.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2034_01_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2012_01_world_spell_proc_event.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2010_01_world_password.sql"
    "/opt/riboncore/sql/updates/old_world/20xx/2004_01_world_spell_link.sql"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

