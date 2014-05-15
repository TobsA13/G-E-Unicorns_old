#include <macro.h>
/*
	File: fn_cellphone.sqf
	Author: Alan
	
	Description:
	Opens the cellphone menu?
*/
private["_display","_units","_type"];

disableSerialization;
waitUntil {!isNull findDisplay 3000};
_display = findDisplay 3000;
_units = _display displayCtrl 3004;

ctrlSetText [3003, ""];
lbClear _units;

if((__GETC__(life_adminlevel) < 1)) then
{
	ctrlShow[3020,false];
	ctrlShow[3021,false];
};
{
	if(alive _x && _x != player) then
	{   
        if(str(_x) in ["medic_1","medic_2","medic_3","medic_4"]) then {_type = "Medic";}
            else{
                if(str(_x) in ["adac_1","adac_2"]) then {_type = "ADAC";}
                    else{
                        switch (side _x) do
                        {
                            case west: {_type = "Cop"};
                            case civilian: {_type = "Civ"};
                        };
                        _units lbAdd format["%1 (%2)",name _x,_type];
                        _units lbSetData [(lbSize _units)-1,str(_x)];
                    };
            };  
	};
} foreach playableUnits;

lbSetCurSel [3004,0];