ALTER TABLE version CHANGE COLUMN required_1545_world_scripts required_1552_world_gameobject_template bit;

DELETE FROM `gameobject_template` WHERE `entry` IN (192642,192643,194395,191877);

INSERT INTO `gameobject_template`
(`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`) VALUES
(192642, 0, 8308, 'Doodad_Dalaran_SewerDoor_01', 114, 0, 2, 0),
(192643, 0, 8308, 'Doodad_Dalaran_SewerDoor_02', 114, 0, 2, 0),
(194395, 0, 8592, 'Doodad_DalaranSewer_ArenaWaterFall_Collision01', 0, 0, 1.3, 0),
(191877, 0, 8320, 'Doodad_DalaranSewer01', 0, 0, 1.3, 1);