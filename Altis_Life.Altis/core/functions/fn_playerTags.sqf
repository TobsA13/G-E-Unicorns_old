/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
onEachFrame
{
    private["_vis","_pos","_near","_name","_icon","_width","_height"];
    _near = getPos player nearEntities ["Man",20];
    {
        if(player distance _x < 20 && isPlayer _x && _x != player) then
        {
            _vis = lineIntersects [eyePos player, eyePos _x,player, _x];
            if(!_vis) then
            {
                _pos = visiblePosition _x;
                _pos set[2,(getPosATL _x select 2) + 2.2];
				_width = 0.7;
				_height = 0.7;
				switch (_x getVariable["coplevel", 0]) do
				{
					case (1) : {_name = format["Polizeianwärter %1", name _x];_icon = MISSION_ROOT + "images\icon_recruit.paa";};
					case (2) : {_name = format["Polizeihauptmeister %1", name _x];_icon = MISSION_ROOT + "images\icon_officer.paa";};
                    case (3) : {_name = format["Kommissaranwärter %1", name _x];_icon = MISSION_ROOT + "images\icon_detective.paa";};					
					case (4) : {_name = format["Kommissar %1", name _x];_icon = MISSION_ROOT + "images\icon_sergeant.paa";};
					case (5) : {_name = format["Oberkommissar %1", name _x];_icon = MISSION_ROOT + "images\icon_lieutenant.paa";};
					case (6) : {_name = format["Hauptkommissar %1", name _x];_icon = MISSION_ROOT + "images\icon_captain.paa";};
					case (7) : {_name = format["Ltd. Polizeidirektor %1", name _x];_icon = MISSION_ROOT + "images\icon_deputychief.paa";};
					default {_name = name _x; _icon = ""; _width = 0; _height = 0;}
				};
                if (_x getVariable["coplevel", 0] > 0) then
				{
					_icon = [((_x getVariable["coplevel", 0]) - 1),"texture"] call BIS_fnc_rankParams;
				};
                drawIcon3D [_icon,[1,1,1,1],_pos,_width,_height,0,_name,0,0.04];
            };
        };
    } foreach _near;
}