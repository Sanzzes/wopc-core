ALTER TABLE character_db_version CHANGE COLUMN required_1230_characters_character_reputation required_1287_character_characters_guild bit;

UPDATE guild_rank SET BankMoneyPerDay = 4294967295 WHERE rid = 0;