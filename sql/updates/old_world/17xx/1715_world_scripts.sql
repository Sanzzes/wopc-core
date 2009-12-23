ALTER TABLE version CHANGE COLUMN required_1710_world_ixilium_string required_1715_world_scripts bit;

UPDATE `creature_template` SET `ScriptName`='npc_lunaclaw_spirit' WHERE `entry`=12144;
