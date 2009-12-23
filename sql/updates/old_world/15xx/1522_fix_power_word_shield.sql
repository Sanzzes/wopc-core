ALTER TABLE version CHANGE COLUMN required_1517_world_ribon_string required_1522_fix_power_word_shield bit;
DELETE FROM `spell_bonus_data` WHERE (`entry`='17');

DELETE FROM `spell_learn_spell` WHERE SpellId IN (5420, 5419, 21178, 21156, 7376, 7381, 33948, 34764);