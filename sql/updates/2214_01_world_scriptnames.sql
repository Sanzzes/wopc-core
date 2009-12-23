ALTER TABLE version CHANGE COLUMN required_2204_01_world_quest required_2214_01_world_scriptnames bit;

DELETE FROM `ixilium_string`  WHERE `entry` = '573';
DELETE FROM `ixilium_string`  WHERE `entry` = '539';
INSERT INTO `ixilium_string` (`entry`, `content_default`) 
VALUES
('539', 'Player selected NPC\\nGUID: %u.\\nFaction: %u.\\nnpcFlags: %u.\\nEntry: %u.\\nDisplayID: %u (Native: %u).');

INSERT INTO `ixilium_string` (`entry`, `content_default`) VALUES ('573', '|cffff9933ScriptName: |cffffffff[%s]');
