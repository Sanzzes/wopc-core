ALTER TABLE version CHANGE COLUMN required_2080_2083_world_spell_proc_event required_2090_01_world_vehicle_datas bit;

-- valley of shadows
UPDATE `creature_template` SET `spell1`='52362', `VehicleId`='135' WHERE `entry`='28782';
DELETE FROM `npc_spellclick_spells` WHERE npc_entry in (28782);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES (28782, 52349, 12687, 1, 12687, 3);

-- grand theft palomino
DELETE FROM spell_script_target WHERE `entry`=52264;	
INSERT INTO spell_script_target VALUES (52264,1,28653);
DELETE FROM `npc_spellclick_spells` WHERE npc_entry in (28605,28606,28607);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES (28605, 52263, 12680, 1, 12680, 3);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES (28606, 52263, 12680, 1, 12680, 3);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES (28607, 52263, 12680, 1, 12680, 3);
UPDATE `creature_template` SET `spell1`='52264', `spell2`='52268', `VehicleId`='123' WHERE `entry` IN (28605,28606,28607);

-- Argent tournament
UPDATE creature_template SET speed = '1.5', unit_flags = 8 WHERE entry IN (33844,33845);
UPDATE `creature_template` SET `spell1`='62544', `spell2`='62575', `spell3`='62960', `spell4`='62552', `spell5`='64077', `spell6`='62863', `spell8`='62853', `VehicleId`='349' WHERE `entry` IN (33844,33845);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('33842', '63791', '13829', '1', '0', '3');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('33842', '63791', '13839', '1', '0', '3');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('33842', '63791', '13838', '1', '0', '3');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('33843', '63792', '13828', '1', '0', '3');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('33843', '63792', '13837', '1', '0', '3');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('33843', '63792', '13835', '1', '0', '3');


-- Massacre At Light's Point
UPDATE `creature_template` SET `minhealth` = 26140, `maxhealth` = 26140, `dynamicflags` = 0, `minmana` = 2117, `maxmana` = 2117, `unit_flags` = 772, `minlevel` = 55, `maxlevel` = 55, `unk16` = 10, `unk17` = 1, `InhabitType` = 3, `scale` = 1, `mindmg` = 685, `maxdmg` = 715, `armor` = 3232, `attackpower` = 214, `unit_class` = 2, `type` = 10  WHERE `entry` = 28833;
UPDATE `creature_template` SET `minhealth` = 26140, `maxhealth` = 26140, `dynamicflags` = 0, `minmana` = 0, `maxmana` = 0, `unit_flags` = 772, `minlevel` = 55, `maxlevel` = 55, `unk16` = 10, `unk17` = 1, `InhabitType` = 3, `scale` = 1, `mindmg` = 685, `maxdmg` = 715, `armor` = 3232, `attackpower` = 214, `unit_class` = 2, `type` = 10  WHERE `entry` = 28887;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('28833', '52447', '12701', '1', '12701', '1');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('28887', '52447', '12701', '1', '12701', '1');
UPDATE `creature_template` SET `spell1`='52435', `spell2`='52576', `spell5`='52588', `VehicleId`='68' WHERE `entry` IN (28887,28833);


-- Traveler's Tundra Mammoth
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES (32633, 52196, 0, 0, 0, 0);
UPDATE `creature_template` SET `VehicleId`='312' WHERE `entry`='32633';

-- Grand Ice Mammoth
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES (31857, 52196, 0, 0, 0, 0);
UPDATE `creature_template` SET `VehicleId`='312' WHERE `entry`='31857';

-- Salvaged Chopper
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES (33062, 52196, 0, 0, 0, 0);
UPDATE `creature_template` SET `spell1`='62974', `spell2`='62286', `spell3`='62299', `spell4`='64660', `VehicleId`='335' WHERE `entry`='33062';


-- Salvaged Demolisher
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES (33109, 52196, 0, 0, 0, 0);
UPDATE `creature_template` SET `spell1`='62306', `spell2`='62490', `spell3`='62308', `spell4`='62324', `VehicleId`='338' WHERE `entry`='33109';
 

