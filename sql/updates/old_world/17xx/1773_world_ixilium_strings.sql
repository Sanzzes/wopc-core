ALTER TABLE version CHANGE COLUMN required_1760_world_xilium_strings required_1773_world_xilium_strings bit;

REPLACE INTO ixilium_string 
(
 entry, 
 content_default, 
 content_loc1, 
 content_loc2, 
 content_loc3, 
 content_loc4, 
 content_loc5, 
 content_loc6, 
 content_loc7, 
 content_loc8 
 ) 

VALUES 

 (817, '|cFFFF6060|IxiliumEmu Revision: %s|r', 
 NULL, NULL, 
 '|cFFFF6060|IxiliumEmu Revision: %s|r', 
 NULL, NULL, NULL, NULL, NULL);

UPDATE `item_template` SET `BuyPrice` = 500000, `SellPrice` = 125000 WHERE `entry` = 48120;
