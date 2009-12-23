ALTER TABLE version CHANGE COLUMN required_2154_01_world_scripts required_2156_01_world_scripts bit;

UPDATE `creature_template` SET `ScriptName`='mob_ichor_globule' WHERE `entry`=29321;
