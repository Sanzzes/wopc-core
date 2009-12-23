ALTER TABLE version CHANGE COLUMN required_1605_world_battlegrounds required_1627_world_spell bit;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`= 52610;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`= -52610;