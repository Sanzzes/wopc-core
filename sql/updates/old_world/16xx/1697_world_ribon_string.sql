ALTER TABLE version CHANGE COLUMN required_1689_world_scripts required_1697_world_ribon_string bit;

-- default = en_US
-- loc3 = de_DE

INSERT INTO ribon_string 
(
 entry, 
 content_default, 
 content_loc1, 
 content_loc2, 
 content_loc3, 
 content_loc4, 
 content_loc5, 
 content_loc6, 
 content_loc7, 
 content_loc8 
 ) 

VALUES 

 (50076, 'Loading Item Texts...', 
 NULL, NULL, 
 'Lade Gegenstandstexte...', 
 NULL, NULL, NULL, NULL, NULL),

 (50077, '>> Loaded 0 item texts', 
 NULL, NULL, 
 '>> 0 Gegenstandstexte geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50078, 
 '>> Loaded %u item texts', 
 NULL, NULL, 
 '>> %u Gegenstandstexte geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50079, 
 'Loading Creature Model Based Info Data...', 
 NULL, NULL, 
 'Lade Kreatur-Model besierende Infos...', 
 NULL, NULL, NULL, NULL, NULL),

 (50080, 
 '>> Loaded %u creature model based info', 
 NULL, NULL, 
 '%u Kreatur-Modell basierende Infos geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50081, 
 'Loading Equipment templates...', 
 NULL, NULL, 
 'Lade Ausruestungsvorlagen...', 
 NULL, NULL, NULL, NULL, NULL),

 (50082, 
 '>> Loaded %u equipment template', 
 NULL, NULL, 
 '>> %u Ausruestungsvorlagen geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50083, 
 'Loading Creature templates...', 
 NULL, NULL, 
 'Lade Kreaturvorlagen...', 
 NULL, NULL, NULL, NULL, NULL),

 (50084, 
 '>> Loaded %u creature definitions', 
 NULL, NULL, 
 '>> %u Kreaturvorlagen geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50085, 
 'Loading SpellsScriptTarget...', 
 NULL, NULL, 
 'Lade SpellsScriptTarget...', 
 NULL, NULL, NULL, NULL, NULL),

 (50086, 
 '>> Loaded 0 SpellScriptTarget. DB table `spell_script_target` is empty.', 
 NULL, NULL, 
 '>> 0 SpellsScriptTarget geladen. Die Tabelle `spell_script_target` ist leer.', 
 NULL, NULL, NULL, NULL, NULL),

 (50087, 
 '>> Loaded %u SpellScriptTargets', 
 NULL, NULL, 
 '>> %u SpellScriptTargets geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50088, 
 'Loading ItemRequiredTarget...', 
 NULL, NULL, 
 'Lade Erforderliche Gegenstandsziele...', 
 NULL, NULL, NULL, NULL, NULL),

 (50089, 
 '>> Loaded %u Item required targets', 
 NULL, NULL, 
 '>> %u Erforderliche Gegenstandsziele geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50090, 
 'Loading Creature Reputation OnKill Data...', 
 NULL, NULL, 
 'Lade OnKill Kreaturrufdaten...', 
 NULL, NULL, NULL, NULL, NULL),

 (50091, 
 '>> Loaded %u creature award reputation definitions', 
 NULL, NULL, 
 '%u Kreaturrufdefinierungen', 
 NULL, NULL, NULL, NULL, NULL),

 (50092, 
 'Loading Points Of Interest Data...', 
 NULL, NULL, 
 'Lade Interessenpunkte...', 
 NULL, NULL, NULL, NULL, NULL),

 (50093, 
 '>> Loaded %u Points of Interest definitions', 
 NULL, NULL, 
 '>> %u Interessenpunkte geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50094, 
 'Loading Creature Data...', 
 NULL, NULL, 
 'Lade Kreaturdaten...', 
 NULL, NULL, NULL, NULL, NULL),

 (50095, 
 '>> Loaded %lu creatures', 
 NULL, NULL, 
 '>> %lu Kreaturen geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50096, 
 'Loading Creature Linked Respawn...', 
 NULL, NULL, 
 'Lade verknuepfte Kreaturenrespawns...', 
 NULL, NULL, NULL, NULL, NULL),

 (50097, 
 '>> Loaded %u linked respawns', 
 NULL, NULL, 
 '>> %u verknuepfte Kreaturenrespawns geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50098, 
 'Loading pet levelup spells...', 
 NULL, NULL, 
 'Lade Tier-Stufenzauber...', 
 NULL, NULL, NULL, NULL, NULL),

 (50099, 
 '>> Loaded %u pet levelup and default spells for %u families', 
 NULL, NULL, 
 '>> %u Tier-Stufenzauber und %u Standardzauber geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50100, 
 'Loading pet default spell additional to levelup spells...', 
 NULL, NULL, 
 'Lade Tier Standardzauber zusaetzlich zu Stufenzauberspruechen', 
 NULL, NULL, NULL, NULL, NULL),

 (50101, 
 '>> Loaded addition spells for %u pet spell data entries and %u summonable creature templates', 
 NULL, NULL, 
 '>> %u Zauber für Zauberbucheintraege und %u ladbare Kreaturvorlagen geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50102, 
 'Loading Creature Addon Data...', 
 NULL, NULL, 
 'Lade Kreatur-Addondaten...', 
 NULL, NULL, NULL, NULL, NULL),

 (50103, 
 '>> Creature Addon Data loaded', 
 NULL, NULL, 
 '>> Kreatur-Addondaten geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50104, 
 'Loading Creature Respawn Times...', 
 NULL, NULL, 
 'Lade Kreatur-Respawnzeiten...', 
 NULL, NULL, NULL, NULL, NULL),

 (50105, 
 '>> Loaded 0 creature respawn time', 
 NULL, NULL, 
 '>> 0 Kreatur-Respawnzeiten geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50106, 
 '>> Loaded %lu creature respawn times', 
 NULL, NULL, 
 '>> %lu Kreatur-Respawnzeiten geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50107, 
 'Loading Gameobject Data...', 
 NULL, NULL, 
 'Lade Spielobjektdaten...', 
 NULL, NULL, NULL, NULL, NULL),

 (50108, 
 '>> Loaded %lu gameobjects', 
 NULL, NULL, 
 '>> %lu Spielobjektdaten geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50109, 
 'Loading Gameobject Respawn Times...', 
 NULL, NULL, 
 'Lade Spielobjekt-Respawnzeiten...', 
 NULL, NULL, NULL, NULL, NULL),

 (50110, 
 '>> Loaded 0 gameobject respawn times.', 
 NULL, NULL, 
 '>> 0 Spielobjekt-Respawnzeiten geladen', 
 NULL, NULL, NULL, NULL, NULL),

 (50111, 
 '>> Loaded %lu gameobject respawn times', 
 NULL, NULL, 
 '>> %lu Spielobjekt-Respawnzeiten geladen', 
 NULL, NULL, NULL, NULL, NULL);
