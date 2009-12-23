ALTER TABLE version CHANGE COLUMN required_2242_01_world_scripts required_2251_01_world_scripts bit;

UPDATE creature_template SET ScriptName='npc_lunaclaw_spirit' WHERE entry=12144;