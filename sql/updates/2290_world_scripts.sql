ALTER TABLE version CHANGE COLUMN required_2267_01_world_creature required_2290_01_world_scripts bit;

UPDATE `creature_template` SET `Scriptname`='npc_sinkhole_kill_credit' WHERE `entry`
IN (25402, 25403, 25404, 25405);