/*
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * Copyright (C) 2009 WoPC-Core <http://www.worldofprivatecraft.com/>
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

/// \addtogroup WoPCCored WoPC-Core Daemon
/// @{
/// \file

#include <openssl/opensslv.h>
#include <openssl/crypto.h>
#include <ace/Version.h>

#include "Common.h"
#include "SystemConfig.h.in"
#include "Database/DatabaseEnv.h"
#include "Config/ConfigEnv.h"

#include "Log.h"
#include "Master.h"

#ifdef WIN32
#include "ServiceWin32.h"
char serviceName[] = "WoPCCore";
char serviceLongName[] = "WoPCCore Services";
char serviceDescription[] = "Ein World of Warcraft Server Emulations Software";
/*
 * -1 - not in service mode
 *  0 - stopped
 *  1 - running
 *  2 - paused
 */
int m_ServiceStatus = -1;
#endif

DatabaseType WorldDatabase;                                 ///< Accessor to the world database
DatabaseType CharacterDatabase;                             ///< Accessor to the character database
DatabaseType loginDatabase;                                 ///< Accessor to the realm/login database

uint32 realmID;                                             ///< Id of the realm

/// Print out the usage string for this program on the console.
void usage(const char *prog)
{
    sLog.outString("Usage: \n %s [<options>]\n"
        "    -c config_file           use config_file as configuration file\n\r"
        #ifdef WIN32
        "    Running as service functions:\n\r"
        "    --service                run as service\n\r"
        "    -s install               install service\n\r"
        "    -s uninstall             uninstall service\n\r"
        #endif
        ,prog);
}

/// Launch the Ixilium server
extern int main(int argc, char **argv)
{
    ///- Command line parsing to get the configuration file name
    char const* cfg_file = _WORLD_CONFIG;
    int c=1;
    while( c < argc )
    {
        if ( strcmp(argv[c],"-c") == 0)
        {
            if ( ++c >= argc )
            {
                sLog.outError("Runtime-Error: -c option requires an input argument");
                usage(argv[0]);
                return 1;
            }
            else
                cfg_file = argv[c];
        }

        #ifdef WIN32
        ////////////
        //Services//
        ////////////
        if ( strcmp(argv[c],"-s") == 0)
        {
            if ( ++c >= argc )
            {
                sLog.outError("Runtime-Error: -s option requires an input argument");
                usage(argv[0]);
                return 1;
            }
            if ( strcmp(argv[c],"install") == 0)
            {
                if (WinServiceInstall())
                    sLog.outString("Installing service");
                return 1;
            }
            else if ( strcmp(argv[c],"uninstall") == 0)
            {
                if (WinServiceUninstall())
                    sLog.outString("Uninstalling service");
                return 1;
            }
            else
            {
                sLog.outError("Runtime-Error: unsupported option %s",argv[c]);
                usage(argv[0]);
                return 1;
            }
        }
        if ( strcmp(argv[c],"--service") == 0)
        {
            WinServiceRun();
        }
        ////
        #endif
        ++c;
    }

    if (!sConfig.SetSource(cfg_file))
    {
        sLog.outError("Could not find configuration file %s.", cfg_file);
        return 1;
    }
    sLog.outString("Using configuration file %s.", cfg_file);

    uint32 confVersion = sConfig.GetIntDefault("ConfVersion", 0);
    if (confVersion < _WORLDCONFVERSION)
    {
        sLog.outError("*****************************************************************************");
        sLog.outError(" WARNING: Deine world.conf Version weißt auf das sie nicht mehr Aktuell ist!");
        sLog.outError("          Bitte ueberprüfe sie auf Updates, einige Werte koennten sich geandert haben");
        sLog.outError("          dies koennte sich auf das verhalten des Server auswirken.");
        sLog.outError("*****************************************************************************");
        clock_t pause = 3000 + clock();
        while (pause > clock()) {}
    }

    sLog.outDetail("%s (Library: %s)", OPENSSL_VERSION_TEXT, SSLeay_version(SSLEAY_VERSION));
    if (SSLeay() < 0x009080bfL )
    {
        sLog.outError("Deine OpenSSL lib Version ist nicht aktuell. Login zum Server wird nicht gehen!");
        sLog.outError("Mindestens vorhanden Version [OpenSSL 0.9.8k]");
        clock_t pause = 5000 + clock();
        while (pause > clock()) {}
        return 1;
    }
    sLog.outDetail("Using ACE: %s", ACE_VERSION);

    ///- and run the 'Master'
    /// \todo Why do we need this 'Master'? Can't all of this be in the Main as for Realmd?
    return sMaster.Run();

    // at sMaster return function exist with codes
    // 0 - normal shutdown
    // 1 - shutdown at error
    // 2 - restart command used, this code can be used by restarter for restart Ixiliumd
}

/// @}
