


#include "GossipDef.h"
#include "Player.h"
#include "precompiled.h"
#include "sc_gossip.h"

// All rights to IxiliumEmu!!
// Need Test !!!
// 

bool GossipHello_npc_playermaster(Player *player, Creature *_Creature)
{
    player->SetTaxiCheater(true);

    player->ADD_GOSSIP_ITEM(5, "Hauptstaedte",                                 GOSSIP_SENDER_MAIN,   1);
    player->ADD_GOSSIP_ITEM(5, "Azeroth Instanzen",                            GOSSIP_SENDER_MAIN,   2);
    player->ADD_GOSSIP_ITEM(5, "Azeroth Schlachtzuege",                        GOSSIP_SENDER_MAIN,   3);
    player->ADD_GOSSIP_ITEM(5, "Scherbenwelt Instanzen",                       GOSSIP_SENDER_MAIN,   4);
    player->ADD_GOSSIP_ITEM(5, "Scherbenwelt Schlachtzuege",                   GOSSIP_SENDER_MAIN,   5);
    player->ADD_GOSSIP_ITEM(5, "Gurubashi Arena",                              GOSSIP_SENDER_MAIN,   6);
    player->ADD_GOSSIP_ITEM(5, "Nordend",                                      GOSSIP_SENDER_MAIN,  84);
    player->ADD_GOSSIP_ITEM(5, "Ixilium",                                      GOSSIP_SENDER_MAIN, 300);
    player->ADD_GOSSIP_ITEM(0, "Schoenen Tag noch!",                           GOSSIP_SENDER_MAIN,   9);

    player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,                           _Creature->GetGUID());

    return true;
}

