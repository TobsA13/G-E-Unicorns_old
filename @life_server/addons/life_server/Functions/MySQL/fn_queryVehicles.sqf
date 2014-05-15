/*
	File: fn_queryVehicles.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Queries all vehicles from the database with a specific type, pid and side and returns them.
*/
private["_pid","_side","_type","_query","_result","_ret","_unit"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_unit = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;

if(_type == "" OR isNull _unit) exitWith {[]};
_pid = getPlayerUID _unit;
_side = side _unit;
if(_side == independent){
    if(str(_unit) in ["medic_1","medic_2","medic_3","medic_4"]) then {
    _side = "med";
    };

    if(str(_unit) in ["adac_1","adac_2"]) then {
    _side = "adac";
    };

}else{
    _side = switch(_side) do
    {
        case west:{"cop"};
        case civilian: {"civ"};
        default {"Error"};
    };
};
_query = format["SELECT * FROM vehicles WHERE pid='%1' AND alive='1' AND active='0' AND side='%2' AND type='%3'",_pid,_side,_type];
_result = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['%2', '%1']", _query,(call LIFE_SCHEMA_NAME)];
_result = call compile format["%1", _result];
if(isNil {((_result select 0) select 0)}) then
{
	_ret = [];
}
	else
{
	_ret = (_result select 0);
};

_ret;
