ALTER TABLE version CHANGE COLUMN required_2111_01_world_gossip_scripts required_2113_01_world_scripts bit;

DELETE FROM `script_texts` WHERE `entry` IN (-1571031, -1571032);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(30007,-1571031,'This battle must be seen to be believed! Once a mild-mannered tuskarr fisherman, our next fighter turned to the life of a soulless mercenary when his entire family was wiped out by a vicious pack of lion seals and III-tempered penguins! Now he''s just In It for the gold! Ladies and gentlemen, ORINOKO TUSKBREAKER!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13363,1,0,0,''),
(30020,-1571032,'Whisker! Where are you? Assist me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'');

UPDATE `creature_template` SET `ScriptName` = 'npc_gurgthock' WHERE `entry`=30007;
UPDATE `creature_template` SET `ScriptName` = 'npc_orinoko_tuskbreaker' WHERE `entry`=30020;
