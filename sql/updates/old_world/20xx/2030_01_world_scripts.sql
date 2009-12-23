ALTER TABLE version CHANGE COLUMN required_2029_1111_world_scripts required_2030_01_world_scripts bit;

UPDATE creature_template SET ScriptName='npc_demoniac_scryer' WHERE entry=22258;