-- Salvaged Siege Engine
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES (33060, 52196, 0, 0, 0, 0); 
UPDATE `creature_template` SET `spell1`='62345', `spell2`='62522', `spell3`='62346', `VehicleId`='336' WHERE `entry`='33060';

-- MAIN -- 
-- The Argent Tournament --

UPDATE `creature_template` SET `spell1`='0', `spell2`='0', `spell3`='0', `spell4`='0', `spell5`='0', `spell6`='0', `spell7`='0', `spell8`='0' WHERE `entry` IN (33843,33794,33800,33793,33795,33790,33842,33796,33798,33799,33791,33792);

-- Add Vehicle Support to Stabled Quel'dorei Steed (33843)

UPDATE `creature_template` SET `spell1` = 62544, `spell2` = 62575 WHERE `entry` = 33843;
UPDATE `creature_template` SET `speed` = 1, `unit_flags` = 32768, `movementId` = 164 WHERE `entry` = 33843;
UPDATE `creature_template` SET `spell3` = 62960 WHERE `entry` = 33843;
UPDATE `creature_template` SET `spell4` = 62552 WHERE `entry` = 33843;
UPDATE `creature_template` SET `spell6` = 62863 WHERE `entry` = 33843;

-- Add Vehicle Support to Stabled Darnassian Mistsaber (33794)

UPDATE `creature_template` SET `spell1` = 62544, `spell2` = 62575 WHERE `entry` = 33794;
UPDATE `creature_template` SET `speed` = 1, `unit_flags` = 32768, `movementId` = 164 WHERE `entry` = 33794;
UPDATE `creature_template` SET `spell3` = 62960 WHERE `entry` = 33794;
UPDATE `creature_template` SET `spell4` = 62552 WHERE `entry` = 33794;
UPDATE `creature_template` SET `spell6` = 62863 WHERE `entry` = 33794;


-- Add Vehicle Support to Stabled Elwynn Steed (33800)

UPDATE `creature_template` SET `spell1` = 62544, `spell2` = 62575 WHERE `entry` = 33800;
UPDATE `creature_template` SET `speed` = 1, `unit_flags` = 32768, `movementId` = 164 WHERE `entry` = 33800;
UPDATE `creature_template` SET `spell3` = 62960 WHERE `entry` = 33800;
UPDATE `creature_template` SET `spell4` = 62552 WHERE `entry` = 33800;
UPDATE `creature_template` SET `spell6` = 62863 WHERE `entry` = 33800;

-- Add Vehicle Support to NPC Stabled Turbostrider (33793)

UPDATE `creature_template` SET `spell1` = 62544, `spell2` = 62575 WHERE `entry` = 33793;
UPDATE `creature_template` SET `speed` = 1, `unit_flags` = 32768, `movementId` = 164 WHERE `entry` = 33793;
UPDATE `creature_template` SET `spell3` = 62960 WHERE `entry` = 33793;
UPDATE `creature_template` SET `spell4` = 62552 WHERE `entry` = 33793;
UPDATE `creature_template` SET `spell6` = 62863 WHERE `entry` = 33793;

-- Add Vehicle Support to NPC Stabled Ironfoge Ram (33795)

UPDATE `creature_template` SET `spell1` = 62544, `spell2` = 62575 WHERE `entry` = 33795;
UPDATE `creature_template` SET `speed` = 1, `unit_flags` = 32768, `movementId` = 164 WHERE `entry` = 33795;
UPDATE `creature_template` SET `spell3` = 62960 WHERE `entry` = 33795;
UPDATE `creature_template` SET `spell4` = 62552 WHERE `entry` = 33795;
UPDATE `creature_template` SET `spell6` = 62863 WHERE `entry` = 33795;

-- Add Vehicle Support to NPC Stabled Azuremyst Elekk (33790)

