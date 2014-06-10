/*
	File: fn_arrestAction.sqf
	
	Description:
	Arrests the targeted person.
*/
private["_shop","_action"];
_kart = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_action = _kart addAction ["Einsteigen (No Addon)","player moveInDriver (_this select 0)",[],6,true,true,"","locked cursorTarget == 0 && cursorTarget distance player < 3"];