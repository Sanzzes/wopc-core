ALTER TABLE version CHANGE COLUMN required_1998_01_world_spells required_2004_01_world_spell_link bit;

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`= 33381;
INSERT INTO `spell_linked_spell` VALUES ('33381', '33382', '0', 
'Jump-a-tron 4000 (temp fix)');