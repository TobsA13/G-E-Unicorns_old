/*
	File: fn_virt_menu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initialize the virtual shop menu.
*/
private["_shop"];
_shop = _this select 3;
if(isNil {_shop}) exitWith {};
life_shop_type = _shop;
life_shop_npc = _this select 0;
if(_shop == "cop" && playerSide != west) exitWith {hint "Du bist kein Polizist."};
if((!(str(player) in ["medic_1","medic_2","medic_3","medic_4"]))&&_shop == "medic") exitWith {hint "Du bist kein Arzt."};
if((!(str(player) in ["adac_1","adac_2"]))&&_shop == "adac") exitWith {hint "Du bist keiner vom ADAC."};
createDialog "shops_menu";

[] call life_fnc_virt_update;