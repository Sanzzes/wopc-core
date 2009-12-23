ALTER TABLE version CHANGE COLUMN required_1575_world_spell_elixir required_1576_world_01_playercreateinfo_spell bit;

UPDATE `playercreateinfo_spell` SET `spell` = 26297 WHERE `spell` IN (20554,26296,50621);
