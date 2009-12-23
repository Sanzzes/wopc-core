ALTER TABLE logon_db_version CHANGE COLUMN required_803_logon_db_version required_875_logon_uptime bit;
ALTER TABLE `uptime` ADD COLUMN `revision` VARCHAR(255) NOT NULL DEFAULT 'RibonCore' AFTER `maxplayers`;
