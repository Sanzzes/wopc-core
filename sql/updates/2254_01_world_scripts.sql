ALTER TABLE version CHANGE COLUMN required_2253_01_world_battleground_system required_2254_01_world_scripts bit;

DELETE FROM areatrigger_scripts WHERE entry IN (4871, 4872, 4873);
INSERT INTO areatrigger_scripts VALUES
(4871,'at_warsong_grainery'),
(4872,'at_torp_farm'),
(4873,'at_warsong_slaughterhouse');