/*
	File: fn_onRespawn.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Execute various actions when the _unit respawns.
*/
private["_unit","_corpse","_handle","_spawn"];
_unit = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_corpse = [_this,1,objNull,[objNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {};
if(!isNull _corpse) then{deleteVehicle _corpse;};

hideBody _corpse;
deleteVehicle _corpse;
//_handle = [] spawn life_fnc_setupActions;
//waitUntil {scriptDone _handle};

switch(playerSide) do
{
	case west: 
	{
		[] spawn life_fnc_loadGear;
        
        life_actions = life_actions + [player addAction["<t color='#FFFF00'>Search House</t>",life_fnc_houseOwnerSearch,cursorTarget,5,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 10 && speed cursorTarget < 2 && (cursorTarget isKindOf "Land_i_House_Small_01_V1_F" || cursorTarget isKindOf "Land_i_House_Small_01_V2_F" || cursorTarget isKindOf "Land_i_House_Small_01_V3_F" || cursorTarget isKindOf "Land_i_House_Small_02_V1_F" || cursorTarget isKindOf "Land_i_House_Small_02_V2_F" || cursorTarget isKindOf "Land_i_House_Small_02_V3_F" || cursorTarget isKindOf "Land_i_House_Small_03_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V2_F" || cursorTarget isKindOf "Land_i_House_Big_01_V3_F" || cursorTarget isKindOf "Land_i_House_Big_02_V1_F" || cursorTarget isKindOf "Land_i_House_Big_02_V2_F" || cursorTarget isKindOf "Land_i_House_Big_02_V3_F") && !life_action_inUse']];
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Raid House</t>",life_fnc_raidHouse,cursorTarget,5,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 10 && speed cursorTarget < 2 && (count (cursorTarget getVariable ["life_homeOwners", []]) > 0) && (cursorTarget isKindOf "Land_i_House_Small_01_V1_F" || cursorTarget isKindOf "Land_i_House_Small_01_V2_F" || cursorTarget isKindOf "Land_i_House_Small_01_V3_F" || cursorTarget isKindOf "Land_i_House_Small_02_V1_F" || cursorTarget isKindOf "Land_i_House_Small_02_V2_F" || cursorTarget isKindOf "Land_i_House_Small_02_V3_F" || cursorTarget isKindOf "Land_i_House_Small_03_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V2_F" || cursorTarget isKindOf "Land_i_House_Big_01_V3_F" || cursorTarget isKindOf "Land_i_House_Big_02_V1_F" || cursorTarget isKindOf "Land_i_House_Big_02_V2_F" || cursorTarget isKindOf "Land_i_House_Big_02_V3_F") && !life_action_inUse']];     
        life_actions = life_actions + [player addAction["<t color='#FFFF00'>Search House Inventory</t>",life_fnc_houseInvSearch,cursorTarget,5,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 5 && speed cursorTarget < 2 && (cursorTarget getVariable ["life_locked", 1] == 0) && (cursorTarget isKindOf "Land_i_House_Small_01_V1_F" || cursorTarget isKindOf "Land_i_House_Small_01_V2_F" || cursorTarget isKindOf "Land_i_House_Small_01_V3_F" || cursorTarget isKindOf "Land_i_House_Small_02_V1_F" || cursorTarget isKindOf "Land_i_House_Small_02_V2_F" || cursorTarget isKindOf "Land_i_House_Small_02_V3_F" || cursorTarget isKindOf "Land_i_House_Small_03_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V2_F" || cursorTarget isKindOf "Land_i_House_Big_01_V3_F" || cursorTarget isKindOf "Land_i_House_Big_02_V1_F" || cursorTarget isKindOf "Land_i_House_Big_02_V2_F" || cursorTarget isKindOf "Land_i_House_Big_02_V3_F") && !life_action_inUse']];
	};
	
	case civilian:
	{
		_unit setVariable["restrained",false,true];
		_unit setVariable["Escorting",false,true];
		_unit setVariable["transporting",false,true];
		if(headGear player != "") then {removeHeadgear player;};
		if(goggles player != "") then {removeGoggles player;};
        
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Toggle House Locks</t>",life_fnc_lockHouse,cursorTarget,10,false,false,"",
        '!isNull cursorTarget && (player distance cursorTarget) < 20 && cursorTarget isKindOf "House" && license_civ_home && (getPlayerUID player) in (cursorTarget getVariable["life_homeOwners", []])']];
        life_actions = life_actions + [player addAction["<t color='#FFFF00'>Toggle Storage Locks</t>",life_fnc_lockStorage,cursorTarget,10,false,false,"",
        '!isNull cursorTarget && (player distance cursorTarget) < 20 && cursorTarget isKindOf "House" && license_civ_home && (getPlayerUID player) in (cursorTarget getVariable["life_homeOwners", []])']];
        life_actions = life_actions + [player addAction["<t color='#00FF00'>House Menu</t>",life_fnc_houseMenu,cursorTarget,10,false,false,"",
        '!isNull cursorTarget && (player distance cursorTarget) < 20 && cursorTarget isKindOf "House" && ([typeOf cursorTarget] call life_fnc_housePrice) > -1 && !(([cursorTarget] call life_fnc_getBuildID) in life_public_houses)']];
	};
};

if(life_is_arrested) then
{
	hint "You tried to suicide from jail, you will be jailed again with a longer time.";
	life_is_arrested = false;
	[_unit,true] spawn life_fnc_jail;
}
	else
{
	titleText["","BLACK FADED"];
	titleFadeOut 9999999999;
	[] call life_fnc_spawnMenu;
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};

_unit addRating 100000;
life_holstered = false;
[[_unit,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;
[] call life_fnc_hudUpdate;
cutText ["","BLACK IN"];

[] call life_fnc_civFetchGear;
[1,true] call life_fnc_sessionHandle;