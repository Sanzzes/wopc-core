ALTER TABLE version CHANGE COLUMN required_1658_world_spell required_1659_world_scripts bit;
UPDATE `gameobject_template` SET `ScriptName`='go_scourge_cage' WHERE `entry` IN (187854, 187855, 187856, 187857, 187858, 187859, 187860, 187862, 187863, 187864, 187865, 187866, 187867, 187868, 187870, 187871, 187872, 187873, 187874, 187861, 190803);
