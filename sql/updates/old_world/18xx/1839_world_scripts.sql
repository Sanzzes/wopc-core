ALTER TABLE version CHANGE COLUMN required_1832_world_scripts required_1839_world_scripts bit;

UPDATE `creature_template` SET `ScriptName`='boss_gelihast' WHERE `entry`=6243;
UPDATE `creature_template` SET `ScriptName`='boss_kelris' WHERE `entry`=4832;
UPDATE `creature_template` SET `ScriptName`='boss_aku_mai' WHERE `entry`=4829;
