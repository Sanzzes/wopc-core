ALTER TABLE version CHANGE COLUMN required_2122_01_world_scripts required_2128_01_world_spells bit;

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (-54361, -59743);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(-54361, 54343, 0, 'Void Shift (Normal) - Void Shifted'),
(-59743, 54343, 0, 'Void Shift (Heroic) - Void Shifted');
