ALTER TABLE version CHANGE COLUMN required_2128_01_world_spells required_2144_01_world_scripts bit;

UPDATE `instance_template` SET `script`='instance_trial_crusader' WHERE (`map`='649');