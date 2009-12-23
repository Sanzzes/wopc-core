ALTER TABLE version CHANGE COLUMN required_2146_01_world_scripts required_2154_01_world_scripts bit;

UPDATE `creature_template` SET `ScriptName`='mob_ethereal_sphere' WHERE `entry`=29271;
