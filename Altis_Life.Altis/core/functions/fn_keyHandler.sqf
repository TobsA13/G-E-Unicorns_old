#include <macro.h>
/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;

_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};
if(player getVariable ["restrained", false]) exitWith
{
	hintSilent "Du bist gefesselt!";

	_handled = false;
	_handled;
};

if(life_hands_up) exitWith
{
	hintSilent "Du hast deine Hände oben!";

	_handled = false;
	_handled;
};
_dist = player distance (getMarkerPos "jail_marker");
switch (_code) do
{
	//Space key for Jumping
	case 57:
	{
		if(animationState player != "AovrPercMrunSrasWrflDf" && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {_dist > 30}) then {
			[[player],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP;
			_handled = true;
		};
	};
    
    case 15:
    {
        if((!life_action_inUse) && (vehicle player == player) ) then
        {
            {
                _str = [_x] call life_fnc_varToStr;
                _val = missionNameSpace getVariable _x;
                if(_val > 0 ) then
                {
                    if( _str == "Spitzhacke" || _str == "pickaxe" ) then
                    {
                        [] spawn life_fnc_pickAxeUse;
                    };
                };
            } foreach life_inv_items;
        };
    };
	
	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;}};
		};
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	//Q Key
    case 15:
    {    
        if((!life_action_inUse) && (vehicle player == player) ) then
        {
            {
                _str = [_x] call life_fnc_varToStr;
                _val = missionNameSpace getVariable _x;
                if(_val > 0 ) then
                {
                    if( _str == "Spitzhacke" || _str == "pickaxe" ) then
                    {
                        [] spawn life_fnc_pickAxeUse;
                    };
                };
            } foreach life_inv_items;
        }
    };
	//Restraining (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
		};
	};
	
	//Knock out, this is experimental and yeah...
	case 34:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
			};
		};
	};

	//T Key (Trunk)
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] call life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship") && player distance cursorTarget < 7 && vehicle player == player && alive cursorTarget) then
				{
					if(cursorTarget in life_vehicles) then
					{
						[cursorTarget] call life_fnc_openInventory;
					};
				};
			};
		};
	};
	//L Key?
	case 38: 
	{
		//If cop run checks for turning lights on.
		if(_shift) then {
            if(!(str(player) in ["adac_1","adac_2"])) then {
			if(vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F"]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					[vehicle player] call life_fnc_sirenLights;
					_handled = true;
				};
			};
		}else{
        
        			if(vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_F"]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					[vehicle player] call life_fnc_ADACsirenLights;
					_handled = true;
				};
			};
     };
	};	
		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	//Y Player Menu
	case 21:
	{
		if(!_alt && !_ctrlKey && !dialog) then
		{
			[] call life_fnc_p_openMenu;
		};
	};
    // Shift + H, Holster
	case 35:
	{
		switch(true) do
		{
			case (_shift && !_alt && !_ctrlKey):
			{
				if(!life_action_inUse) then
			    {
			    	if ((time - life_holster_time) > 4) then {
				life_holster_time = time;
				[] spawn life_fnc_holsterHandgun;
			};
			    };
			};
			case (_shift && !_alt && _ctrlKey):
			{
				//Ctrl + Shift + H: hands up			 
			    	if(!life_action_inUse) then
			    	{
			    		[0,0,0,true] spawn life_fnc_putHandsUp;
			    	};	
			};
			case (!_shift && !_alt && !_ctrlKey):
			{
				[] spawn life_fnc_showQuickHelp;
			};
		};		
	};
	//V Key
	case 47:
	{
		if(playerSide != west && (player getVariable "restrained") OR (player getVariable "transporting")) then {_handled = true;};
	};
    //Pause + Shift Admintool
	case 197:
	{   if(!(__GETC__(life_adminlevel) == 0)) then{
            if(_shift) then {[] execVM "admintools\AdminToolsMain.sqf";};
        };
	};
    //Rollen + Shift GCAM
	case 70:
	{
        hint "1.";
        if(!(__GETC__(life_adminlevel) == 0)) then{
        hint "2.";
            if(_shift) then {[player] execVM "spectator\specta.sqf";};
        };
	};
	//F Key
	case 33:
	{
		if((playerSide == west || str(player) in ["medic_1","medic_2","medic_3","medic_4"]) && vehicle player != player && !life_siren_active && ((driver vehicle player) == player)) then
		{
			[] spawn
			{
				life_siren_active = true;
				sleep 4.7;
				life_siren_active = false;
			};
			_veh = vehicle player;
			if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
			if((_veh getVariable "siren")) then
			{
				titleText ["Sirens Off","PLAIN"];
				_veh setVariable["siren",false,true];
			}
				else
			{
				titleText ["Sirens On","PLAIN"];
				_veh setVariable["siren",true,true];
				[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
			};
		};
	};
	//U Key
	case 22:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player == player) then
			{
				_veh = cursorTarget;
			}
				else
			{
				_veh = vehicle player;
			};
			
			_locked = locked _veh;
			
			if(_veh in life_vehicles && player distance _veh < 8) then
			{
				if(_locked == 2) then
				{
					if(local _veh) then
					{
						_veh lock 0;
					}
						else
					{
						[[_veh,0], "life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
					};
					systemChat "You have unlocked your vehicle.";
                    [player,"car_lock"] call life_fnc_globalSound;
				}
					else
				{
					if(local _veh) then
					{
						_veh lock 2;
					}
						else
					{
						[[_veh,2], "life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
					};
					systemChat "You have locked your vehicle.";
                    [player,"unlock"] call life_fnc_globalSound;
				};
			};
		};
	};
	// O, police gate opener
        case 24:
	{
		if (!_shift && !_alt && !_ctrlKey && (playerSide == west)) then {
			[] call life_fnc_copOpener;
		};
	};
};

_handled;