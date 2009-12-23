# Install script for directory: /opt/riboncore/sql/updates/old_world/10xx

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sql/updates/old_world/10xx" TYPE FILE FILES
    "/opt/riboncore/sql/updates/old_world/10xx/1069_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/10xx/1094_world_command.sql"
    "/opt/riboncore/sql/updates/old_world/10xx/1000_world_ribon_string.sql"
    "/opt/riboncore/sql/updates/old_world/10xx/1007_world_script_texts.sql"
    "/opt/riboncore/sql/updates/old_world/10xx/1073_gameobject_template.sql"
    "/opt/riboncore/sql/updates/old_world/10xx/1075_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/10xx/1098_world_script.sql"
    "/opt/riboncore/sql/updates/old_world/10xx/1091_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/10xx/1089_world_command.sql"
    "/opt/riboncore/sql/updates/old_world/10xx/1040_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/10xx/1095_world_spell.sql"
    "/opt/riboncore/sql/updates/old_world/10xx/1011_world_command.sql"
    "/opt/riboncore/sql/updates/old_world/10xx/1077_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/10xx/1055_world_scripts.sql"
    "/opt/riboncore/sql/updates/old_world/10xx/1093_world_changes.sql"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

