#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};
if(str(player) in ["medic_1","medic_2","medic_3","medic_4"]) then {
if(!((__GETC__(life_medicLevel)) == 1 ||(__GETC__(life_medicLevel)) == 3)) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
    };

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_I_CombatUniform"};
player setObjectTextureGlobal [0,"textures\skins\saniuniform.jpg"];
waitUntil {uniform player != "U_I_CombatUniform"};
};
};
};

if(str(player) in ["adac_1","adac_2"]) then {

if(!((__GETC__(life_medicLevel)) == 2 ||(__GETC__(life_medicLevel)) == 3)) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
    };
[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_I_CombatUniform"};
player setObjectTextureGlobal [0,"textures\skins\ADAC.jpg"];
waitUntil {uniform player != "U_I_CombatUniform"};
};
};
};



diag_log "::Life Client:: Creating AGB Dialog";
// AGB
rulesok = false;
if(!createDialog "AGB") exitWith {};
waitUntil{!isNull (findDisplay 32154)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 32154)}; //Wait for the spawn selection to be done.
if(!rulesok)then {		
        player enableSimulation false;
        ["agb",false,true] call BIS_fnc_endMission;
        sleep 35;
};
rulesok = nil;

[] call life_fnc_medicLoadout;
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.