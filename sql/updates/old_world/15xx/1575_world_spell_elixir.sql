ALTER TABLE version CHANGE COLUMN required_1567_world_scripts required_1575_world_spell_elixir bit;

DELETE FROM `spell_elixir` WHERE `entry` IN (67016,67017,67018); 
/* Flasks added in 3.2.x */
INSERT INTO `spell_elixir` (`entry`, `mask`) VALUES
(67016,0x3),
(67017,0x3),
(67018,0x3);
 
