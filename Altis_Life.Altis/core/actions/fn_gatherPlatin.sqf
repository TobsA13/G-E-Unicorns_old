/*
File: fn_gatherMeth.sqf

Description:
Archäologie
*/
private["_sum"];
_sum = ["platinu",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_in_use = true;
titleText["Baue ab...","PLAIN"];
titleFadeOut 5;
sleep 5;
if(([true,"platinu",1] call life_fnc_handleInv)) then
{
titleText["Abgebaut.","PLAIN"];
};
};

life_action_in_use = false;