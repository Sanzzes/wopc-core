ALTER TABLE version CHANGE COLUMN required_1715_world_scripts required_1716_world_scripts bit;

UPDATE `gameobject_template` SET `ScriptName`='go_arcane_prison' WHERE `entry`=187561;
