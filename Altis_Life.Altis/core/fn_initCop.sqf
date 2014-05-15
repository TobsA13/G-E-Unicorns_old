#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};


if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
	sleep 35;
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

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

//Nur 4 Rounds im Tazer
[] spawn
{
    sleep 3;
    _curWepn = currentWeapon player;
    _ammocout = player ammo _curWepn;
      if(_curWepn in ["hgun_P07_snds_F","arifle_SDAR_F"] && _ammocout > 4) then {
        player setAmmo [_curWepn, 4];
      };
    player addEventHandler ["take", {
    _curWepn = currentWeapon player;
      if(_curWepn in ["hgun_P07_snds_F","arifle_SDAR_F"]) then {
        player setAmmo [_curWepn, 4];
      };
    }];
};


if(str(player) in ["cop_1","cop_2","cop_3","cop_4"]) then {


[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_Rangemaster"};
player setObjectTextureGlobal [0,"textures\skins\SEK_fertig.jpg"];
waitUntil {uniform player != "U_Rangemaster"};
};
};
}else{[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_Rangemaster"};
player setObjectTextureGlobal [0,"textures\skins\pol.jpg"];
waitUntil {uniform player != "U_Rangemaster"};
};
};};