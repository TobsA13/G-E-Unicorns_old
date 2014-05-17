/*
    File: fn_packupstraßenkegel.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a deployed Straßenkegel.
*/
private["_straßenkegel"];
_straßenkegel = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0;
if(isNil "_straßenkegel") exitWith {};

if(([true,"straßenkegel",1] call life_fnc_handleInv)) then
{
    titleText["Du hast den Straßenkegel aufgehoben.","PLAIN"];
    player removeAction life_action_straßenkegelPickup;
    life_action_straßenkegelPickup = nil;
    deleteVehicle _straßenkegel;
};
