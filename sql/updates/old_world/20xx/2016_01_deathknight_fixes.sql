ALTER TABLE version CHANGE COLUMN required_2012_02_world_spell_learn_spell required_2016_01_deathknight_fixes bit;

-- Fix the scarlet cannons & Spawns
DELETE FROM creature_template WHERE entry IN (28833,28887);
INSERT INTO creature_template (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
('28833','0','0','0','0','0','25723','0','25723','0','Scarlet Cannon','','Gunner','55','55','26140','26140','0','0','3189','35','35','0','0','1','0','129','164','0','44','1.4','2000','1500','2','0','0','0','0','0','0','0','68','96','35','10','0','0','0','0','0','0','0','0','0','0','52435','52576','0','0','52588','0','0','0','0','79','0','0','','0','3','10','1','0','0','0','0','0','0','1','0','0','0',''),
('28887','0','0','0','0','0','25723','0','25723','0','Scarlet Cannon','','','55','55','26140','26140','0','0','3189','35','35','0','0','1','0','129','164','0','44','1.4','2000','1500','2','0','0','0','0','0','0','0','68','96','35','10','0','0','0','0','0','0','0','0','0','0','52435','52576','0','0','52588','0','0','0','0','68','0','0','','0','3','10','1','0','0','0','0','0','0','1','0','0','0','');

DELETE FROM creature WHERE guid IN (130112,130113,130114,130115,130116,130117);
INSERT INTO creature (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('130112','28887','609','1','1','25723','0','2104.74','-6179.82','13.47','1.22173','360','0','0','26140','0','0','0'),
('130113','28887','609','1','1','25723','0','2253.24','-6193.09','13.4068','1.85005','360','0','0','26140','0','0','0'),
('130114','28887','609','1','1','25723','0','2264.77','-6189.18','13.6959','1.8326','360','0','0','26140','0','0','0'),
('130115','28887','609','1','1','25723','0','2259.07','-6191.02','13.4886','1.8326','360','0','0','26140','0','0','0'),
('130116','28887','609','1','1','25723','0','2116.39','-6183.81','13.7587','1.22173','360','0','0','26140','0','0','0'),
('130117','28887','609','1','1','25723','0','2110.8','-6181.86','13.5539','1.25664','360','0','0','26140','0','0','0');

-- Set workaround for Massacre At Light's Point if unable to do
UPDATE quest_template SET Method = 0 WHERE entry = 12701;

-- Patchwerk melee speed
UPDATE creature_template SET baseattacktime = 1500 WHERE entry = 31099;

-- DK Teleporter Spawn & Templates
INSERT INTO creature_template (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleID`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(200000, 0, 0, 0, 0, 0, 25352, 0, 25352, 0, 'Down-kin Sarrowsong', 'Death Knight Initiate', '', 83, 83, 750000, 750000, 0, 0, 0, 35, 35, 1, 1, 1, 1, 2500, 2500, 0, 100, 1, 271500, 0, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '',0, 3, 0, 0, 0, 1, 0, 0, 0, 'npc_dk_teleport'),
(200001, 0, 0, 0, 0, 0, 25352, 0, 25352, 0, 'Up-Kin Sarrowsong', 'Death Knight Initiate', '', 83, 83, 750000, 750000, 0, 0, 0, 35, 35, 1, 1, 1, 1, 2500, 2500, 0, 100, 1, 271500, 0, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '',0, 3, 0, 0, 0, 1, 0, 0, 0, 'npc_dk_teleport'),
(200002, 0, 0, 0, 0, 0, 25352, 0, 25352, 0, 'Down-kin Sarrowsong', 'Death Knight Initiate', '', 83, 83, 750000, 750000, 0, 0, 0, 35, 35, 1, 1, 1, 1, 2500, 2500, 0, 100, 1, 271500, 0, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '',0, 3, 0, 0, 0, 1, 0, 0, 0, 'npc_dk_teleport_epl'),
(200003, 0, 0, 0, 0, 0, 25352, 0, 25352, 0, 'Up-Kin Sarrowsong', 'Death Knight Initiate', '', 83, 83, 750000, 750000, 0, 0, 0, 35, 35, 1, 1, 1, 1, 2500, 2500, 0, 100, 1, 271500, 0, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '',0, 3, 0, 0, 0, 1, 0, 0, 0, 'npc_dk_teleport_epl');
DELETE FROM creature WHERE id IN (200000, 200001, 200002, 200003);
INSERT INTO creature VALUES 

-- Phase 1
(NULL,200000,609,1,1,0,0,2397.26,-5643.85,420.805,2.87798,25,0,0,750000,750000,0,0),
(NULL,200000,609,1,4,0,0,2397.26,-5643.85,420.805,2.87798,25,0,0,750000,750000,0,0),
(NULL,200000,609,1,64,0,0,2397.26,-5643.85,420.805,2.87798,25,0,0,750000,750000,0,0),

(NULL,200001,609,1,1,0,0,2401.02,-5641.24,377.055,2.71032,25,0,0,750000,750000,0,0),
(NULL,200001,609,1,4,0,0,2401.02,-5641.24,377.055,2.71032,25,0,0,750000,750000,0,0),
(NULL,200001,609,1,64,0,0,2401.02,-5641.24,377.055,2.71032,25,0,0,750000,750000,0,0),

-- Phase 2
(NULL,200002,0,1,1,0,0,2397.26,-5643.85,420.805,2.87798,25,0,0,750000,750000,0,0),
(NULL,200002,0,1,384,0,0,2397.26,-5643.85,420.805,2.87798,25,0,0,750000,750000,0,0),

(NULL,200003,0,1,1,0,0,2401.02,-5641.24,377.055,2.71032,25,0,0,750000,750000,0,0),
(NULL,200003,0,1,384,0,0,2401.02,-5641.24,377.055,2.71032,25,0,0,750000,750000,0,0);

-- New Avalon Registry into Mayor Quimby's loot
UPDATE creature_template set LootID = 28945 WHERE entry = 28945;
DELETE FROM creature_loot_template WHERE entry = 28945 AND item = 39362;
INSERT INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES 
(28945, 39362, 100, 0, 1, 1, 0, 0, 0);