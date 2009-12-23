ALTER TABLE version CHANGE COLUMN required_1628_world_spell required_1630_world_scripts bit;
UPDATE `creature_template` SET `ScriptName`='mob_palehoof_orb' WHERE `entry`=26688;