void SendDefaultMenu_npc_playermaster(Player *player, Creature *_Creature, uint32 action)
{
    // Wenn der Spieler in einen Kampf verwickelt wird.
	if(!player->getAttackers().empty())
    {
        player->CLOSE_GOSSIP_MENU();
        player->GetSession()->SendNotification("Beende erst den Kampf!");
    }

    switch(action)
    {
        case 1: // Haupstaedte
            if (player->GetTeam() == ALLIANCE)
            {
                player->ADD_GOSSIP_ITEM(5, "Sturmwind",                        GOSSIP_SENDER_MAIN,  20);
                player->ADD_GOSSIP_ITEM(5, "Darnassus",                        GOSSIP_SENDER_MAIN,  21);
                player->ADD_GOSSIP_ITEM(5, "Eisenschmiede",                    GOSSIP_SENDER_MAIN,  22);
                player->ADD_GOSSIP_ITEM(5, "Exodar",                           GOSSIP_SENDER_MAIN,  23);
                player->ADD_GOSSIP_ITEM(5, "Shattrath",                        GOSSIP_SENDER_MAIN,  24);
                player->ADD_GOSSIP_ITEM(5, "Dalaran",                          GOSSIP_SENDER_MAIN,  89);
                player->ADD_GOSSIP_ITEM(5, "Allianz Lounge",                   GOSSIP_SENDER_MAIN, 303);
                player->ADD_GOSSIP_ITEM(0, "[Teleportliste]",                  GOSSIP_SENDER_MAIN, 200);
                player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,               _Creature->GetGUID());
            }
            else
            {
                player->ADD_GOSSIP_ITEM(5, "Orgrimmar",                        GOSSIP_SENDER_MAIN,  25);
                player->ADD_GOSSIP_ITEM(5, "Donnerfels",                       GOSSIP_SENDER_MAIN,  26);
                player->ADD_GOSSIP_ITEM(5, "Unterstadt",                       GOSSIP_SENDER_MAIN,  27);
                player->ADD_GOSSIP_ITEM(5, "Silbermond",                       GOSSIP_SENDER_MAIN,  28);
                player->ADD_GOSSIP_ITEM(5, "Shattrath",                        GOSSIP_SENDER_MAIN,  24);
                player->ADD_GOSSIP_ITEM(5, "Dalaran",                          GOSSIP_SENDER_MAIN,  89);
                player->ADD_GOSSIP_ITEM(5, "Horde Lounge",                     GOSSIP_SENDER_MAIN, 304);
                player->ADD_GOSSIP_ITEM(0, "[Teleportliste]",                  GOSSIP_SENDER_MAIN, 200);
                player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,               _Creature->GetGUID());
            }
            break;

        case 2: // Azeroth-Instanzen
            player->ADD_GOSSIP_ITEM(5, "Burg Schattenfang",                    GOSSIP_SENDER_MAIN,  30);
            player->ADD_GOSSIP_ITEM(5, "Das Scharlachrote Kloster",            GOSSIP_SENDER_MAIN,  31);
            player->ADD_GOSSIP_ITEM(5, "Hoehlen der Zeit",                     GOSSIP_SENDER_MAIN,  35);
            player->ADD_GOSSIP_ITEM(5, "Scholomance",                          GOSSIP_SENDER_MAIN,  34);
            player->ADD_GOSSIP_ITEM(5, "Stratholme",                           GOSSIP_SENDER_MAIN,  33);
            player->ADD_GOSSIP_ITEM(5, "Terrasse der Magister",                GOSSIP_SENDER_MAIN,  81);
            player->ADD_GOSSIP_ITEM(5, "Zul'Farrak",                           GOSSIP_SENDER_MAIN,  32);
            player->ADD_GOSSIP_ITEM(0, "[Teleportliste]",                      GOSSIP_SENDER_MAIN, 200);
            player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,                   _Creature->GetGUID());
            break;

        case 3:  // Azeroth-Schlachtzuege
            player->ADD_GOSSIP_ITEM(5, "Ahn'Qhiray-20",                        GOSSIP_SENDER_MAIN,  41);
            player->ADD_GOSSIP_ITEM(5, "Ahn'Qhiray-40",                        GOSSIP_SENDER_MAIN,  42);
            player->ADD_GOSSIP_ITEM(5, "Karazhan",                             GOSSIP_SENDER_MAIN,  40);
            player->ADD_GOSSIP_ITEM(5, "Geschmolzener Kern",                   GOSSIP_SENDER_MAIN,  38);
            player->ADD_GOSSIP_ITEM(5, "Naxxramas",                            GOSSIP_SENDER_MAIN,  43);
            player->ADD_GOSSIP_ITEM(5, "Onyxia's Hort",                        GOSSIP_SENDER_MAIN,  37);
            player->ADD_GOSSIP_ITEM(5, "Schwarzfelsspitze",                    GOSSIP_SENDER_MAIN,  36);
            player->ADD_GOSSIP_ITEM(5, "Sonnenbrunnenplateau",                 GOSSIP_SENDER_MAIN,  82);
            player->ADD_GOSSIP_ITEM(5, "Zul'Aman",                             GOSSIP_SENDER_MAIN,  80);
            player->ADD_GOSSIP_ITEM(5, "Zul'Gurub",                            GOSSIP_SENDER_MAIN,  39);
            player->ADD_GOSSIP_ITEM(0, "[Teleportliste]",                      GOSSIP_SENDER_MAIN, 200);
            player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,                   _Creature->GetGUID());
            break;

        case 4: // Scherbenwelt-Inis
            player->ADD_GOSSIP_ITEM(5, "Arkatraz",                             GOSSIP_SENDER_MAIN,  56);
            player->ADD_GOSSIP_ITEM(5, "Auchenaikrypta",                       GOSSIP_SENDER_MAIN,  51);
            player->ADD_GOSSIP_ITEM(5, "Der Blutkessel",                       GOSSIP_SENDER_MAIN,  45);
            player->ADD_GOSSIP_ITEM(5, "Der Tiefensumpf",                      GOSSIP_SENDER_MAIN,  47);
            player->ADD_GOSSIP_ITEM(5, "Die Botanika",                         GOSSIP_SENDER_MAIN,  55);
            player->ADD_GOSSIP_ITEM(5, "Die Dampfkammer",                      GOSSIP_SENDER_MAIN,  49);
            player->ADD_GOSSIP_ITEM(5, "Die Mechanar",                         GOSSIP_SENDER_MAIN,  54);
            player->ADD_GOSSIP_ITEM(5, "Die Sklavenunterkunfte",               GOSSIP_SENDER_MAIN,  48);
            player->ADD_GOSSIP_ITEM(5, "Die zerschmetterten Hallen",           GOSSIP_SENDER_MAIN,  46);
            player->ADD_GOSSIP_ITEM(5, "Hoellenfeuerbollwerk",                 GOSSIP_SENDER_MAIN,  44);
            player->ADD_GOSSIP_ITEM(5, "Managruft",                            GOSSIP_SENDER_MAIN,  50);
            player->ADD_GOSSIP_ITEM(5, "Schattenlabyrinth",                    GOSSIP_SENDER_MAIN,  53);
            player->ADD_GOSSIP_ITEM(5, "Sethekkhallen",                        GOSSIP_SENDER_MAIN,  52);
            player->ADD_GOSSIP_ITEM(0, "[Teleportliste]",                      GOSSIP_SENDER_MAIN, 200);
            player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,                   _Creature->GetGUID());
            break;

        case 5: // scherbenwelt-Schlachtzuege
            player->ADD_GOSSIP_ITEM(5, "Festung der Stuerme",                  GOSSIP_SENDER_MAIN,  57);
            player->ADD_GOSSIP_ITEM(5, "Gruuls Unterschlupf",                  GOSSIP_SENDER_MAIN,  58);
            player->ADD_GOSSIP_ITEM(5, "Magtheridons Kammer",                  GOSSIP_SENDER_MAIN,  59);
            player->ADD_GOSSIP_ITEM(5, "Schlangenschrein",                     GOSSIP_SENDER_MAIN,  60);
            player->ADD_GOSSIP_ITEM(5, "Schwarzer Tempel",                     GOSSIP_SENDER_MAIN,  61);
            player->ADD_GOSSIP_ITEM(0, "[Teleportliste]",                      GOSSIP_SENDER_MAIN, 200);
            player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,                   _Creature->GetGUID());
            break;

        case 84: // Northend 84
            if (player->GetTeam() == ALLIANCE)
            {
                player->ADD_GOSSIP_ITEM(5, "Eiskrone",                         GOSSIP_SENDER_MAIN,  85);
                player->ADD_GOSSIP_ITEM(5, "Boreanische Tundra",               GOSSIP_SENDER_MAIN,  86);
                player->ADD_GOSSIP_ITEM(5, "Sturmgipfel",                      GOSSIP_SENDER_MAIN,  87);
                player->ADD_GOSSIP_ITEM(5, "Zul'Drak",                         GOSSIP_SENDER_MAIN,  88);
                player->ADD_GOSSIP_ITEM(5, "Drachenoede",                      GOSSIP_SENDER_MAIN,  90);
                player->ADD_GOSSIP_ITEM(5, "Grizzly Huegel",                   GOSSIP_SENDER_MAIN,  91);
                player->ADD_GOSSIP_ITEM(5, "Der heulende Fjord",               GOSSIP_SENDER_MAIN,  92);
                player->ADD_GOSSIP_ITEM(5, "Sholazarbecken",                   GOSSIP_SENDER_MAIN,  93);
                player->ADD_GOSSIP_ITEM(0, "[Teleportliste]",                  GOSSIP_SENDER_MAIN, 200);
                player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,               _Creature->GetGUID());
            }
            else
            {
                player->ADD_GOSSIP_ITEM(5, "Eiskrone",                         GOSSIP_SENDER_MAIN,  85);
                player->ADD_GOSSIP_ITEM(5, "Boreanische Tundra",               GOSSIP_SENDER_MAIN,  95);
                player->ADD_GOSSIP_ITEM(5, "Sturmgipfel",                      GOSSIP_SENDER_MAIN,  87);
                player->ADD_GOSSIP_ITEM(5, "Zul'Drak",                         GOSSIP_SENDER_MAIN,  97);
                player->ADD_GOSSIP_ITEM(5, "Drachenoede",                      GOSSIP_SENDER_MAIN,  90);
                player->ADD_GOSSIP_ITEM(5, "Grizzly Huegel",                   GOSSIP_SENDER_MAIN, 100);
                player->ADD_GOSSIP_ITEM(5, "Der heulende Fjord",               GOSSIP_SENDER_MAIN, 101);
                player->ADD_GOSSIP_ITEM(5, "Sholazarbecken",                   GOSSIP_SENDER_MAIN,  93);
                player->ADD_GOSSIP_ITEM(5, "Argentumtunierplatz",              GOSSIP_SENDER_MAIN, 306);
                player->ADD_GOSSIP_ITEM(0, "[Teleportliste]",                  GOSSIP_SENDER_MAIN, 200);
                player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,               _Creature->GetGUID());
            }
            break;

        case 300: // Ixilium Teleports
            player->ADD_GOSSIP_ITEM(5, "Ixilium Shoping Mile",                 GOSSIP_SENDER_MAIN, 301);
            player->ADD_GOSSIP_ITEM(5, "Sunny Island",                         GOSSIP_SENDER_MAIN, 302);
            player->ADD_GOSSIP_ITEM(5, "Hyrule",                               GOSSIP_SENDER_MAIN, 305);
            player->ADD_GOSSIP_ITEM(0, "[Teleportliste]",                      GOSSIP_SENDER_MAIN, 200);
            player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,                   _Creature->GetGUID());
            break;

        case 200: // Auswahl Fenster
            player->ADD_GOSSIP_ITEM(5, "Hauptstaedte",                         GOSSIP_SENDER_MAIN,   1);
            player->ADD_GOSSIP_ITEM(5, "Azeroth Instanzen",                    GOSSIP_SENDER_MAIN,   2);
            player->ADD_GOSSIP_ITEM(5, "Azeroth Schlachtzuege",                GOSSIP_SENDER_MAIN,   3);
            player->ADD_GOSSIP_ITEM(5, "Scherbenwelt Instanzen",               GOSSIP_SENDER_MAIN,   4);
            player->ADD_GOSSIP_ITEM(5, "Scherbenwelt Raids",                   GOSSIP_SENDER_MAIN,   5);
            player->ADD_GOSSIP_ITEM(5, "Gurubashi Arena",                      GOSSIP_SENDER_MAIN,   6);
            player->ADD_GOSSIP_ITEM(5, "Nordend",                              GOSSIP_SENDER_MAIN,  84);
            player->ADD_GOSSIP_ITEM(0, "Ixilium",                              GOSSIP_SENDER_MAIN, 300);
            player->ADD_GOSSIP_ITEM(0, "Schoenen Tag noch!",                   GOSSIP_SENDER_MAIN,   9);
            player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,                   _Creature->GetGUID());
            break;

        case   9:
            player->CLOSE_GOSSIP_MENU();
            player->GetSession()->SendNotification("Schoenen Tag noch.");
            break;

        case   6: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(0,   -13152.000000f,    342.720000f,     52.395000f, 0.000000f); break;
        case  20: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(0,    -8881.000000f,    575.000000f,     93.000000f, 0.000000f); break;
        case  21: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(1,     9951.890000f,   2280.550000f,   1341.390000f, 0.000000f); break;
        case  22: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(0,    -4981.000000f,   -881.000000f,    501.660000f, 0.000000f); break;
        case  23: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,  -4014.000000f, -11895.790000f,     -2.000000f, 0.000000f); break;
        case  24: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,  -1887.510010f,   5359.379883f,    -12.427300f, 0.000000f); break;
        case  25: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(1,     1629.777344f,  -4373.210449f,     31.246769f, 0.000000f); break;
        case  26: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(1,    -1196.858398f,     30.147331f,    176.949188f, 0.000000f); break;
        case  27: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(0,     1844.765625f,    237.655991f,     62.275150f, 0.000000f); break;
        case  28: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,   9400.486328f,  -7278.376953f,     14.206780f, 0.000000f); break;

        // Azeroth-Inis
        case  30: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(0,     -234.495087f,   1561.946411f,     76.892143f, 0.000000f); break;
        case  31: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(0,     2870.442627f,   -819.985229f,    160.331085f, 0.000000f); break;
        case  32: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(1,    -6797.278809f,  -2903.917969f,      9.953360f, 0.000000f); break;
        case  33: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(0,     3359.111572f,  -3380.8444238f,   144.781860f, 0.000000f); break;
        case  34: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(0,     1267.468628f,  -2556.651367f,     94.127983f, 0.000000f); break;
        case  35: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(1,    -8519.718750f,  -4297.542480f,   -208.441376f, 0.000000f); break;

        // Azeroth-Schlachtzuege
        case  36: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(0,    -7527.129883f,  -1224.997437f,    285.733002f, 0.000000f); break;
        case  37: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(1,    -4744.647000f,  -3752.661133f,     50.427000f, 3.000000f); break;
        case  38: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(409,   1089.600000f,   -470.190000f,   -106.410000f, 0.000000f); break;
        case  39: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(0,   -11919.073242f,  -1202.459374f,     92.298744f, 0.000000f); break;
        case  40: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(532, -11087.300000f,  -1977.470000f,     49.613500f, 0.000000f); break;
        case  41: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(1,    -8394.730469f,   1485.658447f,     21.038563f, 0.000000f); break;
        case  42: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(1,    -8247.316406f,   1970.156860f,    129.071472f, 0.000000f); break;
        case  43: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(533,   3006.060000f,  -3436.720000f,    293.891000f, 0.000000f); break;

        // Scherbenwelt-Inis
        case  44: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,   -360.670990f,   3071.899902f,    -15.097700f, 0.000000f); break;
        case  45: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,   -303.506012f,   3164.820068f,     31.742500f, 0.000000f); break;
        case  46: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,   -311.083527f,   3083.291748f,     -3.745923f, 0.000000f); break;
        case  47: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,    777.088989f,   6763.450195f,    -72.062561f, 0.000000f); break;
        case  48: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,    719.507996f,   6999.339844f,    -73.074303f, 0.000000f); break;
        case  49: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,    816.590027f,   6934.669922f,    -80.544601f, 0.000000f); break;
        case  50: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,  -3079.810059f,   4943.040039f,   -101.046997f, 0.000000f); break;
        case  51: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,  -3361.959961f,   5225.770020f,   -101.047997f, 0.000000f); break;
        case  52: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,  -3362.219971f,   4660.410156f,   -101.049004f, 0.000000f); break;
        case  53: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,  -3645.060059f,   4943.620117f,   -101.047997f, 0.000000f); break;
        case  54: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,   2862.409912f,   1546.089966f,    252.158691f, 0.000000f); break;
        case  55: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,   3413.649902f,   1483.319946f,    182.837997f, 0.000000f); break;
        case  56: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,   3311.598145f,   1332.745117f,    505.557251f, 0.000000f); break;

        // Scherbenwelt-Schlachtzuege
        case  57: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,   3087.310059f,   1373.790039f,    184.643005f, 0.000000f); break;
        case  58: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,   3549.424072f,   5179.854004f,     -4.430779f, 0.000000f); break;
        case  59: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,   -313.678986f,   3088.350098f,   -116.501999f, 0.000000f); break;
        case  60: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,    830.542908f,   6865.445801f,    -63.785503f, 0.000000f); break;
        case  61: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,  -3609.739990f,    328.252014f,     37.307701f, 0.000000f); break;
        case  80: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,   6853.331055f,  -7956.031738f,    170.074585f, 4.670000f); break;
        case  81: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,   6853.331055f,  -7956.031738f,    170.074585f, 4.670000f); break;
        case  82: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(530,  12892.640625f,  -7314.847168f,     65.570222f, 4.355247f); break;

        // NORTHEND ALLIAZ
        case  88: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(571,   5451.406250f,  -2628.971436f,    306.253418f, 1.577150f); break; // ZUL'DRAK
        case  85: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(571,   6224.557969f,     -2.641857f,    410.164795f, 5.416985f); break; // EISKRONE
        case  86: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(571,   2243.259277f,   5264.776367f,     11.709665f, 5.957395f); break; // BOREANISCHE TUNDRA
        case  87: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(571,   6121.390625f,  -1061.891724f,    402.559570f, 1.590555f); break; // STURMGIPFEL
        case  89: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(571,   5804.182129f,    624.308594f,    647.786865f, 1.640000f); break; // DALARAN
        case  90: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(571,   3546.780029f,    273.084015f,     45.792198f, 1.815140f); break; // DRACHENOEDE
        case  91: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(571,   3065.147705f,  -2007.577515f,     79.796875f, 5.522248f); break; // GRIZZLY HUEGEL
        case  92: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(571,    616.571411f,  -4987.544434f,      3.985763f, 5.291873f); break; // DER HEULENDE FJORD
        case  93: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(571,   5596.030762f,   5826.276367f,    -67.677391f, 3.567269f); break; // SHOLAZARBECKEN
        // ALLIANZ NORTHEND IST HIER ZUENDE

        // Horde Nordend fängt hier an
        case  95: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(571,   2829.370117f,   6166.169922f,    208.820007f, 0.959931f); break; // Boreanische Tundra
        case  97: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(571,   3065.147705f,  -2007.577515f,     79.796875f, 5.522248f); break; // GRIZZLY HUEGEL
        case 100: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(571,   3852.056152f,  -4525.665039f,    209.308899f, 0.814193f); break; // Grizzly
        case 101: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(571,   2670.239990f,  -4388.169922f,    284.031006f, 2.321290f); break; // DER HEULENDE FJORD
        case 306: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(571,   8373.180000f,    799.496000f,    547.879000f, 0.058529f); break; // Argentumtunier


        // Ixilium Teleports
        case 301: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(0,    -7541.650000f,   1087.890000f,    131.408000f, 4.733740f); break; // Ixilium Shopping Mile
        case 302: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(1,   -11848.900000f,  -4757.820000f,      6.212170f, 0.218874f); break; // Sunny Island
        case 303: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(1,   -11563.700000f,  -4905.940000f,    157.423000f, 2.409380f); break; // Allianz Lounge
        case 304: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(1,   -11628.600000f,  -4574.970000f,    247.725000f, 4.365000f); break; // Horde Lounge
        case 305: player->CLOSE_GOSSIP_MENU(); player->TeleportTo(0,    -9981.460000f,   1442.570000f,    139.554000f, 1.565910f); break; // Hyrule

    }
}

bool GossipSelect_npc_playermaster(Player *player, Creature *_Creature, uint32 sender, uint32 action)
{
    // Der npc_playermaster selbst
    if (sender == GOSSIP_SENDER_MAIN)
        SendDefaultMenu_npc_playermaster(player, _Creature, action);

    return true;
}

void AddSC_npc_playermaster()
{
    Script *newscript;

    newscript                   = new Script;
    newscript->Name             = "npc_playermaster";
    newscript->pGossipHello     = &GossipHello_npc_playermaster;
    newscript->pGossipSelect    = &GossipSelect_npc_playermaster;
    newscript->pItemHello       = NULL;
    newscript->pGOHello         = NULL;
    newscript->pAreaTrigger     = NULL;
    newscript->pItemQuestAccept = NULL;
    newscript->pGOQuestAccept   = NULL;
    newscript->pGOChooseReward  = NULL;
    newscript->RegisterSelf();
}
