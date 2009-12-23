ALTER TABLE version CHANGE COLUMN required_2251_01_world_scripts required_2252_01_world_script bit;

UPDATE creature_template SET ScriptName='npc_spirit_guide' WHERE entry IN (13116, 13117);