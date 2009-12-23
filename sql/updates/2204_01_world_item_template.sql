ALTER TABLE version CHANGE COLUMN required_2198_02_world_scourge_gryphon_fix required_2204_01_world_item_template bit;

-- item_template update from Malcrom
-- Alter column AllowableClass to allowed max value signed.
ALTER TABLE `item_template` CHANGE `AllowableClass` `AllowableClasstemp` MEDIUMINT(9);
ALTER TABLE `item_template` ADD `AllowableClass` INT SIGNED NOT NULL AFTER `InventoryType`;
UPDATE `item_template` SET `AllowableClass` = `AllowableClasstemp`;
ALTER TABLE `item_template` DROP `AllowableClasstemp`;
-- Alter column AllowableRace to allowed max value signed.
ALTER TABLE `item_template` CHANGE `AllowableRace` `AllowableRacetemp` MEDIUMINT(9);
ALTER TABLE `item_template` ADD `AllowableRace` INT SIGNED NOT NULL AFTER `AllowableClass`;
UPDATE `item_template` SET `AllowableRace` = `AllowableRacetemp`;
ALTER TABLE `item_template` DROP `AllowableRacetemp`;
