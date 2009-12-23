ALTER TABLE version CHANGE COLUMN required_1793_world_command required_1802_world_command bit;
DELETE FROM ixilium_string WHERE entry IN(573,574);