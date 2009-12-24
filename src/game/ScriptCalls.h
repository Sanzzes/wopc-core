/*
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

#ifndef __SCRIPT_CALLS_H
#define __SCRIPT_CALLS_H

#include "Common.h"
#include "ObjectMgr.h"

class Creature;
class CreatureAI;
class GameObject;
class Item;
class Player;
class Quest;
class SpellCastTargets;
class Map;
class InstanceData;

bool LoadScriptingModule(char const* libName = "");
void UnloadScriptingModule();

//On Event Handlers
typedef void(WOPCCORE_IMPORT * scriptCallOnLogin) (Player *pPlayer);
typedef void(WOPCCORE_IMPORT * scriptCallOnLogout) (Player *pPlayer);
typedef void(WOPCCORE_IMPORT * scriptCallOnPVPKill) (Player *killer, Player *killed);
typedef bool(WOPCCORE_IMPORT * scriptCallOnSpellCast)(Unit *pUnitTarget, Item *pItemTarget, GameObject *pGoTarget, uint32 i, SpellEntry const *spell);
typedef uint32(WOPCCORE_IMPORT * scriptCallOnGetXP) (Player *pPlayer, uint32 amount);
typedef int32(WOPCCORE_IMPORT * scriptCallOnGetMoney) (Player *pPlayer, int32 amount);
typedef bool(WOPCCORE_IMPORT * scriptCallOnPlayerChat) (Player *pPlayer, const char *text);
typedef void(WOPCCORE_IMPORT * scriptCallOnServerStartup) ();
typedef void(WOPCCORE_IMPORT * scriptCallOnServerShutdown) ();
typedef void(WOPCCORE_IMPORT * scriptCallOnAreaChange) (Player *pPlayer, AreaTableEntry const *pArea);
typedef bool(WOPCCORE_IMPORT * scriptCallOnItemClick) (Player *pPlayer, Item *pItem);
typedef bool(WOPCCORE_IMPORT * scriptCallOnItemOpen) (Player *pPlayer, Item *pItem);
typedef bool(WOPCCORE_IMPORT * scriptCallOnGoClick) (Player *pPlayer, GameObject *pGameObject);
typedef void(WOPCCORE_IMPORT * scriptCallOnCreatureKill) (Player *pPlayer, Creature *pCreature);

typedef void(WOPCCORE_IMPORT * scriptCallScriptsInit) (char const*);
typedef void(WOPCCORE_IMPORT * scriptCallScriptsFree) ();
typedef char const* (WOPCCORE_IMPORT * scriptCallScriptsVersion) ();

typedef bool(WOPCCORE_IMPORT * scriptCallGossipHello) (Player *player, Creature *_Creature );
typedef bool(WOPCCORE_IMPORT * scriptCallQuestAccept) (Player *player, Creature *_Creature, Quest const *);
typedef bool(WOPCCORE_IMPORT * scriptCallGossipSelect)(Player *player, Creature *_Creature, uint32 sender, uint32 action);
typedef bool(WOPCCORE_IMPORT * scriptCallGossipSelectWithCode)( Player *player, Creature *_Creature, uint32 sender, uint32 action, const char* sCode );
typedef bool(WOPCCORE_IMPORT * scriptCallGOSelect)(Player *player, GameObject *_GO, uint32 sender, uint32 action);
typedef bool(WOPCCORE_IMPORT * scriptCallGOSelectWithCode)( Player *player, GameObject *_GO, uint32 sender, uint32 action, const char* sCode );
typedef bool(WOPCCORE_IMPORT * scriptCallQuestSelect)( Player *player, Creature *_Creature, Quest const* );
typedef bool(WOPCCORE_IMPORT * scriptCallQuestComplete)(Player *player, Creature *_Creature, Quest const*);
typedef uint32(WOPCCORE_IMPORT * scriptCallNPCDialogStatus)( Player *player, Creature *_Creature);
typedef uint32(WOPCCORE_IMPORT * scriptCallGODialogStatus)( Player *player, GameObject * _GO);
typedef bool(WOPCCORE_IMPORT * scriptCallChooseReward)( Player *player, Creature *_Creature, Quest const*, uint32 opt );
typedef bool(WOPCCORE_IMPORT * scriptCallItemHello)( Player *player, Item *, Quest const*);
typedef bool(WOPCCORE_IMPORT * scriptCallGOHello)( Player *player, GameObject * );
typedef bool(WOPCCORE_IMPORT * scriptCallAreaTrigger)( Player *player, AreaTriggerEntry const* );
typedef bool(WOPCCORE_IMPORT * scriptCallItemQuestAccept)(Player *player, Item *, Quest const*);
typedef bool(WOPCCORE_IMPORT * scriptCallGOQuestAccept)(Player *player, GameObject *, Quest const*);
typedef bool(WOPCCORE_IMPORT * scriptCallGOChooseReward)(Player *player, GameObject *, Quest const*, uint32 opt );
typedef bool(WOPCCORE_IMPORT * scriptCallItemUse) (Player *player, Item *_Item, SpellCastTargets const& targets);
typedef bool(WOPCCORE_IMPORT * scriptCallItemExpire) (Player *player, ItemPrototype const *_ItemProto);
typedef bool(WOPCCORE_IMPORT * scriptCallEffectDummyGameObj) (Unit *caster, uint32 spellId, uint32 effIndex, GameObject *gameObjTarget);
typedef bool(WOPCCORE_IMPORT * scriptCallEffectDummyCreature) (Unit *caster, uint32 spellId, uint32 effIndex, Creature *crTarget);
typedef bool(WOPCCORE_IMPORT * scriptCallEffectDummyItem) (Unit *caster, uint32 spellId, uint32 effIndex, Item *itemTarget);
typedef CreatureAI* (WOPCCORE_IMPORT * scriptCallGetAI) ( Creature *_Creature );
typedef InstanceData* (WOPCCORE_IMPORT * scriptCallCreateInstanceData) (Map *map);

typedef struct
{
    scriptCallScriptsInit ScriptsInit;
    scriptCallScriptsFree ScriptsFree;
    scriptCallScriptsVersion ScriptsVersion;

    scriptCallOnLogin OnLogin;
    scriptCallOnLogout OnLogout;
    scriptCallOnPVPKill OnPVPKill;
    scriptCallOnSpellCast OnSpellCast;
    scriptCallOnGetXP OnGetXP;
    scriptCallOnGetMoney OnGetMoney;
    scriptCallOnPlayerChat OnPlayerChat;
    scriptCallOnServerStartup OnServerStartup;
    scriptCallOnServerShutdown OnServerShutdown;
    scriptCallOnAreaChange OnAreaChange;
    scriptCallOnItemClick OnItemClick;
    scriptCallOnItemOpen OnItemOpen;
    scriptCallOnGoClick OnGoClick;
    scriptCallOnCreatureKill OnCreatureKill;
    scriptCallGossipHello GossipHello;
    scriptCallGOChooseReward GOChooseReward;
    scriptCallQuestAccept QuestAccept;
    scriptCallGossipSelect GossipSelect;
    scriptCallGossipSelectWithCode GossipSelectWithCode;
    scriptCallGOSelect GOSelect;
    scriptCallGOSelectWithCode GOSelectWithCode;
    scriptCallQuestSelect QuestSelect;
    scriptCallQuestComplete QuestComplete;
    scriptCallNPCDialogStatus NPCDialogStatus;
    scriptCallGODialogStatus GODialogStatus;
    scriptCallChooseReward ChooseReward;
    scriptCallItemHello ItemHello;
    scriptCallGOHello GOHello;
    scriptCallAreaTrigger scriptAreaTrigger;
    scriptCallItemQuestAccept ItemQuestAccept;
    scriptCallGOQuestAccept GOQuestAccept;
    scriptCallItemUse ItemUse;
    scriptCallItemExpire ItemExpire;
    scriptCallEffectDummyGameObj  EffectDummyGameObj;
    scriptCallEffectDummyCreature EffectDummyCreature;
    scriptCallEffectDummyItem     EffectDummyItem;
    scriptCallGetAI GetAI;
    scriptCallCreateInstanceData CreateInstanceData;

    WOPCCORE_LIBRARY_HANDLE hScriptsLib;
}_ScriptSet,*ScriptsSet;

extern ScriptsSet Script;
#endif
