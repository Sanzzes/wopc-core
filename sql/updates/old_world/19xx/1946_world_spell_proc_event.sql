ALTER TABLE version CHANGE COLUMN required_1941_world_spell_proc_event required_1946_world_spell_proc_event bit;

UPDATE spell_proc_event SET entry = 53489 WHERE entry = 53486;
UPDATE spell_proc_event SET entry = 59578 WHERE entry = 53488;
