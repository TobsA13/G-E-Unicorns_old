_v = "C_Kart_01_F" createVehicle (position player);
_v allowDamage false;
_v addAction ["Event 1.","(_this select 0) allowDamage false",[],-10];
_v addAction ["Event 2.","cursorTarget allowDamage false",[],-11];