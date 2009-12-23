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
SDName: Instance Trial of the Crusader
SD%Complete: 80%
SDComment: Done, maybe have bugs!
SDCategory: Icecrown, Crusaders Coliseum
EndScriptData */

#include "precompiled.h"
#include "trial_crusader.h"

#define MAX_ENCOUNTER     6

/* Trial of the Crusader encounters:
0 - Acidmaw
1 - Alyssia Moonstalker
2 - Anthar Forgemender
3 - Anub'Arak
4 - Argent Mage
5 - Bealnor Lightbearer
*/

struct SCRIPTS_DLL_DECL instance_trial_crusader : public ScriptedInstance
{
    instance_trial_crusader(Map* pMap) : ScriptedInstance(pMap) {Initialize();};
    
    std::string strInstData;
    std::string str_data;
    uint32 m_auiEncounter[MAX_ENCOUNTER];

    uint64 uiAcidmaw;
    uint64 uiMoonstalker;
    uint64 uiForgemender;
    uint64 uiAnubArak;
    uint64 uiArgentMage;
    uint64 uiBealnorLightbearer;
    
    void Initialize()
    {
        memset(&m_auiEncounter, 0, sizeof(m_auiEncounter));
        
        uiAcidmaw = 0;
        uiMoonstalker = 0;
        uiForgemender = 0;
        uiAnubArak = 0;
        uiArgentMage = 0;
        uiBealnorLightbearer = 0;
    }
    
    bool IsEncounterInProgress() const
    {
        for (uint8 i = 0; i < MAX_ENCOUNTER; ++i)
            if (m_auiEncounter[i] == IN_PROGRESS) return true;

        return false;
    }

    void OnCreatureCreate(Creature* pCreature, bool add)
    {
        switch (pCreature->GetEntry())
        {
            case CREATURE_ACIDMAW:
                uiAcidmaw = pCreature->GetGUID();
                break;
            case CREATURE_MOONSTALKER:
                uiMoonstalker = pCreature->GetGUID();
                break;
            case CREATURE_FORGEMENDER:
                uiForgemender = pCreature->GetGUID();
                break;
            case CREATURE_ANUBARAK:
                uiAnubArak = pCreature->GetGUID();
                break;
            case CREATURE_ARGENTMAGE:
                uiArgentMage = pCreature->GetGUID(); 
                break;
            case CREATURE_BAELNOR_LIGHTBEARER:
                uiBealnorLightbearer = pCreature->GetGUID();
                break;
        }
    }

    uint32 GetData(uint32 identifier)
    {
        switch(identifier)
        {
            case DATA_ACIDMAW_EVENT:               return m_auiEncounter[0];
            case DATA_MOONSTALKER_EVENT:           return m_auiEncounter[1];
            case DATA_FORGEMENDER_EVENT:           return m_auiEncounter[2];
            case DATA_ANUBARAK_EVENT:              return m_auiEncounter[3];
            case DATA_ARGENTMAGE_EVENT:            return m_auiEncounter[4];
            case DATA_BAELNOR_LIGHTBEARER_EVENT:   return m_auiEncounter[5];
        }
        
        return 0;
    }

    void SetData(uint32 identifier, uint32 data)
    {
        switch(identifier)
        {
            case DATA_ACIDMAW_EVENT:
                m_auiEncounter[0] = data;
                break;
            case DATA_MOONSTALKER_EVENT:
                m_auiEncounter[1] = data;
                break;
            case DATA_FORGEMENDER_EVENT:
                m_auiEncounter[2] = data;
                break;
            case DATA_ANUBARAK_EVENT:
                m_auiEncounter[3] = data;
                break;
            case DATA_ARGENTMAGE_EVENT:
                m_auiEncounter[4] = data;
                break;
            case DATA_BAELNOR_LIGHTBEARER_EVENT:
                m_auiEncounter[5] = data;
                break;
        }
        
        if (data == DONE)
            SaveToDB();
    }

    uint64 GetData64(uint32 uiIdentifier)
    {
        switch(uiIdentifier)
        {
            case DATA_ACIDMAW:              return uiAcidmaw;
            case DATA_MOONSTALKER:          return uiMoonstalker;
            case DATA_FORGEMENDER:          return uiForgemender;
            case DATA_ANUBARAK:             return uiAnubArak;
            case DATA_ARGENTMAGE:           return uiArgentMage;
            case DATA_BAELNOR_LIGHTBEARER:  return uiBealnorLightbearer;
        }
        
        return 0;
    }

    std::string GetSaveData()
    {
        OUT_SAVE_INST_DATA;

        std::ostringstream saveStream;
        saveStream << "R A " << m_auiEncounter[0] << " " << m_auiEncounter[1] << " "
            << m_auiEncounter[2] << " " << m_auiEncounter[3] << " " << m_auiEncounter[4] << " " << m_auiEncounter[5];

        str_data = saveStream.str();

        OUT_SAVE_INST_DATA_COMPLETE;
        return str_data;
    }

    void Load(const char* in)
    {
        if (!in)
        {
            OUT_LOAD_INST_DATA_FAIL;
            return;
        }

        OUT_LOAD_INST_DATA(in);

        char dataHead1, dataHead2;
        uint16 data0, data1, data2, data3, data4, data5;

        std::istringstream loadStream(in);
        loadStream >> dataHead1 >> dataHead2 >> data0 >> data1 >> data2 >> data3 >> data4 >> data5;

        if (dataHead1 == 'R' && dataHead2 == 'A')
        {
            m_auiEncounter[0] = data0;
            m_auiEncounter[1] = data1;
            m_auiEncounter[2] = data2;
            m_auiEncounter[3] = data3;
            m_auiEncounter[4] = data4;
            m_auiEncounter[5] = data5;
            
            for (uint8 i = 0; i < MAX_ENCOUNTER; ++i)
                if (m_auiEncounter[i] == IN_PROGRESS)
                    m_auiEncounter[i] = NOT_STARTED;

        } else OUT_LOAD_INST_DATA_FAIL;
    }
};

InstanceData* GetInstanceData_instance_trial_crusader(Map* pMap)
{
    return new instance_trial_crusader(pMap);
}

void AddSC_instance_trial_crusader()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "instance_trial_crusader";
    newscript->GetInstanceData = &GetInstanceData_instance_trial_crusader;
    newscript->RegisterSelf();
}