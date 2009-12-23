ALTER TABLE version CHANGE COLUMN required_1540_multi_passengers_support required_1542_world_scripts bit;

UPDATE `creature_template` SET `ScriptName`='mob_faerlina_add' WHERE `entry`=16506;
