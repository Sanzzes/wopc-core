ALTER TABLE version CHANGE COLUMN required_1860_world_spells required_1878_world_scripts bit;

UPDATE `gameobject_template` SET `ScriptName`='go_blood_filled_orb' WHERE `entry`=182024;
