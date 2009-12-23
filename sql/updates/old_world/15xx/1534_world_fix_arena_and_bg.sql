ALTER TABLE version CHANGE COLUMN required_1522_fix_power_word_shield required_1534_world_fix_arena_and_bg bit;
DELETE FROM `gameobject_template` WHERE (`entry`=179831);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, 
`name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, 
`size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, 
`questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, 
`data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, 
`data11`, `data12`, `data13`, `data14`, `data15`, `data16`, 
`data17`, `data18`, `data19`, `data20`, `data21`, `data22`, 
`data23`, `ScriptName`) VALUES (179831, 24, 5913, 'Warsong Flag', 
'', '', '', 210, 0, 2.5, 0, 0, 0, 0, 0, 0, 0, 61266, 11, 23335, 
23389, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `gameobject_template` WHERE (`entry`=179830);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, 
`name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, 
`size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, 
`questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, 
`data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, 
`data11`, `data12`, `data13`, `data14`, `data15`, `data16`, 
`data17`, `data18`, `data19`, `data20`, `data21`, `data22`, 
`data23`, `ScriptName`) VALUES (179830, 24, 5912, 'Silverwing Flag', 
'', '', '', 1314, 0, 2.5, 0, 0, 0, 0, 0, 0, 0, 61265, 11, 23333, 
23390, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `gameobject` WHERE `id` = 180255;
DELETE FROM `gameobject` WHERE `id` = 180256;
DELETE FROM `gameobject` WHERE `id` = 180424;
DELETE FROM `gameobject` WHERE `id` = 183971;
DELETE FROM `gameobject` WHERE `id` = 183973;
DELETE FROM `gameobject` WHERE `id` = 183970;
DELETE FROM `gameobject` WHERE `id` = 183972;
DELETE FROM `gameobject` WHERE `id` = 184719;
DELETE FROM `gameobject` WHERE `id` = 184720;
DELETE FROM `gameobject` WHERE `id` = 183978;
DELETE FROM `gameobject` WHERE `id` = 183980;
DELETE FROM `gameobject` WHERE `id` = 183977;
DELETE FROM `gameobject` WHERE `id` = 183979;
DELETE FROM `gameobject` WHERE `id` = 185918;
DELETE FROM `gameobject` WHERE `id` = 185917;
DELETE FROM `gameobject` WHERE `id` = 179918;
DELETE FROM `gameobject` WHERE `id` = 179919;
DELETE FROM `gameobject` WHERE `id` = 179920;
DELETE FROM `gameobject` WHERE `id` = 179921;
DELETE FROM `gameobject` WHERE `id` = 180322;
DELETE FROM `gameobject` WHERE `id` = 180322;
DELETE FROM `gameobject` WHERE `id` = 179916;
DELETE FROM `gameobject` WHERE `id` = 179917;
DELETE FROM `gameobject` WHERE `id` = 180322;
DELETE FROM `gameobject` WHERE `id` = 180322;