/*
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * Copyright (C) 2009 WOPCCOREEmu <http://www.ixi-soft.com/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "Common.h"
#include "UpdateMask.h"
#include "Opcodes.h"
#include "World.h"
#include "ObjectAccessor.h"
#include "Database/DatabaseEnv.h"
#include "GridNotifiers.h"
#include "CellImpl.h"
#include "GridNotifiersImpl.h"

DynamicObject::DynamicObject() : WorldObject()
{
    m_objectType |= TYPEMASK_DYNAMICOBJECT;
    m_objectTypeId = TYPEID_DYNAMICOBJECT;

    m_updateFlag = (UPDATEFLAG_HIGHGUID | UPDATEFLAG_HAS_POSITION | UPDATEFLAG_POSITION);

    m_valuesCount = DYNAMICOBJECT_END;
}

void DynamicObject::AddToWorld()
{
    ///- Register the dynamicObject for guid lookup
    if (!IsInWorld())
    {
        sObjectAccessor.AddObject(this);
        WorldObject::AddToWorld();
    }
}

void DynamicObject::RemoveFromWorld()
{
    ///- Remove the dynamicObject from the accessor
    if (IsInWorld())
    {
        if (m_isWorldObject)
        {
            if (Unit *caster = GetCaster())
            {
                if (caster->GetTypeId() == TYPEID_PLAYER)
                    ((Player*)caster)->SetViewpoint(this, false);
            }
            else
            {
                sLog.outCrash("DynamicObject::RemoveFromWorld cannot find viewpoint owner");
            }
        }
        WorldObject::RemoveFromWorld();
        sObjectAccessor.RemoveObject(this);
    }
}

bool DynamicObject::Create(uint32 guidlow, Unit *caster, uint32 spellId, uint32 effMask, const Position &pos, int32 duration, float radius, bool active)
{
    SetMap(caster->GetMap());
    Relocate(pos);
    if (!IsPositionValid())
    {
        sLog.outError("DynamicObject (spell %u eff %u) not created. Suggested coordinates isn't valid (X: %f Y: %f)",spellId,effMask,GetPositionX(),GetPositionY());
        return false;
    }

    WorldObject::_Create(guidlow, HIGHGUID_DYNAMICOBJECT, caster->GetPhaseMask());

    SetEntry(spellId);
    SetFloatValue( OBJECT_FIELD_SCALE_X, 1 );
    SetUInt64Value( DYNAMICOBJECT_CASTER, caster->GetGUID() );
    SetUInt32Value( DYNAMICOBJECT_BYTES, 0x00000001 );
    SetUInt32Value( DYNAMICOBJECT_SPELLID, spellId );
    SetFloatValue( DYNAMICOBJECT_RADIUS, radius);
    SetUInt32Value( DYNAMICOBJECT_CASTTIME, getMSTime() );  // new 2.4.0

    m_aliveDuration = duration;
    m_radius = radius;
    m_effMask = effMask;
    m_spellId = spellId;
    m_updateTimer = 0;

    m_isWorldObject = active;
    return true;
}

Unit* DynamicObject::GetCaster() const
{
    // can be not found in some cases
    return ObjectAccessor::GetUnit(*this, GetCasterGUID());
}

void DynamicObject::Update(uint32 p_time)
{
    // caster can be not in world at time dynamic object update, but dynamic object not yet deleted in Unit destructor
    Unit* caster = GetCaster();
    if (!caster)
    {
        Delete();
        return;
    }

    bool deleteThis = false;

    if (m_aliveDuration > int32(p_time))
        m_aliveDuration -= p_time;
    else
        deleteThis = true;

    /*
    // have radius and work as persistent effect
    if (m_radius)
    {
        // TODO: make a timer and update this in larger intervals
        CellPair p(WOPCCORE::ComputeCellPair(GetPositionX(), GetPositionY()));
        Cell cell(p);
        cell.data.Part.reserved = ALL_DISTRICT;
        cell.SetNoCreate();
 
        WOPCCORE::DynamicObjectUpdater notifier(*this, caster);
 
        TypeContainerVisitor<WOPCCORE::DynamicObjectUpdater, WorldTypeMapContainer > world_object_notifier(notifier);
        TypeContainerVisitor<WOPCCORE::DynamicObjectUpdater, GridTypeMapContainer > grid_object_notifier(notifier);
 
        CellLock<GridReadGuard> cell_lock(cell, p);
        cell_lock->Visit(cell_lock, world_object_notifier, *GetMap(), *this, m_radius);
        cell_lock->Visit(cell_lock, grid_object_notifier, *GetMap(), *this, m_radius);
    }
    */

    if (m_effMask)
    {
        if (m_updateTimer < p_time)
        {
            WOPCCORE::DynamicObjectUpdater notifier(*this,caster);
            VisitNearbyObject(GetRadius(), notifier);
            m_updateTimer = 500; // is this official-like?
        } else m_updateTimer -= p_time;
    }

    if (deleteThis)
    {
        caster->RemoveDynObjectWithGUID(GetGUID());
        Delete();
    }
}

void DynamicObject::Delete()
{
    SendObjectDeSpawnAnim(GetGUID());
    RemoveFromWorld();
    AddObjectToRemoveList();
}

void DynamicObject::Delay(int32 delaytime)
{
    m_aliveDuration -= delaytime;
    for (AffectedSet::iterator iunit = m_affected.begin(); iunit != m_affected.end(); ++iunit)
        if (*iunit)
            (*iunit)->DelayAura(m_spellId, GetCaster()->GetGUID(), delaytime);
}

bool DynamicObject::isVisibleForInState(Player const* u, bool inVisibleList) const
{
    return IsInWorld() && u->IsInWorld()
        && (IsWithinDistInMap(u->m_seer,World::GetMaxVisibleDistanceForObject()+(inVisibleList ? World::GetVisibleObjectGreyDistance() : 0.0f), false));
}
