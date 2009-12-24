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
        WOPCCORE_CLOSE_LIBRARY(Script->hScriptsLib);
        delete Script;
        Script = NULL;
    }
}

bool LoadScriptingModule(char const* libName)
{
    ScriptsSet testScript=new _ScriptSet;

    std::string name = strlen(libName) ? libName : WOPCCORE_SCRIPT_NAME;
    name += WOPCCORE_SCRIPT_EXT;

    testScript->hScriptsLib=WOPCCORE_LOAD_LIBRARY(name.c_str());

    if (!testScript->hScriptsLib )
    {
        printf("Error loading Scripts Library %s !\n",name.c_str());
        delete testScript;
        return false;
    }

    if (  !(testScript->ScriptsInit         =(scriptCallScriptsInit         )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"ScriptsInit"         ))
        ||!(testScript->OnLogin             =(scriptCallOnLogin             )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnLogin"             ))
        ||!(testScript->OnLogout            =(scriptCallOnLogout            )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnLogout"            ))
        ||!(testScript->OnPVPKill           =(scriptCallOnPVPKill           )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnPVPKill"           ))
        ||!(testScript->OnLogin             =(scriptCallOnLogin             )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnLogin"             ))
        ||!(testScript->OnLogout            =(scriptCallOnLogout            )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnLogout"            ))
        ||!(testScript->OnPVPKill           =(scriptCallOnPVPKill           )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnPVPKill"           ))
        ||!(testScript->OnSpellCast         =(scriptCallOnSpellCast         )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnSpellCast"         ))
        ||!(testScript->OnGetXP             =(scriptCallOnGetXP             )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnGetXP"             ))
        ||!(testScript->OnGetMoney          =(scriptCallOnGetMoney          )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnGetMoney"          ))
        ||!(testScript->OnPlayerChat        =(scriptCallOnPlayerChat        )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnPlayerChat"        ))
        ||!(testScript->OnServerStartup     =(scriptCallOnServerStartup     )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnServerStartup"     ))
        ||!(testScript->OnServerShutdown    =(scriptCallOnServerShutdown    )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnServerShutdown"    ))
        ||!(testScript->OnAreaChange        =(scriptCallOnAreaChange        )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnAreaChange"        ))
        ||!(testScript->OnItemClick         =(scriptCallOnItemClick         )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnItemClick"         ))
        ||!(testScript->OnItemOpen          =(scriptCallOnItemOpen          )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnItemOpen"          ))
        ||!(testScript->OnGoClick           =(scriptCallOnGoClick           )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnGoClick"           ))
        ||!(testScript->OnCreatureKill      =(scriptCallOnCreatureKill      )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"OnCreatureKill"      ))
        ||!(testScript->ScriptsFree         =(scriptCallScriptsFree         )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"ScriptsFree"         ))
        ||!(testScript->ScriptsVersion      =(scriptCallScriptsVersion      )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"ScriptsVersion"      ))
        ||!(testScript->GossipHello         =(scriptCallGossipHello         )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"GossipHello"         ))
        ||!(testScript->GOChooseReward      =(scriptCallGOChooseReward      )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"GOChooseReward"      ))
        ||!(testScript->QuestAccept         =(scriptCallQuestAccept         )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"QuestAccept"         ))
        ||!(testScript->GossipSelect        =(scriptCallGossipSelect        )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"GossipSelect"        ))
        ||!(testScript->GossipSelectWithCode=(scriptCallGossipSelectWithCode)WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"GossipSelectWithCode"))
        ||!(testScript->GOSelect            =(scriptCallGOSelect            )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"GOSelect"            ))
        ||!(testScript->GOSelectWithCode    =(scriptCallGOSelectWithCode    )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"GOSelectWithCode"    ))
        ||!(testScript->QuestSelect         =(scriptCallQuestSelect         )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"QuestSelect"         ))
        ||!(testScript->QuestComplete       =(scriptCallQuestComplete       )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"QuestComplete"       ))
        ||!(testScript->NPCDialogStatus     =(scriptCallNPCDialogStatus     )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"NPCDialogStatus"     ))
        ||!(testScript->GODialogStatus      =(scriptCallGODialogStatus      )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"GODialogStatus"     ))
        ||!(testScript->ChooseReward        =(scriptCallChooseReward        )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"ChooseReward"        ))
        ||!(testScript->ItemHello           =(scriptCallItemHello           )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"ItemHello"           ))
        ||!(testScript->GOHello             =(scriptCallGOHello             )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"GOHello"             ))
        ||!(testScript->scriptAreaTrigger   =(scriptCallAreaTrigger         )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"AreaTrigger"         ))
        ||!(testScript->ItemQuestAccept     =(scriptCallItemQuestAccept     )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"ItemQuestAccept"     ))
        ||!(testScript->GOQuestAccept       =(scriptCallGOQuestAccept       )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"GOQuestAccept"       ))
        ||!(testScript->ItemUse             =(scriptCallItemUse             )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"ItemUse"             ))
        ||!(testScript->ItemExpire          =(scriptCallItemExpire          )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"ItemExpire"          ))
        ||!(testScript->EffectDummyGameObj  =(scriptCallEffectDummyGameObj  )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"EffectDummyGameObj"  ))
        ||!(testScript->EffectDummyCreature =(scriptCallEffectDummyCreature )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"EffectDummyCreature" ))
        ||!(testScript->EffectDummyItem     =(scriptCallEffectDummyItem     )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"EffectDummyItem"     ))
        ||!(testScript->GetAI               =(scriptCallGetAI               )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"GetAI"               ))
        ||!(testScript->CreateInstanceData  =(scriptCallCreateInstanceData  )WOPCCORE_GET_PROC_ADDR(testScript->hScriptsLib,"CreateInstanceData"  ))
        )
    {
        printf("Error loading Scripts Library %s !\n Library missing required functions.",name.c_str());
        WOPCCORE_CLOSE_LIBRARY(testScript->hScriptsLib);
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
