ALTER TABLE version CHANGE COLUMN required_2255_01_world_scripts required_2259_01_world_script bit;

UPDATE creature_template SET ScriptName='' WHERE npcflag!=npcflag|65536 AND ScriptName='npc_innkeeper';

UPDATE creature_template SET ScriptName='npc_innkeeper' WHERE npcflag=npcflag|65536;