ALTER TABLE version CHANGE COLUMN required_2033_01_world_scripts required_2034_01_world_scripts bit;

UPDATE gameobject_template SET ScriptName='go_jump_a_tron' WHERE entry=183146;