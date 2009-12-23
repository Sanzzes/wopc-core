/*
 * Copyright (C) 2009 WOPCCOREEmu <http://www.ixi-soft.com/>
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

#ifndef _BCMGR_H
#define _BCMGR_H

#include <string>

#include "Common.h"
#include "Policies/Singleton.h"

enum BroadcastOpResult
{
    BOR_OK,
    BOR_TEXT_TOO_LONG,
    BOR_TEXT_ALREADY_EXIST,
    BOR_DB_INTERNAL_ERROR
};

#define MAX_BROADCAST_STR 255

class BroadcastMgr
{
    public:
        BroadcastMgr();
        ~BroadcastMgr();

        BroadcastOpResult AddBroadcast(std::string broadcast_text);
        BroadcastOpResult EditBroadcast(uint32 bcid, std::string new_broadcast_text);
        BroadcastOpResult DeleteBroadcast(uint32 bcid);
        BroadcastOpResult ListBroadcasts();

        bool GetBroadcastText(std::string broadcast_text);

        static bool normalizeString(std::string& utf8str);
};

#define bcmgr WOPCCORE::Singleton<BroadcastMgr>::Instance()
#endif
