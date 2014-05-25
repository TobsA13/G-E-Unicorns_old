/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side"];
private["_markers"];
_markers = [];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;
//hint str(_side);
//Spawn Marker, Spawn Name, PathToImage

if(side player == west) then
	{
		_markers = [
            ["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","HW Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
if(side player == civilian) then
	{
		_markers = [
			["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
      if(license_civ_rebel) then {
                    _markers set [count _markers, ["civ_spawn_6","Rebellen HQ 1","textures\server\head.paa"]];
                    _markers set [count _markers, ["civ_spawn_7","Rebellen 2","textures\server\head.paa"]];
                    _markers set [count _markers, ["civ_spawn_8","Rebellen 3","textures\server\head.paa"]];       
     };
        if(license_civ_home) then {		
		
			_houses = [
				"Land_i_House_Small_01_V1_F",
				"Land_i_House_Small_01_V2_F",
				"Land_i_House_Small_01_V3_F",
				"Land_i_House_Small_02_V1_F",
				"Land_i_House_Small_02_V2_F",
				"Land_i_House_Small_02_V3_F",
				"Land_i_House_Small_03_V1_F",
				"Land_i_House_Big_01_V1_F",
				"Land_i_House_Big_01_V2_F",
				"Land_i_House_Big_01_V3_F",
				"Land_i_House_Big_02_V1_F",
				"Land_i_House_Big_02_V2_F",
				"Land_i_House_Big_02_V3_F"
			];
			
			_i = 1;
			{
				_house = nearestObject [(_x select 0), "House_F"];
				if((typeOf _house) in _houses) then {
					
					_mkName  = format["civ_spawn_home_%1", _i];
					
					if (isNil (_mkName)) then {
						_mk = createMarkerLocal [_mkName, (_x select 0)];
						_mk setMarkerAlphaLocal 0;
					};
					
					_markers set [count _markers, [_mkName, format ["Home %1", _i], "\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
					_i = _i + 1;
				};
			}forEach life_houses;		
		}; 
        
	};
	
if(str(player) in ["medic_1","medic_2","medic_3","medic_4"]) then {
	_markers = 	[
			["medic_spawn_1","Kavala Krankenhaus","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
};

if(str(player) in ["adac_1","adac_2"]) then {
	_markers = 	[
			["adac_spawn_1","ADAC HQ","\a3\ui_f\data\map\Markers\Military\flag_ca.paa"]
		];
};

_markers;