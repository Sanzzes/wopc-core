ALTER TABLE version CHANGE COLUMN required_1496_world_scripts required_1507_world_scripts bit;

UPDATE `creature_template` SET `ScriptName`='mob_loatheb_spore' WHERE `entry`=16286;
