/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {"Rohöl"};
	case "life_inv_oilp": {"verarbeitetes Öl"};
	case "life_inv_heroinu": {"Unverarbeitetes Heroin"};
	case "life_inv_heroinp": {"Verarbeitets Heroin"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Apfel"};
	case "life_inv_rabbit": {"Hasen Fleisch"};
	case "life_inv_salema": {"Salema Fleisch"};
	case "life_inv_ornate": {"Forellen Filet"};
	case "life_inv_mackerel": {"Mackerelen Filet"};
	case "life_inv_tuna": {"Tunfisch Filet"};
	case "life_inv_mullet": {"Meeräschen Filet"};
	case "life_inv_catshark": {"Katzenhei Filet"};
	case "life_inv_turtle": {"Schildkrötenfleisch"};
	case "life_inv_fishingpoles": {"Angel"};
	case "life_inv_water": {"Wasserflasche"};
	case "life_inv_coffee": {"Kafe"};
	case "life_inv_turtlesoup": {"Schildkrötensuppe"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Leerer-Sprit-Kanister"};
	case "life_inv_fuelF": {"Voller-Sprit-Kanister"};
	case "life_inv_pickaxe": {"Spitzhacke"};
	case "life_inv_copperore": {"Kupfererz"};
	case "life_inv_ironore": {"Eisenerz"};
	case "life_inv_ironr": {"Eisen-Barren"};
	case "life_inv_copperr": {"Kupfer-Barren"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_salt": {"Salz verdreckt"};
	case "life_inv_saltr": {"Salz gereinigt"};
	case "life_inv_platinu": {"Platinerz"};
	case "life_inv_platinp": {"Platinbarren"};
	case "life_inv_glass": {"Glas"};
	case "life_inv_diamond": {"Diamandenroling"};
	case "life_inv_diamondr": {"geschliffener Diamant"};
	case "life_inv_tbacon": {"Taktik-Speck"};
	case "life_inv_redgull": {"RedBüll"};
	case "life_inv_lockpick": {"Dietrich"};
	case "life_inv_peach": {"Peach"};
	case "life_inv_coke": {"Kokablätter"};
	case "life_inv_cokep": {"Kokain Pulver"};
	case "life_inv_spikeStrip": {"Nagelbänder"};
	case "life_inv_rock": {"Stein"};
	case "life_inv_cement": {"Zement Sack"};
	case "life_inv_goldbar": {"Gold Baren"};
	
	//License Block
	case "license_civ_driver": {"Führerschein"};
	case "license_civ_air": {"Fluglizens"};
	case "license_civ_heroin": {"Heroin Rezept"};
	case "license_civ_gang": {"Gang Lizens"};
	case "license_civ_oil": {"Oil Verarbeitungslizens"};
	case "license_civ_dive": {"Tauchschein"};
	case "license_civ_boat": {"Bootführerschein"};
	case "license_civ_gun": {"Waffenschein für Pistolen"};
	case "license_cop_air": {"Fluglizens"};
	case "license_cop_swat": {"SEK Training"};
	case "license_cop_cg": {"Küstenwachen Lizens"};
	case "license_civ_rebel": {"Rebelen Training"};
	case "license_civ_truck": {"LKW-Führerschein"};
	case "license_civ_diamond": {"Diamant Lizenz"};
	case "license_civ_copper": {"Kupfer Lizenz"};
	case "license_civ_platin": {"Platin Lizenz"};
	case "license_civ_iron": {"Eisen Lizenz"};
	case "license_civ_sand": {"Sand Lizenz"};
	case "license_civ_salt": {"Salt Lizenz"};
	case "license_civ_coke": {"Kokain Rezept"};
	case "license_civ_marijuana": {"Marijuana Rezept"};
	case "license_civ_cement": {"Zimentmischer Lizenz"};
    
        //Virtual Inventory Items
    case "life_inv_storage1": {"Abstellkammer"};
    case "life_inv_storage2": {"Große Abstellkammer"};
    case "license_civ_home": {"Haus besitzer Lizenz"};
};
