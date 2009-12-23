ALTER TABLE version CHANGE COLUMN required_2204_01_world_item_template required_2209_01_world_ra_commands bit;


DELETE FROM command where name IN ('quit');
INSERT INTO `command` VALUES
('quit',4,'Syntax: quit\r\n\r\nClose RA connection. Command must be typed fully (quit).');

DELETE FROM ixilium_string WHERE entry in (1015);
INSERT INTO ixilium_string VALUES
 (1015,'Used not fully typed quit command, need type it fully (quit), or command used not in RA command line.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

