ALTER TABLE version CHANGE COLUMN required_1509_world_command required_1517_world_ribon_string bit;

REPLACE INTO `ribon_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(11008, 'Access Denied! Try again in other level!', null, null, null, null, null, null, null, ''),
(11007, 'Account not found!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11006, 'IP: %s Last login: %s\r\nAccount(s): %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11005, 'Player: %s %s (id: %u) Race: %u Class: %u Money: %ug%us%uc Account: %s (id: %u) GMLevel: %u Join date: %s Last IP: %s Last login: %s Total time: %s Time this level: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11004, 'Account: %s (id: %u) GMLevel: %u Last IP: %s Last login: %s Email: %s Join date: %s Banned: %s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11003, 'Accounts characters (%u):\r\n%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);