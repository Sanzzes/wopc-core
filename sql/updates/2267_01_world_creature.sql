ALTER TABLE version CHANGE COLUMN required_2266_01_world_scripts required_2267_01_world_creature bit;

DELETE FROM creature WHERE id = '31689';
