/*
	File: fn_arrestAction.sqf
	
	Description:
	Arrests the targeted person.
*/
private["_shop","_action"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_action = _shop addAction["Tankstelle ausrauben",life_fnc_robShops];