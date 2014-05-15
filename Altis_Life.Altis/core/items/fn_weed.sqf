/*
    File: fn_weed.sqf
    Author: Kuchiha

    Description:
    Marijuana effects.
*/

//Close inventory
closeDialog 0;

//Little hint then wait a litle before starting drugs effects
sleep 3;
hint "weed 2";
//Activate ppEffects we need
"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

_smoke = "SmokeShell" createVehicle position player;
if (vehicle player != player) then {
    _smoke attachTo [vehicle player, [-0.6,-1,0]];
} else {
    _smoke attachTo [player, [0,-0.1,1.5]];
};
playSound "weed";

//Let's go for 45secs of effetcs
for "_i" from 0 to 120 do
{
    "chromAberration" ppEffectAdjust [random 0.4,random 0.4,true];
    "chromAberration" ppEffectCommit 1;   
    "radialBlur" ppEffectAdjust  [random 0.04,random 0.04,0.15,0.15];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 3, 1, random 3];
    sleep 1;
};

//Stop effects
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;
detach _smoke;
//Deactivate ppEffects
"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;