/*
	File: fn_getMoney.sqf
	Author: TobsA13
	
	Description:
	
*/
private["_vehicle","_vehicleInfo","_value"];
_money = _this select 0;

hint format ["Du hast %1€ bekommen da jemand seinen Strafzettel bezahlt hat!",];



life_fnc_ticketPay;