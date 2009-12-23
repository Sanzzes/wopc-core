ALTER TABLE version CHANGE COLUMN required_1639_world_scripts required_1640_world_item bit;

update item_template set ScriptName = 'item_trident_of_nazjan' where entry = '35850';