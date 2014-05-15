/*
	@Version: 3.1
	@Author: [BWG] Joe
	@Edited: 01.01.2014
*/

// No where really to go with flip vehicle back onto four wheel. Credit left in where credit is due for Joe as above.

private ["_vehicle","_vehicles"];

_vehicle = vehicle player;
if (player != _vehicle) then {
	if (_vehicle in life_vehicles) then {
		if (speed _vehicle < 5 && getPos _vehicle select 2 < 5) then {
			_dir = getDir _vehicle;
			_vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, 1];
			_vehicle setDir _dir;
			_vehicle setVelocity [0,0,0];
			sleep 2;
			diag_log "Vehicle Flip";
		};
	} else {
		hint "You can only flip vehicles you own.";
	};
} else {
	_vehicles = player nearEntities [["Car","Motorcycle","Ship"], 10];
	if (count _vehicles > 0) then {
		_vehicle = _vehicles select 0;
		if (_vehicle in life_vehicles) then {
			if (speed _vehicle < 5 && getPos _vehicle select 2 < 5) then {
				_dir = getDir _vehicle;
				_vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, 1];
				_vehicle setDir _dir;
				_vehicle setVelocity [0,0,0];
				sleep 2;
				diag_log "Vehicle Flip";
			};
		} else {
			hint "You can only flip vehicles you own.";
		};
	};
};
