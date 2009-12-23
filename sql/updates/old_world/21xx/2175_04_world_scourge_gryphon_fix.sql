ALTER TABLE version CHANGE COLUMN required_2175_03_world_ra_commands required_2175_04_world_scourge_gryphon_fix bit;

DELETE FROM `creature_template` WHERE entry = 29488;
DELETE FROM `creature_template` WHERE entry = 29501;

INSERT INTO `creature_template` VALUES (29488, 0, 0, 0, 0, 0, 26308, 0, 26308, 0, 'Scourge Gryphon', '', 'Taxi', 0, 53, 54, 4906, 5066, 0, 0, 3168, 2100, 2100, 3, 1, 1, 0, 86, 130, 0, 32, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 69, 104, 26, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 213, 1, 0, 0, 0, 'npc_acherus_taxi');
INSERT INTO `creature_template` VALUES (29501, 0, 0, 0, 0, 0, 26308, 0, 26308, 0, 'Scourge Gryphon', '', 'Taxi', 0, 53, 54, 4906, 5066, 0, 0, 3168, 2100, 2100, 3, 1, 1, 0, 86, 130, 0, 32, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 69, 104, 26, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 213, 1, 0, 0, 0, 'npc_acherus_taxi');
