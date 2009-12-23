#include "precompiled.h"
#include "WorldPacket.h"

bool GossipHello_npc_acherus_taxi(Player *pPlayer, Creature *pCreature)
{
    if (pPlayer->GetPositionZ() >= 316)
        pPlayer->CastSpell(pPlayer, 54568, true);
    else
        pPlayer->CastSpell(pPlayer, 54575, true);

    return true;
}

void AddSC_npc_acherus_taxi()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_acherus_taxi";
    newscript->pGossipHello = &GossipHello_npc_acherus_taxi;
    newscript->RegisterSelf();
}