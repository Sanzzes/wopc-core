/*
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

#include "Database/DatabaseEnv.h"
#include "Policies/SingletonImp.h"

#include "BroadcastMgr.h"
#include "ObjectAccessor.h"
#include "Player.h"
#include "Util.h"

extern DatabaseType WorldDatabase;

INSTANTIATE_SINGLETON_1(BroadcastMgr);

BroadcastMgr::BroadcastMgr()
{
}

BroadcastMgr::~BroadcastMgr()
{
}

BroadcastOpResult BroadcastMgr::AddBroadcast(std::string broadcast_text)
{
    if (utf8length(broadcast_text) > MAX_BROADCAST_STR)
        return BOR_TEXT_TOO_LONG;                           // broadcast text too long

    normalizeString(broadcast_text);

    if (GetBroadcastText(broadcast_text))
        return BOR_TEXT_ALREADY_EXIST;                      // broadcast text does already exist

    if (!WorldDatabase.PExecute("INSERT INTO autobroadcast (id, text) VALUES (NULL, '%s')", broadcast_text.c_str()))
        return BOR_DB_INTERNAL_ERROR;                       // unexpected error

    return BOR_OK;
}

/*
BroadcastOpResult BroadcastMgr::EditBroadcast(uint32 bcid, std::string new_broadcast_text)
{
    return BOR_OK;
}

BroadcastOpResult BroadcastMgr::DeleteBroadcast(uint32 bcid)
{
    return BOR_OK;
}

BroadcastOpResult BroadcastMgr::ListBroadcasts()
{
    return BOR_OK;
}
*/

bool BroadcastMgr::GetBroadcastText(std::string broadcast_text)
{
    WorldDatabase.escape_string(broadcast_text);
    QueryResult *result = WorldDatabase.PQuery("SELECT * FROM autobroadcast WHERE text = '%s' LIMIT 1", broadcast_text.c_str());

    if (!result)
        return 0;
    else
    {
        uint32 bc_id = (*result)[0].GetUInt32();
        const char *bc_text = (*result)[1].GetString();
        delete result;
        return bc_id, bc_text;
    }
}

bool BroadcastMgr::normalizeString(std::string& utf8str)
{
    wchar_t wstr_buf[MAX_BROADCAST_STR + 1];
    size_t wstr_len = MAX_BROADCAST_STR;

    if (!Utf8toWStr(utf8str, wstr_buf, wstr_len))
        return false;

    return WStrToUtf8(wstr_buf, wstr_len, utf8str);
}
