ALTER TABLE version CHANGE COLUMN required_2007_01_world_Battleground_doors required_2010_01_world_password bit;

DELETE FROM ixilium_string WHERE entry IN(60,61,62);
INSERT INTO ixilium_string VALUES
(67,'I\'m busy right now, come back later.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(68,'Username: ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(69,'Password: ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);