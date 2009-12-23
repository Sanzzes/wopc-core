ALTER TABLE version CHANGE COLUMN required_2012_01_world_spell_proc_event required_2012_02_world_spell_learn_spell bit;

DELETE FROM spell_learn_spell WHERE SpellID = 56816;
INSERT INTO spell_learn_spell VALUES (56815, 56816, 0);
