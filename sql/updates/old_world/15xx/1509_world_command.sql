ALTER TABLE version CHANGE COLUMN required_1507_world_scripts required_1509_world_command bit;
UPDATE `command` SET `name`='reload mail_loot_template' WHERE (`name`='reload quest_mail_loot_template');