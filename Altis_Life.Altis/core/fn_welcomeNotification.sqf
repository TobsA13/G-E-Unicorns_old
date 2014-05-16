/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/

_l1 = parseText "Du bist auf dem Server von German Guardians.<br />    Unsere Ts3-IP: German-Guardians.de";
_l2 = parseText "Die wichtigsten Aktionstasten findest du auf der<br />    Ingamemap unter Steuerung.";
_l3 = parseText "Falls weitere Fragen bestehen kannst du gerne einen<br />    Admin kontaktieren!<br />    Die Admins sind:    TobsA13<br />                        Mad(gaming)<br />                        DerStalkerHD<br />                        Killerkexx.";
_l4 = parseText "Features:  Housing<br />              ADAC<br />              Medic System<br />              Custom Skins<br />              schwache Version des Tasers (4 Schuss)<br />              u.v.m";
_l5 = parseText "Wir suchen auch noch Polizisten die schon etwas<br />    länger auf dem Server spielen.<br />    Bei Interesse einfach bei einem Admin auf TS<br />    melden.";



format[" Willkommen %1",name player] hintC [_l1,_l2,_l3,_l4,_l5];


hintC_arr_EH = findDisplay 72 displayAddEventHandler ["unload", {
	0 = _this spawn {
		_this select 0 displayRemoveEventHandler ["unload", hintC_arr_EH];
		hintSilent "";
	};
}];