ALTER TABLE version CHANGE COLUMN required_1538_world_bg_scripts required_1540_multi_passengers_support bit;

-- mammuth
UPDATE creature_template SET vehicleid=312 WHERE entry IN(31858,32212,32213,32633,32640,31857,31862);

-- bike
UPDATE creature_template SET vehicleid=318 WHERE entry IN(29929, 32286);