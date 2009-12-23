ALTER TABLE version CHANGE COLUMN required_1742_world_spells required_1745_world_instance_template bit;

ALTER TABLE instance_template
  DROP COLUMN maxPlayers,
  DROP COLUMN maxPlayersHeroic,
  DROP COLUMN reset_delay;
