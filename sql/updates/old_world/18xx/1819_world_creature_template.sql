ALTER TABLE version CHANGE COLUMN required_1802_world_command required_1819_world_creature_template bit;

-- set all spirithealer and spiritguides to be visible only for dead people
UPDATE creature_template SET flags_extra = flags_extra | 0x200
WHERE npcflag & (16384 | 32768);
