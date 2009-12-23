ALTER TABLE version CHANGE COLUMN required_2034_01_world_scripts required_2042_01_world_spell_pet_auras bit;

DELETE FROM spell_pet_auras WHERE aura = 57989;

INSERT INTO `spell_pet_auras` VALUES
(58228, 0, 19668, 57989);