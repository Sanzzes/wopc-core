# Install script for directory: /opt/riboncore/sql/updates/characters

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ribon/sql/updates/characters" TYPE FILE FILES
    "/opt/riboncore/sql/updates/characters/1230_characters_character_reputation.sql"
    "/opt/riboncore/sql/updates/characters/803_characters_character_db_version.sql"
    "/opt/riboncore/sql/updates/characters/573_character_updates_dual_spec.sql"
    "/opt/riboncore/sql/updates/characters/998_characters_data.sql"
    "/opt/riboncore/sql/updates/characters/379_mangos_8339_characters.sql"
    "/opt/riboncore/sql/updates/characters/544_characters_channels.sql"
    "/opt/riboncore/sql/updates/characters/718_8409_characters_guild.sql"
    "/opt/riboncore/sql/updates/characters/1287_character_characters_guild.sql"
    "/opt/riboncore/sql/updates/characters/502_character_updates_dual_spec.sql"
    "/opt/riboncore/sql/updates/characters/712_8402_characters_guild_eventlog.sql"
    "/opt/riboncore/sql/updates/characters/1093_characters_character.sql"
    "/opt/riboncore/sql/updates/characters/1065_characters_reputation.sql"
    "/opt/riboncore/sql/updates/characters/1418_characters_character_aura.sql"
    "/opt/riboncore/sql/updates/characters/560_characters.sql"
    "/opt/riboncore/sql/updates/characters/1745_characters_instance_reset.sql"
    "/opt/riboncore/sql/updates/characters/990_characters_character_group.sql"
    "/opt/riboncore/sql/updates/characters/990_characters_converter.sql"
    "/opt/riboncore/sql/updates/characters/841_characters_character_account_data.sql"
    "/opt/riboncore/sql/updates/characters/711_8397_characters_character_spell.sql"
    "/opt/riboncore/sql/updates/characters/799_8433_characters_character_account_data.sql"
    "/opt/riboncore/sql/updates/characters/864_characters_character_spell.sql"
    "/opt/riboncore/sql/updates/characters/712_8402_characters_guild_bank_eventlog.sql"
    "/opt/riboncore/sql/updates/characters/894_characters_game_event.sql"
    "/opt/riboncore/sql/updates/characters/455_character_updates_dual_spec.sql"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

