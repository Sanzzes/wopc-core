ALTER TABLE logon_db_version CHANGE COLUMN required_875_logon_uptime required_1093_logon_realmlist bit;
UPDATE realmlist SET gamebuild =  '10505' WHERE id =  '1';
