# Install script for directory: /opt/riboncore/sql/updates/old_characters

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sql/updates/old_characters" TYPE FILE FILES
    "/opt/riboncore/sql/updates/old_characters/1230_characters_character_reputation.sql"
    "/opt/riboncore/sql/updates/old_characters/2015_01_characters_character_skills.sql"
    "/opt/riboncore/sql/updates/old_characters/803_characters_character_db_version.sql"
    "/opt/riboncore/sql/updates/old_characters/573_character_updates_dual_spec.sql"
    "/opt/riboncore/sql/updates/old_characters/2175_01_characters_account_data.sql"
    "/opt/riboncore/sql/updates/old_characters/1796_characters_spells.sql"
    "/opt/riboncore/sql/updates/old_characters/998_characters_data.sql"
    "/opt/riboncore/sql/updates/old_characters/379_mangos_8339_characters.sql"
    "/opt/riboncore/sql/updates/old_characters/544_characters_channels.sql"
    "/opt/riboncore/sql/updates/old_characters/1991_01_characters_instance_reset.sql"
    "/opt/riboncore/sql/updates/old_characters/718_8409_characters_guild.sql"
    "/opt/riboncore/sql/updates/old_characters/1287_character_characters_guild.sql"
    "/opt/riboncore/sql/updates/old_characters/502_character_updates_dual_spec.sql"
    "/opt/riboncore/sql/updates/old_characters/712_8402_characters_guild_eventlog.sql"
    "/opt/riboncore/sql/updates/old_characters/1093_characters_character.sql"
    "/opt/riboncore/sql/updates/old_characters/1065_characters_reputation.sql"
    "/opt/riboncore/sql/updates/old_characters/1418_characters_character_aura.sql"
    "/opt/riboncore/sql/updates/old_characters/560_characters.sql"
    "/opt/riboncore/sql/updates/old_characters/990_characters_character_group.sql"
    "/opt/riboncore/sql/updates/old_characters/990_characters_converter.sql"
    "/opt/riboncore/sql/updates/old_characters/841_characters_character_account_data.sql"
    "/opt/riboncore/sql/updates/old_characters/711_8397_characters_character_spell.sql"
    "/opt/riboncore/sql/updates/old_characters/799_8433_characters_character_account_data.sql"
    "/opt/riboncore/sql/updates/old_characters/864_characters_character_spell.sql"
    "/opt/riboncore/sql/updates/old_characters/712_8402_characters_guild_bank_eventlog.sql"
    "/opt/riboncore/sql/updates/old_characters/894_characters_game_event.sql"
    "/opt/riboncore/sql/updates/old_characters/455_character_updates_dual_spec.sql"
    "/opt/riboncore/sql/updates/old_characters/1991_01_characters_characters_spells.sql"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

