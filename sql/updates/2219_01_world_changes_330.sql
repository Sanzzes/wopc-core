ALTER TABLE version CHANGE COLUMN required_2214_01_world_scriptnames required_2219_01_world_changes_330 bit;

INSERT INTO `achievement_criteria_requirement` VALUES
(12738, 0, 0, 0),(12739, 0, 0, 0),(12740, 0, 0, 0),(12741, 0, 0, 0),(12744, 0, 0, 0),(12742, 0, 0, 0),(12990, 0, 0, 0),(12745, 0, 0, 0),
(12746, 0, 0, 0),(12747, 0, 0, 0),(12748, 0, 0, 0),(12749, 0, 0, 0),(12750, 0, 0, 0),(12991, 0, 0, 0),(12678, 0, 0, 0),(12679, 0, 0, 0),
(12680, 0, 0, 0),(12682, 0, 0, 0),(12683, 0, 0, 0),(12684, 0, 0, 0),(12685, 0, 0, 0),(12686, 0, 0, 0),(12687, 0, 0, 0),(12688, 0, 0, 0),
(12689, 0, 0, 0),(12752, 0, 0, 0),(12758, 0, 0, 0),(12759, 0, 0, 0),(12760, 0, 0, 0),(12761, 0, 0, 0),(12762, 0, 0, 0),(12763, 0, 0, 0),
(12764, 0, 0, 0),(12770, 0, 0, 0),(12773, 0, 0, 0),(12775, 0, 0, 0),(12780, 0, 0, 0),(12798, 0, 0, 0),(12799, 0, 0, 0),(12800, 0, 0, 0),
(12802, 0, 0, 0),(12803, 0, 0, 0),(12804, 0, 0, 0),(12805, 0, 0, 0),(12806, 0, 0, 0),(12807, 0, 0, 0),(12808, 0, 0, 0),(12809, 0, 0, 0),
(12818, 0, 0, 0),(12822, 0, 0, 0),(12825, 0, 0, 0),(12826, 0, 0, 0),(12827, 0, 0, 0),(12828, 0, 0, 0),(12909, 0, 0, 0),(12945, 0, 0, 0),
(12948, 0, 0, 0),(12949, 0, 0, 0),(12950, 0, 0, 0),(12951, 0, 0, 0),(12952, 0, 0, 0),(12953, 0, 0, 0),(12955, 0, 0, 0),(12962, 0, 0, 0),
(12966, 0, 0, 0),(12967, 0, 0, 0),(12968, 0, 0, 0),(12969, 0, 0, 0),(12972, 0, 0, 0),(12976, 0, 0, 0),(12977, 0, 0, 0),(12981, 0, 0, 0),
(12982, 0, 0, 0),(12983, 0, 0, 0),(12984, 0, 0, 0),(12985, 0, 0, 0),(12986, 0, 0, 0),(12987, 0, 0, 0),(12988, 0, 0, 0),(12989, 0, 0, 0),
(12992, 0, 0, 0),(12993, 0, 0, 0),(12996, 0, 0, 0),(13011, 0, 0, 0),(13012, 0, 0, 0),(13013, 0, 0, 0),(13032, 0, 0, 0),(13033, 0, 0, 0),
(13034, 0, 0, 0),(13039, 0, 0, 0),(13040, 0, 0, 0),(13043, 0, 0, 0),(13044, 0, 0, 0),(13045, 0, 0, 0),(13046, 0, 0, 0),(13047, 0, 0, 0),
(13049, 0, 0, 0),(13050, 0, 0, 0),(13051, 0, 0, 0),(13054, 0, 0, 0),(13055, 0, 0, 0),(13056, 0, 0, 0),(13057, 0, 0, 0),(13058, 0, 0, 0),
(13060, 0, 0, 0),(13089, 0, 0, 0),(13090, 0, 0, 0),(13091, 0, 0, 0),(13092, 0, 0, 0),(13093, 0, 0, 0),(13096, 0, 0, 0),(13097, 0, 0, 0),
(13098, 0, 0, 0),(13100, 0, 0, 0),(13101, 0, 0, 0),(13102, 0, 0, 0),(13103, 0, 0, 0),(13104, 0, 0, 0),(13105, 0, 0, 0),(13106, 0, 0, 0),
(13107, 0, 0, 0),(13108, 0, 0, 0),(13115, 0, 0, 0),(13116, 0, 0, 0),(13117, 0, 0, 0),(13118, 0, 0, 0),(13119, 0, 0, 0),(13120, 0, 0, 0),
(13121, 0, 0, 0),(13122, 0, 0, 0),(13123, 0, 0, 0),(13127, 0, 0, 0),(13128, 0, 0, 0),(13129, 0, 0, 0),(13130, 0, 0, 0),(13131, 0, 0, 0),
(13132, 0, 0, 0),(13133, 0, 0, 0),(13134, 0, 0, 0),(13135, 0, 0, 0),(13136, 0, 0, 0),(13137, 0, 0, 0),(13138, 0, 0, 0),(13166, 0, 0, 0),
(13167, 0, 0, 0),(13168, 0, 0, 0),(13169, 0, 0, 0),(13170, 0, 0, 0),(13172, 0, 0, 0),(13173, 0, 0, 0),(13174, 0, 0, 0),(13175, 0, 0, 0),
(13176, 0, 0, 0),(13177, 0, 0, 0),(13178, 0, 0, 0),(13179, 0, 0, 0),(13182, 0, 0, 0),(12823, 0, 0, 0),(12846, 0, 0, 0),(12859, 0, 0, 0),
(12974, 0, 0, 0);

