/*
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * Copyright (C) 2009 IxiliumEmu <http://www.ixi-soft.com/>
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

#ifndef WIN32
#include <dlfcn.h>
#endif

#include "Common.h"
#include "Platform/Define.h"
#include "ScriptCalls.h"
#include "World.h"
#include "Config/ConfigEnv.h"

ScriptsSet Script=NULL;

void UnloadScriptingModule()
{
    if (Script)
    {
        //todo: some check if some func from script library is called right now
        Script->ScriptsFree();
        IXILIUM_CLOSE_LIBRARY(Script->hScriptsLib);
        delete Script;
        Script = NULL;
    }
}

bool LoadScriptingModule(char const* libName)
{
    ScriptsSet testScript=new _ScriptSet;

    std::string name = strlen(libName) ? libName : IXILIUM_SCRIPT_NAME;
    name += IXILIUM_SCRIPT_EXT;

    testScript->hScriptsLib=IXILIUM_LOAD_LIBRARY(name.c_str());

    if (!testScript->hScriptsLib )
    {
        printf("Error loading Scripts Library %s !\n",name.c_str());
        delete testScript;
        return false;
    }

    if (  !(testScript->ScriptsInit         =(scriptCallScriptsInit         )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"ScriptsInit"         ))
        ||!(testScript->OnLogin             =(scriptCallOnLogin             )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnLogin"             ))
        ||!(testScript->OnLogout            =(scriptCallOnLogout            )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnLogout"            ))
        ||!(testScript->OnPVPKill           =(scriptCallOnPVPKill           )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnPVPKill"           ))
        ||!(testScript->OnLogin             =(scriptCallOnLogin             )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnLogin"             ))
        ||!(testScript->OnLogout            =(scriptCallOnLogout            )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnLogout"            ))
        ||!(testScript->OnPVPKill           =(scriptCallOnPVPKill           )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnPVPKill"           ))
        ||!(testScript->OnSpellCast         =(scriptCallOnSpellCast         )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnSpellCast"         ))
        ||!(testScript->OnGetXP             =(scriptCallOnGetXP             )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnGetXP"             ))
        ||!(testScript->OnGetMoney          =(scriptCallOnGetMoney          )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnGetMoney"          ))
        ||!(testScript->OnPlayerChat        =(scriptCallOnPlayerChat        )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnPlayerChat"        ))
        ||!(testScript->OnServerStartup     =(scriptCallOnServerStartup     )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnServerStartup"     ))
        ||!(testScript->OnServerShutdown    =(scriptCallOnServerShutdown    )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnServerShutdown"    ))
        ||!(testScript->OnAreaChange        =(scriptCallOnAreaChange        )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnAreaChange"        ))
        ||!(testScript->OnItemClick         =(scriptCallOnItemClick         )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnItemClick"         ))
        ||!(testScript->OnItemOpen          =(scriptCallOnItemOpen          )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnItemOpen"          ))
        ||!(testScript->OnGoClick           =(scriptCallOnGoClick           )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnGoClick"           ))
        ||!(testScript->OnCreatureKill      =(scriptCallOnCreatureKill      )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"OnCreatureKill"      ))
        ||!(testScript->ScriptsFree         =(scriptCallScriptsFree         )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"ScriptsFree"         ))
        ||!(testScript->ScriptsVersion      =(scriptCallScriptsVersion      )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"ScriptsVersion"      ))
        ||!(testScript->GossipHello         =(scriptCallGossipHello         )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"GossipHello"         ))
        ||!(testScript->GOChooseReward      =(scriptCallGOChooseReward      )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"GOChooseReward"      ))
        ||!(testScript->QuestAccept         =(scriptCallQuestAccept         )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"QuestAccept"         ))
        ||!(testScript->GossipSelect        =(scriptCallGossipSelect        )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"GossipSelect"        ))
        ||!(testScript->GossipSelectWithCode=(scriptCallGossipSelectWithCode)IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"GossipSelectWithCode"))
        ||!(testScript->GOSelect            =(scriptCallGOSelect            )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"GOSelect"            ))
        ||!(testScript->GOSelectWithCode    =(scriptCallGOSelectWithCode    )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"GOSelectWithCode"    ))
        ||!(testScript->QuestSelect         =(scriptCallQuestSelect         )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"QuestSelect"         ))
        ||!(testScript->QuestComplete       =(scriptCallQuestComplete       )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"QuestComplete"       ))
        ||!(testScript->NPCDialogStatus     =(scriptCallNPCDialogStatus     )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"NPCDialogStatus"     ))
        ||!(testScript->GODialogStatus      =(scriptCallGODialogStatus      )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"GODialogStatus"     ))
        ||!(testScript->ChooseReward        =(scriptCallChooseReward        )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"ChooseReward"        ))
        ||!(testScript->ItemHello           =(scriptCallItemHello           )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"ItemHello"           ))
        ||!(testScript->GOHello             =(scriptCallGOHello             )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"GOHello"             ))
        ||!(testScript->scriptAreaTrigger   =(scriptCallAreaTrigger         )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"AreaTrigger"         ))
        ||!(testScript->ItemQuestAccept     =(scriptCallItemQuestAccept     )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"ItemQuestAccept"     ))
        ||!(testScript->GOQuestAccept       =(scriptCallGOQuestAccept       )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"GOQuestAccept"       ))
        ||!(testScript->ItemUse             =(scriptCallItemUse             )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"ItemUse"             ))
        ||!(testScript->ItemExpire          =(scriptCallItemExpire          )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"ItemExpire"          ))
        ||!(testScript->EffectDummyGameObj  =(scriptCallEffectDummyGameObj  )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"EffectDummyGameObj"  ))
        ||!(testScript->EffectDummyCreature =(scriptCallEffectDummyCreature )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"EffectDummyCreature" ))
        ||!(testScript->EffectDummyItem     =(scriptCallEffectDummyItem     )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"EffectDummyItem"     ))
        ||!(testScript->GetAI               =(scriptCallGetAI               )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"GetAI"               ))
        ||!(testScript->CreateInstanceData  =(scriptCallCreateInstanceData  )IXILIUM_GET_PROC_ADDR(testScript->hScriptsLib,"CreateInstanceData"  ))
        )
    {
        printf("Error loading Scripts Library %s !\n Library missing required functions.",name.c_str());
        IXILIUM_CLOSE_LIBRARY(testScript->hScriptsLib);
        delete testScript;
        return false;
    }

    sLog.outString();
    sLog.outString( ">>> Scripts Library %s was successfully loaded.\n", name.c_str() );

    //heh we are still there :P we have a valid library
    //we reload script
    UnloadScriptingModule();

    Script=testScript;
    Script->ScriptsInit(sConfig.GetFilename().c_str());

    sWorld.SetScriptsVersion(Script->ScriptsVersion());

    return true;
}
