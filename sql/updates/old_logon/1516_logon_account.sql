ALTER TABLE logon_db_version CHANGE COLUMN required_1093_logon_realmlist required_1516_logon_account bit;

ALTER TABLE account
  DROP COLUMN online,
  ADD COLUMN  active_logon_id int(11) unsigned NOT NULL default '0' AFTER last_login;
