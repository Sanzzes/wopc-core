ALTER TABLE version CHANGE COLUMN required_1996_01_world_scripts required_1998_01_world_spells bit;

DELETE FROM `spell_script_target` WHERE `entry`=45364;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(45364,1,25478);
