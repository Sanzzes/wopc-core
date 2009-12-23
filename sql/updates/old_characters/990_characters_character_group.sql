ALTER TABLE character_db_version CHANGE COLUMN required_894_characters_game_event required_990_characters_character_group bit;
alter table `groups`
    add column `raiddifficulty` int(11) UNSIGNED DEFAULT '0' NOT NULL after `difficulty`;

alter table `bugreport`
    change `type` `type` longtext NOT NULL,
    change `content` `content` longtext NOT NULL;
    
