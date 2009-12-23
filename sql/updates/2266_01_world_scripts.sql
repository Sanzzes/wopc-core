ALTER TABLE version CHANGE COLUMN required_2263_01_world_scripts required_2266_01_world_scripts bit;

UPDATE creature_template SET ScriptName='npc_locksmith' WHERE entry IN (29665,29725,29728);