UPDATE `creature_template` SET `spell1` = 62544, `spell2` = 62575 WHERE `entry` = 33790;
UPDATE `creature_template` SET `speed` = 1, `unit_flags` = 32768, `movementId` = 164 WHERE `entry` = 33790;
UPDATE `creature_template` SET `spell3` = 62960 WHERE `entry` = 33790;
UPDATE `creature_template` SET `spell4` = 62552 WHERE `entry` = 33790;
UPDATE `creature_template` SET `spell6` = 62863 WHERE `entry` = 33790;

-- Add Vehicle Support to NPC Stabled Sunreaver Hawksrider (33842)

UPDATE `creature_template` SET `spell1` = 62544, `spell2` = 62575 WHERE `entry` = 33842;
UPDATE `creature_template` SET `speed` = 1, `unit_flags` = 32768, `movementId` = 164 WHERE `entry` = 33842;
UPDATE `creature_template` SET `spell3` = 62960 WHERE `entry` = 33842;
UPDATE `creature_template` SET `spell4` = 62552 WHERE `entry` = 33842;
UPDATE `creature_template` SET `spell6` = 62863 WHERE `entry` = 33842;

-- Add Vehicle Support to NPC Stabled Darkspear Raptor (33796)

UPDATE `creature_template` SET `spell1` = 62544, `spell2` = 62575 WHERE `entry` = 33796;
UPDATE `creature_template` SET `speed` = 1, `unit_flags` = 32768, `movementId` = 164 WHERE `entry` = 33796;
UPDATE `creature_template` SET `spell3` = 62960 WHERE `entry` = 33796;
UPDATE `creature_template` SET `spell4` = 62552 WHERE `entry` = 33796;
UPDATE `creature_template` SET `spell6` = 62863 WHERE `entry` = 33796;

-- Add Vehicle Support to NPC Stabled Darkspear Raptor (33798)

UPDATE `creature_template` SET `spell1` = 62544, `spell2` = 62575 WHERE `entry` = 33798;
UPDATE `creature_template` SET `speed` = 1, `unit_flags` = 32768, `movementId` = 164 WHERE `entry` = 33798;
UPDATE `creature_template` SET `spell3` = 62960 WHERE `entry` = 33798;
UPDATE `creature_template` SET `spell4` = 62552 WHERE `entry` = 33798;
UPDATE `creature_template` SET `spell6` = 62863 WHERE `entry` = 33798;

-- Add Vehicle Support to NPC Stabled Orgrimmar Wolf (33799)

UPDATE `creature_template` SET `spell1` = 62544, `spell2` = 62575 WHERE `entry` = 33799;
UPDATE `creature_template` SET `speed` = 1, `unit_flags` = 32768, `movementId` = 164 WHERE `entry` = 33799;
UPDATE `creature_template` SET `spell3` = 62960 WHERE `entry` = 33799;
UPDATE `creature_template` SET `spell4` = 62552 WHERE `entry` = 33799;
UPDATE `creature_template` SET `spell6` = 62863 WHERE `entry` = 33799;

-- Add Vehicle Support to NPC Stabled Silvermoon Hawksrider (33791)

UPDATE `creature_template` SET `spell1` = 62544, `spell2` = 62575 WHERE `entry` = 33791;
UPDATE `creature_template` SET `speed` = 1, `unit_flags` = 32768, `movementId` = 164 WHERE `entry` = 33791;
UPDATE `creature_template` SET `spell3` = 62960 WHERE `entry` = 33791;
UPDATE `creature_template` SET `spell4` = 62552 WHERE `entry` = 33791;
UPDATE `creature_template` SET `spell6` = 62863 WHERE `entry` = 33791;

-- Add Vehicle Support to NPC Stabled Mulgore Kodod (33791)