DELETE FROM `spell_proc_event` WHERE `entry` IN
(58631,55668,55669,55670,63320);
DELETE FROM `spell_bonus_data` WHERE `entry` IN
(8443,8504,8505,11310,11311,25538,25539,61651,61660);

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7132,5474,4226,6500);
DELETE FROM `character_achievement_progress`  WHERE `criteria` IN (7132,5474,4226,6500);

DELETE FROM `character_spell` WHERE `spell` IN (55668,55669,55670);

-- Molten Core
DELETE FROM `spell_proc_event` WHERE `entry` IN (47245,47246,47247);
INSERT INTO `spell_proc_event` VALUES
(47245, 0x00, 5, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0.000000, 0.000000, 0),
(47246, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0),
(47247, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

UPDATE `creature_template` SET `mindmg` = `mindmg`/2, `maxdmg` = `maxdmg`/2 WHERE `entry` = 24207;

-- ----------------------------
-- Records of playercreateinfo_action
-- ----------------------------
TRUNCATE `playercreateinfo_action`;
INSERT INTO `playercreateinfo_action` VALUES ('1', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '1', '82', '59752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '2', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '2', '1', '21084', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '2', '2', '635', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '2', '11', '59752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '4', '11', '59752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '5', '0', '585', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '5', '1', '2050', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '5', '11', '59752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '6', '11', '59752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '8', '0', '133', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '8', '1', '168', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '8', '11', '59752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '9', '0', '686', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '9', '1', '687', '0');
INSERT INTO `playercreateinfo_action` VALUES ('1', '9', '11', '59752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '1', '74', '20572', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '3', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '3', '1', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '3', '2', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '3', '11', '20572', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '4', '4', '20572', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '6', '10', '20572', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '7', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '7', '1', '403', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '7', '2', '331', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '7', '3', '33697', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '9', '0', '686', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '9', '1', '687', '0');
INSERT INTO `playercreateinfo_action` VALUES ('2', '9', '2', '33702', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '1', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '74', '20594', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '75', '2481', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '2', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '2', '1', '21084', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '2', '2', '635', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '2', '3', '20594', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '2', '4', '2481', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '3', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '3', '1', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '3', '2', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '3', '3', '20594', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '3', '4', '2481', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '3', '75', '20594', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '3', '76', '2481', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '4', '4', '20594', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '4', '5', '2481', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '5', '0', '585', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '5', '1', '2050', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '5', '2', '20594', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '5', '3', '2481', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('3', '6', '10', '2481', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '4', '82', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '1', '82', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '1', '85', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '1', '97', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '1', '109', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '3', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '3', '1', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '3', '2', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '3', '3', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '4', '11', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '5', '0', '585', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '5', '1', '2050', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '5', '2', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '10', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '6', '83', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '11', '0', '5176', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '11', '1', '5185', '0');
INSERT INTO `playercreateinfo_action` VALUES ('4', '11', '11', '58984', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '1', '74', '20577', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '4', '4', '20577', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '5', '0', '585', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '5', '1', '2050', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '5', '2', '20577', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '6', '10', '20577', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '8', '0', '133', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '8', '1', '168', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '8', '2', '20577', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '9', '0', '686', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '9', '1', '687', '0');
INSERT INTO `playercreateinfo_action` VALUES ('5', '9', '2', '20577', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '1', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '3', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '74', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '3', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '3', '1', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '3', '2', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '3', '3', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '3', '76', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '10', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '6', '75', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '7', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '7', '1', '403', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '7', '2', '331', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '7', '3', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '7', '76', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '0', '5176', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '1', '5185', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '2', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '73', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '76', '20549', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '85', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '97', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('6', '11', '109', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '1', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '11', '20589', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '82', '20589', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '4', '11', '20589', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '10', '20589', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '83', '41751', '128');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '11', '41751', '128');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '6', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '8', '0', '133', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '8', '1', '168', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '8', '11', '20589', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '9', '0', '686', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '9', '1', '687', '0');
INSERT INTO `playercreateinfo_action` VALUES ('7', '9', '11', '20589', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '74', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '75', '26296', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '3', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '3', '1', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '3', '2', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '8', '2', '20554', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '4', '4', '26297', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '5', '0', '585', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '5', '1', '2050', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '7', '3', '20554', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '6', '10', '50621', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '7', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '7', '1', '403', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '7', '2', '331', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '5', '2', '20554', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '8', '0', '133', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '8', '1', '168', '0');
INSERT INTO `playercreateinfo_action` VALUES ('8', '3', '3', '20554', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '2', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '2', '1', '21084', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '2', '2', '635', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '2', '3', '28730', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '3', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '3', '1', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '3', '2', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '3', '3', '28730', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '4', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '4', '1', '1752', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '4', '2', '2098', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '4', '3', '2764', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '4', '4', '25046', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '5', '0', '585', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '5', '1', '2050', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '5', '2', '28730', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '6', '6', '50613', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '8', '0', '133', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '8', '1', '168', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '8', '2', '28730', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '9', '0', '686', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '9', '1', '687', '0');
INSERT INTO `playercreateinfo_action` VALUES ('10', '9', '2', '28730', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '1', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '1', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '1', '73', '78', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '1', '74', '28880', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '1', '84', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '1', '96', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '1', '108', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '2', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '2', '1', '21084', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '2', '2', '635', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '2', '3', '59542', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '3', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '3', '1', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '3', '2', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '3', '3', '59543', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '3', '72', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '3', '73', '2973', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '3', '74', '75', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '5', '0', '585', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '5', '1', '2050', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '5', '2', '59544', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '1', '49576', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '2', '45477', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '3', '45462', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '4', '45902', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '5', '47541', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '10', '59545', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '7', '0', '6603', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '7', '1', '403', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '7', '2', '331', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '7', '3', '59547', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '8', '0', '133', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '8', '1', '168', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '8', '2', '59548', '0');
INSERT INTO `playercreateinfo_action` VALUES ('11', '6', '11', '41751', '128');

INSERT INTO playercreateinfo_spell VALUES
 (1,4,674,'Dual Wield'),
 (2,4,674,'Dual Wield'),
 (3,4,674,'Dual Wield'),
 (4,4,674,'Dual Wield'),
 (5,4,674,'Dual Wield'),
 (7,4,674,'Dual Wield'),
 (8,4,674,'Dual Wield'),
 (10,4,674,'Dual Wield'),
 (1,5,227,'Staves'),
 (3,5,227,'Staves'),
 (4,5,227,'Staves'),
 (5,5,227,'Staves'),
 (8,5,227,'Staves'),
 (10,5,227,'Staves'),
 (11,5,227,'Staves'),
 (1,9,227,'Staves'),
 (2,9,227,'Staves'),
 (5,9,227,'Staves'),
 (7,9,227,'Staves'),
 (10,9,227,'Staves'),
 (1,1,202,'Two-Handed Swords'),
 (4,1,202,'Two-Handed Swords'),
 (7,1,202,'Two-Handed Swords'),
 (8,1,202,'Two-Handed Swords'),
 (2,3,197,'Two-Handed Axes'),
 (3,3,197,'Two-Handed Axes'),
 (4,3,197,'Two-Handed Axes'),
 (6,3,197,'Two-Handed Axes'),
 (8,3,197,'Two-Handed Axes'),
 (10,3,197,'Two-Handed Axes'),
 (11,3,197,'Two-Handed Axes');

UPDATE npc_trainer SET reqlevel=6 WHERE spell=34428;

UPDATE `creature_template` SET `modelid1` = 19073, `modelid2` = 30757, `modelid3` = 4588, `modelid4` = 30761 WHERE `entry` IN
(15430,5913,2630,21992,7403,5922,5921,5874,15479,15464,30647,31129,7399,7398,3913,3912,3911,3579,15478,31120,31121,31122,14870,
21994,7367,7366,5919,15470,7368,5873,15474,5920,31175,31176);

UPDATE `creature_template` SET `modelid1` = 19074, `modelid2` = 30758, `modelid3` = 4589, `modelid4` = 30762 WHERE `entry` IN
(15439,21995,7400,3904,3903,2523,15480,7402,3902,31162,31164,31165,34687,17539,30652,30653,30654,7413,7412,5926,15486,31171,31172,
10557,7423,6012,5950,15485,31132,31133,31158,7465,7464,5929,7466,15484,31166,31167,32887);

UPDATE `creature_template` SET `modelid1` = 19075, `modelid2` = 30759, `modelid3` = 4587, `modelid4` = 30763 WHERE `entry` IN
(5924,17061,11101,11100,10467,3909,3908,3907,3906,15488,3527,31181,31182,31185,34686,7415,7414,3573,15489,7416,31186,31189,31190,
7425,7424,5927,15487,31169,31170);

UPDATE `creature_template` SET `modelid1` = 19071, `modelid2` = 30756, `modelid3` = 4590, `modelid4` = 30760 WHERE `entry` IN
(3968,5925,7484,7483,15496,15497,6112,7469,7468,7467,15490,31173,31174,15447);

INSERT INTO `creature_model_info` VALUES
(30757,1,1,2,0),
(30758,1,1,2,0),
(30759,1,1,2,0),
(30756,1,1,2,0),
(30761,1,1,2,0),
(30762,1,1,2,0),
(30763,1,1,2,0),
(30760,1,1,2,0);

DROP TABLE IF EXISTS `quest_poi`;
CREATE TABLE `quest_poi` (
  `questid` int(11) unsigned NOT NULL DEFAULT '0',
  `objIndex` int(11) NOT NULL DEFAULT '0',
  `mapId` int(11) unsigned NOT NULL DEFAULT '0',
  `unk1` int(11) unsigned NOT NULL DEFAULT '0',
  `unk2` int(11) unsigned NOT NULL DEFAULT '0',
  `unk3` int(11) unsigned NOT NULL DEFAULT '0',
  `unk4` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`questid`,`objIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `quest_poi_points`;
CREATE TABLE `quest_poi_points` (
  `questId` int(11) unsigned NOT NULL DEFAULT '0',
  `objIndex` int(11) NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  KEY `idx` (`questId`,`objIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Sample data for quest 456
INSERT INTO quest_poi VALUES (456, 0, 1, 0, 0, 0, 0);
INSERT INTO quest_poi VALUES (456, 1, 1, 0, 0, 0, 0);
INSERT INTO quest_poi VALUES (456, -1, 1, 0, 0, 0, 0);

INSERT INTO quest_poi_points VALUES (456, 0, 0x28CF, 0x0217);
INSERT INTO quest_poi_points VALUES (456, 0, 0x29F4, 0x02AA);
INSERT INTO quest_poi_points VALUES (456, 0, 0x2841, 0x0398);
INSERT INTO quest_poi_points VALUES (456, 0, 0x2806, 0x034C);
INSERT INTO quest_poi_points VALUES (456, 0, 0x281B, 0x02DE);
INSERT INTO quest_poi_points VALUES (456, 0, 0x283C, 0x029B);
INSERT INTO quest_poi_points VALUES (456, 0, 0x284C, 0x028A);
INSERT INTO quest_poi_points VALUES (456, 0, 0x28B0, 0x0228);

INSERT INTO quest_poi_points VALUES (456, 1, 0x28A0, 0x0258);
INSERT INTO quest_poi_points VALUES (456, 1, 0x290E, 0x0366);
INSERT INTO quest_poi_points VALUES (456, 1, 0x28CA, 0x03BC);
INSERT INTO quest_poi_points VALUES (456, 1, 0x288F, 0x03F6);
INSERT INTO quest_poi_points VALUES (456, 1, 0x284D, 0x03B8);
INSERT INTO quest_poi_points VALUES (456, 1, 0x2828, 0x0395);
INSERT INTO quest_poi_points VALUES (456, 1, 0x2806, 0x034C);
INSERT INTO quest_poi_points VALUES (456, 1, 0x281B, 0x02DE);
INSERT INTO quest_poi_points VALUES (456, 1, 0x284C, 0x028A);

INSERT INTO quest_poi_points VALUES (456, -1, 0x2859, 0x033A);
