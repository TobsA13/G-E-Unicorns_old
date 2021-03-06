﻿#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Polizeianwärter Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
                        ["SmokeShellOrange",nil,0],
                        ["Chemlight_blue",nil,0],
						["muzzle_snds_L",nil,0],
						["FirstAidKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["16Rnd_9x21_Mag",nil,0]
					]
				];
			};
		};
	};
	
	case "polizei_meister":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"Du bist noch kein Polizeihauptmeister!"};
			default
			{
				["Polizeihauptmeister Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
                        ["SmokeShellOrange",nil,0],
                        ["Chemlight_blue",nil,0],
						["muzzle_snds_L",nil,0],
						["FirstAidKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["16Rnd_9x21_Mag",nil,0],
						["MineDetector",nil,0],
						["muzzle_snds_H",nil,0]
					]
				];
			};
		};
	};
	
	case "kommissar_anwärter":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"Du bist noch kein Kommissaranwärter"};
			default
			{
				["Kommissaranwärter Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",0],
						["hgun_Pistol_heavy_01_F",nil,0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
                        ["SmokeShellOrange",nil,0],
                        ["Chemlight_blue",nil,0],
						["muzzle_snds_L",nil,0],
						["FirstAidKit",nil,0],
						["Medikit",nil,100],
						["NVGoggles",nil,0],
						["SMG_02_ACO_F",nil,0],
						["16Rnd_9x21_Mag",nil,0],
						["11Rnd_45ACP_Mag",nil,0],
						["optic_MRD",nil,0],
						["optic_Aco",nil,0],
						["MineDetector",nil,0],
						["muzzle_snds_H",nil,0],
						["30Rnd_9x21_Mag",nil,0]

					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"Du bist noch kein Kommissar"};
			default
			{
				["Kommissar Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",0],
						["hgun_Pistol_heavy_01_F",nil,0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
                        ["SmokeShellOrange",nil,0],
                        ["Chemlight_blue",nil,0],
						["muzzle_snds_L",nil,0],
						["FirstAidKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["16Rnd_9x21_Mag",nil,0],
						["11Rnd_45ACP_Mag",nil,0],
						["SMG_02_ACO_F",nil,0],
						["arifle_MX_F",nil,0],
						["MineDetector",nil,0],
						["acc_flashlight",nil,0],
						["optic_Holosight",nil,0],
						["optic_Aco",nil,0],
						["optic_MRD",nil,0],
						["muzzle_snds_H",nil,0],
						["30Rnd_9x21_Mag",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0]
					]
				];
			};
		};
	};
	
	case "ober_kommissar":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"Du bist noch kein Oberkommissar"};
			default
			{
				["Oberkommissar Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",0],
						["hgun_Pistol_heavy_01_F",nil,0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
                        ["SmokeShellOrange",nil,0],
                        ["Chemlight_blue",nil,0],
						["muzzle_snds_L",nil,0],
						["FirstAidKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["16Rnd_9x21_Mag",nil,0],
						["11Rnd_45ACP_Mag",nil,0],
						["arifle_MX_F",nil,0],
						["SMG_02_ACO_F",nil,0],
						["arifle_MXM_F",nil,0],
						["MineDetector",nil,0],
						["acc_flashlight",nil,0],
						["optic_Holosight",nil,0],
						["optic_Arco",nil,0],
						["optic_Aco",nil,0],
						["optic_MRD",nil,0],
						["optic_DMS",nil,0],
						["muzzle_snds_H",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["30Rnd_9x21_Mag",nil,0]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"Du bist noch kein Hauptkommissar"};
			default
			{
				["Hauptkommissar/SEK Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",0],
						["hgun_Pistol_heavy_01_F",nil,0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
                        ["SmokeShellOrange",nil,0],
                        ["Chemlight_blue",nil,0],
						["muzzle_snds_L",nil,0],
						["FirstAidKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0],
						["16Rnd_9x21_Mag",nil,0],
						["11Rnd_45ACP_Mag",nil,0],
						["SMG_02_ACO_F",nil,0],
						["arifle_MX_F",nil,0],
						["hgun_ACPC2_F",nil,0],
						["arifle_MXC_F",nil,0],
						["arifle_MXM_F",nil,0],
						["MineDetector",nil,0],
                        ["MiniGrenade","Flashbang",0],
						["optic_Arco",nil,0],
						["optic_Holosight",nil,0],
						["optic_Aco",nil,0],
						["optic_MRD",nil,0],
						["optic_DMS",nil,0],
						["acc_flashlight",nil,0],
						["muzzle_snds_H",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["30Rnd_9x21_Mag",nil,0],
						["9Rnd_45ACP_Mag",nil,0],
						["optic_LRPS",nil,0],
						["srifle_GM6_F",nil,0],
						["5Rnd_127x108_Mag",nil,0],
						["SMG_01_F",nil,0],
						["30Rnd_45ACP_Mag_SMG_01",nil,0]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Schwarzmarkt",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["optic_DMS",nil,15000],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Waffenhändler",
					[
						["hgun_Rook40_F",nil,10000],
						["hgun_Pistol_heavy_02_F",nil,15000],
						["hgun_ACPC2_F",nil,20000],
						["hgun_PDW2000_F",nil,40000],
						["optic_ACO_grn_smg",nil,5000],
						["V_Rangemaster_belt",nil,13000],
						["16Rnd_9x21_Mag",nil,100],
						["9Rnd_45ACP_Mag",nil,100],
						["6Rnd_45ACP_Cylinder",nil,100],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["Donator Level: 1",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["arifle_MK20C_plain_F",nil,25000],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["Donator Level: 2",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["arifle_MK20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["Donator Level: 3",
					[
						["hgun_Rook40_F",nil,500],
						["hgun_PDW2000_F",nil,6500],
						["hgun_pistol_heavy_01_F",nil,5850],
						["arifle_Mk20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["11Rnd_45ACP_Mag",nil,85],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["ALDI",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_green",nil,300]
			]
		];
	};
    
    case "medic":
	{
         switch(true) do
		{
			case (!(str(player) in ["medic_1","medic_2","medic_3","medic_4"])): {"Du bist kein Notarzt"};
			default
			{
		["Notarztausrüstung",
			[
				["ItemGPS",nil,0],
				["FirstAidKit",nil,0],
				["Medikit",nil,0],
				["NVGoggles",nil,0],
				["ToolKit",nil,0],
				["Chemlight_red",nil,10],
                ["SmokeShellPurple",nil,10]
			]
		];
			};
		};
	};
    case "adac":
	{   
        switch(true) do
		{
			case (!(str(player) in ["adac_1","adac_2"])): {"Du bist keiner vom ADAC"};
			default
			{
				["ADAC - Ausrüstung",
					[
						["ItemGPS",nil,100],
						["ToolKit",nil,0],
						["NVGoggles",nil,100],
						["Chemlight_yellow",nil,10],
						["SmokeShellYellow",nil,10]
					]
				];
			};
		};

	};
	
	case "shell":
	{
		["Shell",
			[
				["ToolKit",nil,350],
				["FirstAidKit",nil,250]
			]
		];
	};
	
	case "blackwater":
	{	
		switch(true) do
		{
			case (playerSide != civilian): {"Du gehörst nicht zu Blackwater Limited & Co.KG!"};
			case (!license_civ_blackwater): {"Du gehörst nicht zu Blackwater Limited & Co.KG!"};
			default
			{
				["Blackwater Shop",
					[
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["Chemlight_green",nil,300],
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["arifle_MXM_F",nil,45000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["optic_DMS",nil,10000],
						["optic_LRPS",nil,15000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["hgun_Rook40_F",nil,10000],
						["hgun_Pistol_heavy_02_F",nil,15000],
						["hgun_ACPC2_F",nil,20000],
						["hgun_PDW2000_F",nil,40000],
						["optic_ACO_grn_smg",nil,5000],
						["16Rnd_9x21_Mag",nil,100],
						["9Rnd_45ACP_Mag",nil,100],
						["6Rnd_45ACP_Cylinder",nil,100],
						["30Rnd_9x21_Mag",nil,250],
						["muzzle_snds_H",nil,300],
						["muzzle_snds_M",nil,300],
						["muzzle_snds_B",nil,300],
						["muzzle_snds_acp",nil,300]
					]
				];
			};
		};
	};	
};
