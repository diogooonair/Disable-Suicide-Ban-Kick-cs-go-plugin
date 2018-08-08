#include <sourcemod>
#include <sdktools>
#include <cstrike>
#include <sdkhooks>

#pragma semicolon 1

ConVar sv_autokick = null;
ConVar mp_disable_autokick = null;

public Plugin myinfo = 
{
	name = "Disable suicide ban",
	author = "Diogoonair",
	description = "Disable suicide ban.",
	version = "1.0",
};

public void OnPluginStart()
{	
	HookEvent("round_start", OnRoundStart);
}

public Action OnRoundStart(Event event, const char[] name, bool dontBroadcast)
{
    SetConVarInt(FindConVar("mp_disable_autokick"), 1);
	SetConVarInt(FindConVar("sv_autokick"), 0);
}