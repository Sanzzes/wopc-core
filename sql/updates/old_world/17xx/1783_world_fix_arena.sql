ALTER TABLE version CHANGE COLUMN required_1773_world_xilium_strings required_1783_world_fix_arena bit;
DELETE FROM `gameobject` WHERE guid IN (150116, 150115, 150115, 150103, 150104, 150110, 150109);