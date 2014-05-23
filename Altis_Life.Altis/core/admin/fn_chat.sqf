#include <macro.h>
/*
	File: fn_adminMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the admin menu, sorry nothing special in here. Take a look for yourself.
*/
private["_msg"];
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};
	_msg = ctrlText 3053;
	if(_msg == "") exitWith {hint "You must enter a message to send!";};
	[[[0,_msg,"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	hint format["EVENT MSG: _msg",_msg];