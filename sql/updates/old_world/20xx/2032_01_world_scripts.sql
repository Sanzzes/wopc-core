ALTER TABLE version CHANGE COLUMN required_2031_01_world_scripts required_2032_01_world_scripts bit;

UPDATE creature_template SET ScriptName='npc_mana_bomb_exp_trigger' WHERE entry=20767;

UPDATE gameobject_template SET ScriptName='go_mana_bomb' WHERE entry=184725;

DELETE FROM script_texts WHERE entry BETWEEN -1000476 AND -1000472;
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1000472,'1...',0,3,0,0,'mana bomb SAY_COUNT_1'),
(-1000473,'2...',0,3,0,0,'mana bomb SAY_COUNT_2'),
(-1000474,'3...',0,3,0,0,'mana bomb SAY_COUNT_3'),
(-1000475,'4...',0,3,0,0,'mana bomb SAY_COUNT_4'),
(-1000476,'5...',0,3,0,0,'mana bomb SAY_COUNT_5');