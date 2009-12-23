ALTER TABLE version CHANGE COLUMN required_1745_world_instance_template required_1753_world_quest_template bit;

ALTER TABLE quest_template
  ADD COLUMN RewRepFactionAlliance smallint(5) unsigned NOT NULL default '0' COMMENT 'faction id from Faction.dbc in this case' AFTER RewRepFaction5,
  ADD COLUMN RewRepFactionHorde smallint(5) unsigned NOT NULL default '0' COMMENT 'faction id from Faction.dbc in this case' AFTER RewRepFactionAlliance,
  ADD COLUMN RewRepValueAlliance smallint(9) NOT NULL default '0' AFTER RewRepValue5,
  ADD COLUMN RewRepValueHorde smallint(9) NOT NULL default '0' AFTER RewRepValueAlliance;

#
# Content for the new columns, Heroic daily quests.
#

# Wanted: Nazans Riding Crop
UPDATE `quest_template` SET `RewRepFactionAlliance`='946',`RewRepValueAlliance`='350',`RewRepFactionHorde`='947',`RewRepValueHorde`='350' WHERE (`entry`='11354');

# Wanted: Kelidans Feathered Stave
UPDATE `quest_template` SET `RewRepFactionAlliance`='946',`RewRepValueAlliance`='350',`RewRepFactionHorde`='947',`RewRepValueHorde`='350' WHERE (`entry`='11362');

# Wanted: Bladefists Seal
UPDATE `quest_template` SET `RewRepFactionAlliance`='946',`RewRepValueAlliance`='350',`RewRepFactionHorde`='947',`RewRepValueHorde`='350' WHERE (`entry`='11363');


#
# Standart Part
#

# Wanted: Nazans Riding Crop
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepValue1`='350' WHERE (`entry`='11354');

# Wanted: Kelidans Feathered Stave
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepValue1`='350' WHERE (`entry`='11362');

# Wanted: Bladefists Seal
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepValue1`='350' WHERE (`entry`='11363');

# Wanted: Shaffars Wondrous Pendant
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepValue1`='500' WHERE (`entry`='11373');

# Wanted: The Heart of Quagmirran
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='942',`RewRepValue1`='350',`RewRepValue2`='350' WHERE (`entry`='11368');

# Wanted: A Black Stalker Egg
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='942',`RewRepValue1`='350',`RewRepValue2`='350' WHERE (`entry`='11369');

# Wanted: The Warlords Treatise
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='942',`RewRepValue1`='350',`RewRepValue2`='350' WHERE (`entry`='11370');

# Wanted: The Headfeathers of Ikiss
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='1011',`RewRepValue1`='350',`RewRepValue2`='350' WHERE (`entry`='11372');

# Wanted: The Exarchs Soul Gem
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='1011',`RewRepValue1`='350',`RewRepValue2`='350' WHERE (`entry`='11374');

# Wanted: Murmur\'s Whisper
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='1011',`RewRepValue1`='350',`RewRepValue2`='350' WHERE (`entry`='11375');

# Wanted: The Epoch Hunters Head
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='989',`RewRepValue1`='350',`RewRepValue2`='350' WHERE (`entry`='11378');

# Wanted: Aeonuss Hourglass
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='989',`RewRepValue1`='350',`RewRepValue2`='350' WHERE (`entry`='11382');

# Wanted: A Warp Splinter Clipping
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='935',`RewRepValue1`='350',`RewRepValue2`='350' WHERE (`entry`='11384');

# Wanted: Pathaleon\'s Projector
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='935',`RewRepValue1`='350',`RewRepValue2`='350' WHERE (`entry`='11386');

# Wanted: The Scroll of Skyriss
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='935',`RewRepValue1`='350',`RewRepValue2`='350' WHERE (`entry`='11388');

# Wanted: The Signet Ring of Prince Kaelthas
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='1077',`RewRepValue1`='350',`RewRepValue2`='350' WHERE (`entry`='11499');

#
# Content for the new columns, Non-heroic daily quests.
#

UPDATE `quest_template` SET `RewRepFactionAlliance`='946',`RewRepValueAlliance`='350',`RewRepFactionHorde`='947',`RewRepValueHorde`='350' WHERE (`entry`='11364');

#
# Standart Part
#

# Gesucht: Zerstörer der Sturmschmiede
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='935',`RewRepValue1`='250',`RewRepValue2`='250' WHERE (`entry`='11387');

# Gesucht: Zenturionen der Zerschmetterten Hand
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepValue1`='250' WHERE (`entry`='11364');

# Gesucht: Schwestern der Qual
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='1077',`RewRepValue1`='250',`RewRepValue2`='250' WHERE (`entry`='11500');

# Gesucht: Schildwachen der Arkatraz
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='935',`RewRepValue1`='250',`RewRepValue2`='250' WHERE (`entry`='11389');

# Gesucht: Myrmidonen des Echsenkessels
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='942',`RewRepValue1`='250',`RewRepValue2`='250' WHERE (`entry`='11387');

# Gesucht: Kanalisierer der Sonnensucher
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='935',`RewRepValue1`='250',`RewRepValue2`='250' WHERE (`entry`='11385');

# Gesucht: Fürsten der Zeitenrisse
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='989',`RewRepValue1`='250',`RewRepValue2`='250' WHERE (`entry`='11383');

# Gesucht: Bösartige Ausbilderinnen
UPDATE `quest_template` SET `RewRepFaction1`='933',`RewRepFaction2`='1011',`RewRepValue1`='250',`RewRepValue2`='250' WHERE (`entry`='11376');
