/*
	File: fn_escInterupt.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Monitors when the ESC menu is pulled up and blocks off
	certain controls when conditions meet.
*/
private["_abortButton","_respawnButton","_fieldManual","_escSync","_canUseControls"];
disableSerialization;


_canUseControls = {
	if(playerSide == west) exitWith {true};
	if((player getVariable["restrained",FALSE]) OR (player getVariable["Escorting",FALSE]) OR (player getVariable["transporting",FALSE]) OR (life_is_arrested) OR (life_istazed)) then {false} else {true};
};
	
while {true} do
{
	waitUntil{!isNull (findDisplay 49)};
	_abortButton = (findDisplay 49) displayCtrl 104;
	_respawnButton = (findDisplay 49) displayCtrl 1010;
	_fieldManual = (findDisplay 49) displayCtrl 122;
	
	//Block off our buttons first.
	_abortButton ctrlEnable false;
	_respawnButton ctrlEnable false;
	_fieldManual ctrlEnable false; //Never re-enable, blocks an old script executor.
	
	_usebleCtrl = call _canUseControls;
	
	if(_usebleCtrl) then {
		[] spawn {
            private["_display","_btnAbort","_timeOut","_timeMax"];
            disableSerialization;
            _display = findDisplay 49;
        
            _btnAbort = _display displayCtrl 104;
            _btnAbort ctrlEnable false;
            _timeOut = 0;
            _timeMax = 20;
            
            while {!isNull _display} do 
            {
            switch true do 
            {
            case (_timeOut < _timeMax) :
            {
            _btnAbort ctrlEnable false;
            _btnAbort ctrlSetText format ["Abort (%1)",(_timeMax - _timeOut)];
            _timeOut = _timeOut + 1;
            };
            
            default 
            {
            _btnAbort ctrlEnable true;
            _btnAbort ctrlSetText "Exit";
            };
            };
            sleep 1;
            };
        };
	};
	waitUntil{isNull (findDisplay 49)};
};