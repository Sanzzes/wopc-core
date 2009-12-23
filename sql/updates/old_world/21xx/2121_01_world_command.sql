ALTER TABLE version CHANGE COLUMN required_2113_01_world_scripts required_2121_01_world_command bit;

UPDATE `command` SET `help` = 'Syntax: .wg timer $minutes\r\nChange the current timer. Min value = 1, Max value 60 (Wartime), 1440 (Not Wartime)' WHERE `name` = 'wg timer';