UPDATE `creature_template` SET `spell1` = 62544, `spell2` = 62575 WHERE `entry` = 33792;
UPDATE `creature_template` SET `speed` = 1, `unit_flags` = 32768, `movementId` = 164 WHERE `entry` = 33792;
UPDATE `creature_template` SET `spell3` = 62960 WHERE `entry` = 33792;
UPDATE `creature_template` SET `spell4` = 62552 WHERE `entry` = 33792;
UPDATE `creature_template` SET `spell6` = 62863 WHERE `entry` = 33792;

-- Fix up Lances for Alli and Hord (46069 & 46070)

UPDATE `item_template` SET `AllowableRace` = 1101 WHERE `entry` = 46069;
UPDATE `item_template` SET `AllowableRace` = 690 WHERE `entry` = 46070;

-- Change Speed, Spell5 and Vehicle ID for the NPCs

UPDATE `creature_template` SET `VehicleId` = 349 WHERE `entry` = 33843;
UPDATE `creature_template` SET `VehicleId` = 349 WHERE `entry` = 33794;
UPDATE `creature_template` SET `VehicleId` = 349 WHERE `entry` = 33800;
UPDATE `creature_template` SET `VehicleId` = 349 WHERE `entry` = 33793;
UPDATE `creature_template` SET `VehicleId` = 349 WHERE `entry` = 33795;
UPDATE `creature_template` SET `VehicleId` = 349 WHERE `entry` = 33790;
UPDATE `creature_template` SET `VehicleId` = 349 WHERE `entry` = 33842;
UPDATE `creature_template` SET `VehicleId` = 349 WHERE `entry` = 33796;
UPDATE `creature_template` SET `VehicleId` = 349 WHERE `entry` = 33798;
UPDATE `creature_template` SET `VehicleId` = 349 WHERE `entry` = 33799;
UPDATE `creature_template` SET `VehicleId` = 349 WHERE `entry` = 33791;
UPDATE `creature_template` SET `VehicleId` = 349 WHERE `entry` = 33792;

UPDATE `creature_template` SET `speed` = 2 WHERE `entry` = 33843;
UPDATE `creature_template` SET `speed` = 2 WHERE `entry` = 33794;
UPDATE `creature_template` SET `speed` = 2 WHERE `entry` = 33800;
UPDATE `creature_template` SET `speed` = 2 WHERE `entry` = 33793;
UPDATE `creature_template` SET `speed` = 2 WHERE `entry` = 33795;
UPDATE `creature_template` SET `speed` = 2 WHERE `entry` = 33790;
UPDATE `creature_template` SET `speed` = 2 WHERE `entry` = 33842;
UPDATE `creature_template` SET `speed` = 2 WHERE `entry` = 33796;
UPDATE `creature_template` SET `speed` = 2 WHERE `entry` = 33798;
UPDATE `creature_template` SET `speed` = 2 WHERE `entry` = 33799;
UPDATE `creature_template` SET `speed` = 2 WHERE `entry` = 33791;
UPDATE `creature_template` SET `speed` = 2 WHERE `entry` = 33792;

UPDATE `creature_template` SET `spell5` = 64077 WHERE `entry` = 33843;
UPDATE `creature_template` SET `spell5` = 64077 WHERE `entry` = 33794;
UPDATE `creature_template` SET `spell5` = 64077 WHERE `entry` = 33800;
UPDATE `creature_template` SET `spell5` = 64077 WHERE `entry` = 33793;
UPDATE `creature_template` SET `spell5` = 64077 WHERE `entry` = 33795;
UPDATE `creature_template` SET `spell5` = 64077 WHERE `entry` = 33790;
UPDATE `creature_template` SET `spell5` = 64077 WHERE `entry` = 33842;
UPDATE `creature_template` SET `spell5` = 64077 WHERE `entry` = 33796;
UPDATE `creature_template` SET `spell5` = 64077 WHERE `entry` = 33798;
UPDATE `creature_template` SET `spell5` = 64077 WHERE `entry` = 33799;
UPDATE `creature_template` SET `spell5` = 64077 WHERE `entry` = 33791;
UPDATE `creature_template` SET `spell5` = 64077 WHERE `entry` = 33792;