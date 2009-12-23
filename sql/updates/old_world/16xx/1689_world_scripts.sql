ALTER TABLE version CHANGE COLUMN required_1659_world_scripts required_1689_world_scripts bit;

UPDATE `instance_template` SET `script`='instance_culling_of_stratholme' WHERE (`map`='595');
UPDATE `creature_template` SET `ScriptName`='boss_meathook' WHERE (`entry`='26529');
UPDATE `creature_template` SET `ScriptName`='boss_salramm' WHERE (`entry`='26530');
UPDATE `creature_template` SET `ScriptName`='boss_epoch' WHERE (`entry`='26532');
UPDATE `creature_template` SET `ScriptName`='boss_mal_ganis' WHERE (`entry`='26533');
UPDATE `creature_template` SET `ScriptName`='boss_infinite' WHERE (`entry`='32273');
UPDATE `gameobject` SET `spawntimesecs`='-604800' WHERE `id` IN (190663,193597);
UPDATE `gameobject_template` SET `faction` = 0 WHERE `entry` IN (190663,193597);
