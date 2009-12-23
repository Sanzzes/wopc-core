ALTER TABLE version CHANGE COLUMN required_1627_world_spell required_1628_world_spell bit;
DELETE FROM spell_linked_spell where spell_trigger = -34123;
INSERT INTO `spell_linked_spell` VALUES ('-34123', '-33891', '0', 'Tree of Life (form fix');