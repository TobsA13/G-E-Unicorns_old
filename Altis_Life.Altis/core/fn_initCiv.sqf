/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
private["_spawnPos"];

civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_House_Big_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_03_V1_F"],250];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_House_Big_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_03_V1_F"],250];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_House_Big_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_03_V1_F"],250];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_House_Big_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_03_V1_F"],250];

waitUntil {!(isNull (findDisplay 46))};

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

if(life_is_arrested) then
{
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
}
	else
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};
player addRating 9999999;

[] call life_fnc_zoneCreator;

[] call life_fnc_initHouses;

[] spawn  {
    sleep 15;
    while {true} do {
    _units = units (group player);
for "_i" from 0 to (count _units)-1 do{
    _varname = name (_units select _i);
    createMarkerLocal [_varname, [0,0]];
    _varname setMarkerShape "ICON";
    _varname setMarkerColorLocal "ColorYellow";
    _varname setMarkerSizeLocal [0.5,0.5];
    _varname setMarkerTypeLocal "hd_arrow";
    _varname setMarkerTextLocal name (_units select _i);
    _varname setMarkerDirLocal getDir (_units select _i);
    _varname setMarkerPosLocal getPos (_units select _i);

};
    sleep 5;
for "_i" from 0 to (count _units)-1 do{
    _varname = name (_units select _i);
    deleteMarkerLocal _varname;

};
    
};  
};