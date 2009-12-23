ALTER TABLE version CHANGE COLUMN required_1635_world_quest_template required_1639_world_scripts bit;


UPDATE `creature_template` SET `ScriptName` = 'npcs_andorhal_tower' WHERE `entry` = 10902;
UPDATE `creature_template` SET `ScriptName` = 'npcs_andorhal_tower' WHERE `entry` = 10903;
UPDATE `creature_template` SET `ScriptName` = 'npcs_andorhal_tower' WHERE `entry` = 10904;
UPDATE `creature_template` SET `ScriptName` = 'npcs_andorhal_tower' WHERE `entry` = 10905;