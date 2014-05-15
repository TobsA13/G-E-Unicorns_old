/*
	File: fn_ticketPay.sqf
	Author: Bryan "Tonic" Boardwine
	Modification: chrisyou Twitter: @chrisyouhd
	Description:
	Pays the ticket.
*/
if(isnil {life_ticket_val} OR isNil {life_ticket_cop}) exitWith {};
if(life_cash < life_ticket_val) exitWith
{
	if(life_atmcash < life_ticket_val) exitWith 
	{
		hint "Du hast nicht genug Geld bei dir oder auf deinem Bankkonto, um den Strafzettel zu begleichen.";
		[[1,format["%1 konnte den Strafzettel nicht begleichen, da er nicht über genügend Geld verfügt.",name player]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
		closeDialog 0;
	};
	hint format["Du hast den Strafzettel von $%1 beglichen.",[life_ticket_val] call life_fnc_numberText];
	life_atmcash = life_atmcash - life_ticket_val;
	life_ticket_paid = true;
	[[0,format["%1 hat den Strafzettel über $%2 beglichen.",name player,[life_ticket_val] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	closeDialog 0;
};

life_cash = life_cash - life_ticket_val;
life_ticket_paid = true;

[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
[[0,format["%1 hat den Strafzettel über $%2 beglichen.",name player,[life_ticket_val] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
closeDialog 0;
[[1,format["%1 paid the ticket.",name player]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
[[[life_ticket_val],{life_atmcash = life_atmcash + (_this select 0);}],"BIS_fnc_call",life_ticket_cop,false] spawn life_fnc_MP;