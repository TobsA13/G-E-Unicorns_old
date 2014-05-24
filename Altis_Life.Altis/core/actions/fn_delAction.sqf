/*
	File: fn_arrestAction.sqf
	
	Description:
	Arrests the targeted person.
*/
private["_shop","_action"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_action = [_this,1] call BIS_fnc_param;//Action name
_shop removeAction _action;