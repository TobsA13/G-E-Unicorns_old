/*
	File: fn_straßenkegel.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: OLLI aka Hauklotz
	
	Description:
	Creates a wall and preps it.
*/
private["_position","_straßenkegel"];
_straßenkegel = "RoadCone_L_F" createVehicle [0,0,0];
_straßenkegel attachTo[player,[0,5.5,0.2]];
_straßenkegel setDir 90;
_straßenkegel setVariable["item","straßenkegelDeployed",true];

life_action_straßenkegelDeploy = player addAction["Straßenkegel aufstellen",{if(!isNull life_straßenkegel) then {detach life_straßenkegel; life_straßenkegel = ObjNull;}; player removeAction life_action_straßenkegelDeploy; life_action_straßenkegelDeploy = nil;},"",999,false,false,"",'!isNull life_straßenkegel'];
life_straßenkegel = _straßenkegel;
waitUntil {isNull life_straßenkegel};
if(!isNil "life_action_straßenkegelDeploy") then {player removeAction life_action_straßenkegelDeploy;};
if(isNull _straßenkegel) exitWith {life_straßenkegel = ObjNull;};
_straßenkegel setPos [(getPos _straßenkegel select 0),(getPos _straßenkegel select 1),0];
_straßenkegel allowDamage false;
life_fnc_packupstraßenkegel = player addAction["Straßenkegel aufheben",life_fnc_packupstraßenkegel,"",0,false,false,"",' _straßenkegel = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0; !isNil "_straßenkegel" && !isNil {(_straßenkegel getVariable "item")}'];