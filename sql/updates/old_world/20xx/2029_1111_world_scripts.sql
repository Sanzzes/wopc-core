ALTER TABLE version CHANGE COLUMN required_2016_01_deathknight_fixes required_2029_1111_world_scripts bit;

UPDATE creature_template SET ScriptName='npc_roxi_ramrocket' WHERE entry=31247;