/* Copyright (C) 2009 IxiliumEmu <http://www.ixi-soft.com/>
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

/* ScriptData
SDName: Boss_Anthar_Forgemender
SD%Complete: 0
SDComment: not complete
SDCategory: Icecrown, Crusaders Coliseum
EndScriptData */

#include "precompiled.h"

// Not Spells defined yet.

struct SCRIPTS_DLL_DECL boss_anthar_forgemenderAI : public ScriptedAI
{
    boss_anthar_forgemenderAI(Creature *c) : ScriptedAI(c) {}

    void Reset(){}
    void EnterCombat(Unit* who){}
    void AttackStart(Unit* who) {}
    void MoveInLineOfSight(Unit* who) {}
    void UpdateAI(const uint32 diff){}
    void JustDied(Unit* killer){}
    void KilledUnit(Unit *victim){}
};

CreatureAI* GetAI_boss_anthar_forgemender(Creature* pCreature)
{
    return new boss_anthar_forgemenderAI (pCreature);
}

void AddSC_boss_anthar_forgemender()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "boss_anthar_forgemender";
    newscript->GetAI = &GetAI_boss_anthar_forgemender;
    newscript->RegisterSelf();
}
