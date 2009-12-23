ALTER TABLE version CHANGE COLUMN required_1552_world_gameobject_template required_1567_world_scripts bit;

UPDATE `creature_template` SET `ScriptName`='npc_death_ravager' WHERE `entry`=17556;
UPDATE `gameobject_template` SET `ScriptName`='go_ravager_cage' WHERE `entry`=181849;
UPDATE `creature_template` SET `ScriptName`='npc_enraged_panther' WHERE `entry`=10992;
UPDATE `gameobject_template` SET `ScriptName`='go_panther_cage' WHERE `entry`=176195;
