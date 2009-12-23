ALTER TABLE version CHANGE COLUMN required_2259_01_world_script required_2263_01_world_scripts bit;

UPDATE creature_template SET ScriptName='npc_tabard_vendor' WHERE entry=28776;