/*
CONFIG FILE FOR KP LIBERATION
*/

// Vehicle classnames which also function as ACE medical vehicles.
KP_liberation_medical_vehicles = [
	"B_Truck_01_medical_F",
	"B_T_Truck_01_medical_F",
	"rhsusf_m113_usarmy_medical",
	"rhsusf_m113d_usarmy_medical",
	"RHS_UH60M_MEV2",
	"rhsusf_m1230a1_usarmy_wd",
	"rhsusf_m1085A1P2_B_WD_Medical_fmtv_usarmy",
	"RHS_UH60M_MEV",
	"RHS_UH60M_MEV2_d"
];

// Classnames of ACE3 crates (which have to be in the unit preset as well).
KP_liberation_ace_crates = [
	"ACE_Box_82mm_Mo_HE",
	"ACE_Box_82mm_Mo_Smoke",
	"ACE_Box_82mm_Mo_Illum",
	"ACE_medicalSupplyCrate_advanced"
];

/* - Custom unit and arsenal preset settings.
Which units preset should be used?
0 = Default vanilla with RHS USAF and BWMod, both optional (edit the custom.sqf in the presets\ folder to change things for your own versions and tweaks).
1 = Apex vanilla with RHS USAF and BWMod, both optional (edit the apex_tanoa.sqf in the presets\ folder to change things for your own versions and tweaks).
2 = RHS USAF and RHS AFRF.
3 = RHS USAF, RHS AFRF and BWMod.
4 = RHS USAF, RHS AFRF and Project OPFOR (Takistan)
5 = 3cbBAF, RHS USAF and RHS AFRF. */
KP_liberation_preset = 0;

/* Which arsenal preset should be used?
0 = Use the default blacklist method (defined below).
1 = Custom arsenal preset (edit the custom.sqf in the arsenal_presets\ folder to change things for your own versions and tweaks).
2 = Killah Potatoes Gaming Community arsenal preset.
3 = RHS USAF arsenal preset.
4 = RHS USAF arsenal preset with ACE.
5 = RHS USAF arsenal preset with ACE and ACRE.	
6 = 3cbBAF and RHS USAF arsenal preset. */
KP_liberation_arsenal = 0;

/* - Fuel consumption settings.
Time in minutes till a full tank depletes whilst the vehicle is standing still with a running engine.	*/
KP_liberation_fuel_neutral = 180;
// Time in minutes till a full tank depletes whilst the vehicle is driving below max speed.
KP_liberation_fuel_normal = 75;
// Time in minutes till a full tank depletes whilst the vehicle is driving at max speed.
KP_liberation_fuel_max = 40;

/* - Gameplay constant settings.
Name of the savegame namespace inside of the [ServerProfileName].vars.Arma3Profile file.	*/
GRLIB_save_key = "KP_LIBERATION_" + (toUpper worldName) + "_SAVEGAME";

KP_liberation_savegame_debug = false;																			// Enables displaying of the whole save array in the server log on each save

GRLIB_side_friendly = WEST;																						// Friendly side.
GRLIB_side_enemy = EAST;																						// Enemy side.
GRLIB_side_resistance = RESISTANCE;																				// Resistance side.
GRLIB_side_civilian = CIVILIAN;																					// Civilian side.
GRLIB_respawn_marker = "respawn_west";																			// Respawn marker name.

GRLIB_color_friendly = "ColorBLUFOR";																			// Friendly sector marker color.
GRLIB_color_enemy = "ColorOPFOR";																				// Enemy sector marker color.
GRLIB_color_enemy_bright = "ColorRED";																			// Enemy sector marker color (activated).

GRLIB_fob_range = 125;																							// Build range around the main FOB building.
GRLIB_halo_altitude = 2500;																						// Altitude in metres for the HALO jump.
GRLIB_secondary_missions_costs = [15, 10, 8];																	// Intel price for the secondary missions [FOB hunting, Convoy ambush, SAR].
GRLIB_secondary_objective_impact = 0.6;																			// The percentage impact against enemy combat readiness for a successful FOB hunt.
GRLIB_recycling_percentage = 0.5;																				// Percentage of resources you get back from recycling.
KP_liberation_production_interval = 45				/ GRLIB_resources_multiplier;								// Time in minutes until a production process is finished, when resources multiplier is set to 1.

GRLIB_sector_size = 1000;																						// Range to activate a sector.
GRLIB_capture_size = 175;																						// Range to capture a sector.
GRLIB_defended_buildingpos_part = 0.4;																			// Multiplier for defenders in buildings.
GRLIB_battlegroup_size = 6							* (sqrt GRLIB_unitcap) * (sqrt GRLIB_csat_aggressivity);	// Size of enemy battlegroups.
GRLIB_vulnerability_timer = 1200;																				// Time in seconds how long a captured sector is vulnerable to enemy troops.
GRLIB_radiotower_size = 2500;																					// Radio Tower scanning range.
GRLIB_surrender_chance = 80;																					// Chance that enemy infantry will surrender after heavy losses are encountered.

GRLIB_civilians_amount = 10 						* GRLIB_civilian_activity;									// Civilian count multiplier.
GRLIB_cleanup_delay = 1200;																						// Time in seconds until bodies of dead soldiers are cleaned up.

GRLIB_blufor_cap = 100								* GRLIB_unitcap;											// Cap for BLUFOR.
GRLIB_sector_cap = 180								* GRLIB_unitcap;											// Cap for sector defenders.
GRLIB_battlegroup_cap = 150							* GRLIB_unitcap;											// Cap for enemy battlegroups.
GRLIB_patrol_cap = 150								* GRLIB_unitcap;											// Cap for enemy patrols.

/* - Default arsenal blacklist method.
Useless if you're using anything other than "kp_liberation_arsenal = 0;" above. A whitelisted arsenal is always more performance friendly then a blacklisted arsenal.	
REMEMBER: All static turret and UAV bags should be defined here, to stop players from exploiting free resources via the virtual arsenal.	*/
blacklisted_from_arsenal = [
	"B_Respawn_Sleeping_bag_blue_F",
	"B_Respawn_Sleeping_bag_brown_F",
	"B_Respawn_TentDome_F",
	"B_Respawn_Sleeping_bag_F",
	"B_Respawn_TentA_F",
	"I_HMG_01_weapon_F",
	"B_HMG_01_weapon_F",
	"O_HMG_01_weapon_F",
	"I_HMG_01_A_weapon_F",
	"B_HMG_01_A_weapon_F",
	"O_HMG_01_A_weapon_F",
	"I_HMG_01_high_weapon_F",
	"B_HMG_01_high_weapon_F",
	"O_HMG_01_high_weapon_F",
	"I_GMG_01_weapon_F",
	"B_GMG_01_weapon_F",
	"O_GMG_01_weapon_F",
	"I_GMG_01_A_weapon_F",
	"B_GMG_01_A_weapon_F",
	"O_GMG_01_A_weapon_F",
	"I_GMG_01_high_weapon_F",
	"B_GMG_01_high_weapon_F",
	"O_GMG_01_high_weapon_F",
	"I_Mortar_01_support_F",
	"B_Mortar_01_support_F",
	"O_Mortar_01_support_F",
	"I_Mortar_01_weapon_F",
	"B_Mortar_01_weapon_F",
	"O_Mortar_01_weapon_F",
	"I_HMG_01_support_F",
	"B_HMG_01_support_F",
	"O_HMG_01_support_F",
	"I_HMG_01_support_high_F",
	"B_HMG_01_support_high_F",
	"O_HMG_01_support_high_F",
	"I_AA_01_weapon_F",
	"B_AA_01_weapon_F",
	"O_AA_01_weapon_F",
	"I_AT_01_weapon_F",
	"B_AT_01_weapon_F",
	"O_AT_01_weapon_F",
	"I_UAV_01_backpack_F",
	"B_UAV_01_backpack_F",
	"O_UAV_01_backpack_F",
	"RHS_M2_Gun_Bag",
	"RHS_M2_Tripod_Bag",
	"rhs_M252_Gun_Bag",
	"rhs_M252_Bipod_Bag",
	"RHS_M2_MiniTripod_Bag",
	"RHS_Mk19_Gun_Bag",
	"RHS_Mk19_Tripod_Bag",
	"rhs_Tow_Gun_Bag",
	"rhs_TOW_Tripod_Bag",
	"RHS_Podnos_Bipod_Bag",
	"RHS_Podnos_Gun_Bag",
	"RHS_Metis_Gun_Bag",
	"RHS_Metis_Tripod_Bag",
	"RHS_Kornet_Gun_Bag",
	"RHS_Kornet_Tripod_Bag",
	"RHS_AGS30_Tripod_Bag",
	"RHS_AGS30_Gun_Bag",
	"RHS_DShkM_Gun_Bag",
	"RHS_DShkM_TripodHigh_Bag",
	"RHS_DShkM_TripodLow_Bag",
	"RHS_Kord_Tripod_Bag",
	"RHS_Kord_Gun_Bag",
	"RHS_NSV_Tripod_Bag",
	"RHS_NSV_Gun_Bag",
	"RHS_SPG9_Gun_Bag",
	"RHS_SPG9_Tripod_Bag",
	"optic_Nightstalker",
	"optic_tws",
	"optic_tws_mg",
	"Redd_Milan_Static_Bag",
	"Redd_Milan_Static_Tripod",
/*Wärmebild Optiks*/
	"NVGogglesB_grn_F",
	"NVGogglesB_blk_F",
	"NVGogglesB_gry_F",
	"optic_Nightstalker",
	"rhsusf_acc_anpas13gv1",
/*RHS Russen Uniform*/
	"rhs_uniform_df15",
        "rhs_uniform_df15_tan",
	"rhs_uniform_vdv_emr_des",
	"rhs_uniform_emr_patchless",
	"rhs_uniform_msv_emr",
	"rhs_uniform_vdv_emr",
	"rhs_uniform_rva_flora",
	"rhs_uniform_vmf_flora",
	"rhs_uniform_vmf_flora_subdued",
	"rhs_uniform_flora_patchless",
	"rhs_uniform_flora_patchless_alt",
	"rhs_uniform_flora",
	"rhs_uniform_vdv_flora",
	"rhs_uniform_gorka_r_g",
	"rhs_uniform_gorka_r_y",
	"rhs_chdkz_uniform_5",
	"rhs_chdkz_uniform_4",
	"rhs_chdkz_uniform_3",
	"rhs_chdkz_uniform_2",
	"rhs_chdkz_uniform_1",
	"rhs_uniform_mvd_izlom",
	"rhs_uniform_mflora_patchless",
	"rhs_uniform_vdv_mflora",
	"rhs_uniform_m88_patchless",
	"rhs_uniform_emr_des_patchless",
/*RHS Russen Westen*/
		"rhs_6b13_Flora",
                "rhs_6b13_Flora_6sh92",
                "rhs_6b13_Flora_6sh92_headset_mapcase",
                "rhs_6b13_Flora_6sh92_radio",
                "rhs_6b13_Flora_6sh92_vog",
                "rhs_6b13_Flora_crewofficer",
                "rhs_6b13_EMR_6sh92",
                "rhs_6b13_EMR_6sh92_radio",
                "rhs_6b13_EMR_6sh92_vog",
                "rhs_6b13_EMR_6sh92_headset_mapcase",
                "rhs_6b13_EMR",
                "rhs_6b13",
                "rhs_6b13_6sh92",
                "rhs_6b13_6sh92_headset_mapcase",
                "rhs_6b13_6sh92_radio",
                "rhs_6b13_6sh92_vog",
                "rhs_6b13_crewofficer",
                "rhs_6b23",
                "rhs_6b23_6sh116_od",
                "rhs_6b23_6sh116_vog_od",
                "rhs_6b23_6sh92",
                "rhs_6b23_6sh92_headset",
                "rhs_6b23_6sh92_headset_mapcase",
                "rhs_6b23_6sh92_radio",
                "rhs_6b23_6sh92_vog",
                "rhs_6b23_6sh92_vog_headset",
                "rhs_6b23_crewofficer",
                "rhs_6b23_crew",
                "rhs_6b23_engineer",
                "rhs_6b23_medic",
                "rhs_6b23_rifleman",
                "rhs_6b23_sniper",
                "rhs_6b23_vydra_3m",
                "rhs_6b23_digi",
                "rhs_6b23_6sh116",
                "rhs_6b23_6sh116_vog",
                "rhs_6b23_digi_6sh92",
                "rhs_6b23_digi_6sh92_headset",
                "rhs_6b23_digi_6sh92_headset_spetsnaz",
                "rhs_6b23_digi_6sh92_headset_mapcase",
                "rhs_6b23_digi_6sh92_radio",
                "rhs_6b23_digi_6sh92_Spetsnaz",
                "rhs_6b23_digi_6sh92_vog",
                "rhs_6b23_digi_6sh92_vog_headset",
                "rhs_6b23_digi_6sh92_Vog_Radio_Spetsnaz",
                "rhs_6b23_digi_crewofficer",
                "rhs_6b23_digi_crew",
                "rhs_6b23_digi_engineer",
                "rhs_6b23_digi_medic",
                "rhs_6b23_digi_rifleman",
                "rhs_6b23_digi_sniper",
                "rhs_6b23_digi_vydra_3m",
                "rhs_6b23_6sh116_flora",
                "rhs_6b23_6sh116_vog_flora",
		"rhs_6b23_ML",
                "rhs_6b23_ML_6sh92",
                "rhs_6b23_ML_6sh92_headset",
                "rhs_6b23_ML_6sh92_headset_mapcase",
                "rhs_6b23_ML_6sh92_radio",
                "rhs_6b23_ML_6sh92_vog",
                "rhs_6b23_ML_6sh92_vog_headset",
                "rhs_6b23_ML_crewofficer",
                "rhs_6b23_ML_crew",
                "rhs_6b23_ML_engineer",
                "rhs_6b23_ML_medic",
                "rhs_6b23_ML_rifleman",
                "rhs_6b23_ML_sniper",
                "rhs_6b23_ML_vydra_3m",
                "rhs_vydra_3m",
		"rhs_6sh46",
                "rhs_6sh92",
                "rhs_6sh92_headset",
                "rhs_6sh92_radio",
                "rhs_6sh92_vog",
                "rhs_6sh92_vog_headset",
                "rhs_6sh92_digi",
                "rhs_6sh92_digi_headset",
                "rhs_6sh92_digi_radio",
                "rhs_6sh92_digi_vog",
                "rhs_6sh92_digi_vog_headset",
		"rhs_vest_commander",
                "rhs_vest_pistol_holster",
	  	"rhs_6sh92_vsr",
		"rhs_6sh92_vsr_radio",
		"rhs_6sh92_vsr_headset",
		"rhs_6sh92_vsr_vog",
		"rhs_6sh92_vsr_vog_headset",
		"rhs_6b43",
		"rhs_6b23_digi_6sh92_vog_spetsnaz",
		"rhs_6b23_digi_6sh92_spetsnaz2",
		"rhs_6b23_digi_6sh92_Vog_Spetsnaz",
/*RHS Russen Helme*/
		"rhs_6b26_green",
                "rhs_6b26_bala_green",
                "rhs_6b26_ess_green",
                "rhs_6b26_ess_bala_green",
                "rhs_6b26",
                "rhs_6b26_bala",
                "rhs_6b26_ess",
                "rhs_6b26_ess_bala",
                "rhs_6b27m_green",
                "rhs_6b27m_green_bala",
                "rhs_6b27m_green_ess",
                "rhs_6b27m_green_ess_bala",
                "rhs_6b27m_digi",
                "rhs_6b27m_digi_bala",
                "rhs_6b27m_digi_ess",
                "rhs_6b27m_digi_ess_bala",
                "rhs_6b27m",
                "rhs_6b27m_bala",
                "rhs_6b27m_ess",
                "rhs_6b27m_ess_bala",
                "rhs_6b27m_ml",
                "rhs_6b27m_ml_bala",
                "rhs_6b27m_ml_ess",
                "rhs_6b27m_ML_ess_bala",
                "rhs_6b28_green",
                "rhs_6b28_green_bala",
                "rhs_6b28_green_ess",
                "rhs_6b28_green_ess_bala",
                "rhs_6b28",
                "rhs_6b28_bala",
                "rhs_6b28_ess",
                "rhs_6b28_ess_bala",
                "rhs_6b28_flora",
                "rhs_6b28_flora_bala",
                "rhs_6b28_flora_ess",
                "rhs_6b28_flora_ess_bala",
                "rhs_6b47",
                "rhs_6b47_bala",
                "rhs_6b47_ess",
                "rhs_6b47_ess_bala",
                "rhs_6b7_1m",
                "rhs_6b7_1m_bala1",
                "rhs_6b7_1m_bala2",
                "rhs_6b7_1m_emr",
                "rhs_6b7_1m_bala1_emr",
                "rhs_6b7_1m_bala2_emr",
                "rhs_6b7_1m_emr_ess",
                "rhs_6b7_1m_emr_ess_bala",
                "rhs_6b7_1m_ess",
                "rhs_6b7_1m_ess_bala",
                "rhs_6b7_1m_flora",
                "rhs_6b7_1m_bala2_flora",
                "rhs_6b7_1m_bala1_flora",
                "rhs_6b7_1m_flora_ns3",
                "rhs_6b7_1m_olive",
                "rhs_6b7_1m_bala1_olive",
                "rhs_6b7_1m_bala2_olive",
		"rhs_tsh4",
                "rhs_tsh4_bala",
                "rhs_tsh4_ess",
                "rhs_tsh4_ess_bala",
                "rhsgref_un_beret",
                "rhs_8point_marpatd",
                "rhs_8point_marpatwd",
                "rhs_zsh12",
                "rhs_zsh12_bala",
                "rhs_zsh12_black",
                "rhs_zsh7a_mike_green_alt",
                "rhs_zsh7a_mike_alt",
                "rhs_zsh7a_mike_green",
                "rhs_zsh7a_mike",
                "rhs_zsh7a",
                "rhs_zsh7a_alt",
		"rhs_fieldcap",
                "rhs_fieldcap_helm_digi",
                "rhs_fieldcap_helm_ml",
                "rhs_fieldcap_helm",
                "rhs_fieldcap_digi",
                "rhs_fieldcap_digi2",
                "rhs_fieldcap_ml",
                "rhs_fieldcap_khk",
                "rhs_fieldcap_vsr",
		"rhs_altyn_novisor",
		"rhs_altyn_novisor_bala",
		"rhs_altyn_novisor_ess",
		"rhs_altyn_novisor_ess_bala",
		"rhs_altyn_visordown",
		"rhs_altyn",
		"rhs_altyn_bala",
		"rhs_ssh68",
/*RHS Russen Rucksäcke*/
		"rhs_rpg_empty",
                "rhs_sidor",
                "rhs_assault_umbts",
                "rhs_assault_umbts_engineer_empty",
/*RHS Russen Waffen*/
		"rhs_weap_igla"
];

// Items which should be added as allowed Items, when they get blacklisted, even if they are not in the blacklisted_from_arsenal array
KP_liberation_allowed_items_extension = [
	"ItemRadioAcreFlagged",
	"rhs_m72a7_mag",
	"rhsusf_acc_anpeq15_bk_light_h",
	"rhs_weap_M136_used",
	"rhs_m136_mag",
	"rhs_m136_hedp_mag",
	"rhs_m136_hp_mag"
];

/* - Configuration settings for crates transported by vehicles.
Format = ["classname", distance behind vehicle to unload crate, attachTo positions for each box],	*/
box_transport_config = [
	["BW_LKW_Transport_offen_fleck", -6.5, [0,-1.1,0.25], [0,-2.6,0.25],[0,-4.1,0.25]],
	["BW_LKW_Transport_Fleck", -6.5, [0,-1.1,0.25], [0,-2.6,0.25],[0,-4.1,0.25]],
	["C_Offroad_01_F", -6.5, [0,-1.7,0.4]],
	["I_G_Offroad_01_F", -6.5, [0,-1.7,0.4]],
	["O_G_Offroad_01_F", -6.5, [0,-1.7,0.4]],
	["C_Van_01_transport_F", -6.5, [0,-1.1,0.25], [0,-2.6,0.25]],
	["I_G_Van_01_transport_F", -6.5, [0,-1.1,0.25], [0,-2.6,0.25]],
	["I_C_Van_01_transport_F", -6.5, [0,-1.1,0.25], [0,-2.6,0.25]],
	["O_G_Van_01_transport_F", -6.5, [0,-1.1,0.25], [0,-2.6,0.25]],
	["C_Truck_02_transport_F", -6.5, [0,0.3,0.05], [0,-1.3,0.05], [0,-2.9,0.05]],
	["C_Truck_02_covered_F", -6.5, [0,0.3,0.05], [0,-1.3,0.05], [0,-2.9,0.05]],
	["RHS_Ural_Open_Civ_03", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["RHS_Ural_Civ_03", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["LOP_TAK_Civ_Ural_open", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["LOP_TAK_Civ_Ural", -6.5, [0,-0.2,0.55], [0,-1.4,0.55], [0,-2.55,0.55]],
	["B_Truck_01_transport_F", -6.5, [0,-0.4,0.4], [0,-2.1,0.4], [0,-3.8,0.4]],
	["B_Truck_01_covered_F", -6.5, [0,-0.4,0.4], [0,-2.1,0.4], [0,-3.8,0.4]],
	["B_T_Truck_01_transport_F", -6.5, [0,-0.4,0.4], [0,-2.1,0.4], [0,-3.8,0.4]],
	["B_T_Truck_01_covered_F", -6.5, [0,-0.4,0.4], [0,-2.1,0.4], [0,-3.8,0.4]],
	["rhsusf_M977A4_BKIT_usarmy_d", -6.5, [0,0.4,1.4], [0,-1.3,1.4], [0,-3,1.4]],
	["rhsusf_M977A4_BKIT_M2_usarmy_d", -6.5, [0,0.4,0.7], [0,-1.3,0.7], [0,-3,0.7]],
	["rhsusf_M977A4_BKIT_usarmy_wd", -6.5, [0,0.4,1.4], [0,-1.3,1.4], [0,-3,1.4]],
	["rhsusf_M977A4_BKIT_M2_usarmy_wd", -6.5, [0,0.4,0.7], [0,-1.3,0.7], [0,-3,0.7]],
	["I_Heli_Transport_02_F", -6.5, [0,4.2,-1.45], [0,2.5,-1.45], [0,0.8,-1.45], [0,-0.9,-1.45]],
	["B_Heli_Transport_03_F", -7.5, [0,2.2,-1], [0,0.5,-1], [0,-1.2,-1]],
	["B_Heli_Transport_03_unarmed_F", -7.5, [0,2.2,-1], [0,0.5,-1], [0,-1.2,-1]],
	["B_T_VTOL_01_infantry_F", -7.5,[0,4.7,-4.88],[0,3,-4.88],[0,1.3,-4.88],[0,-0.4,-4.88],[0,-2.1,-4.88]],
    ["B_T_VTOL_01_vehicle_F", -7.5,[0,4.7,-4.88],[0,3,-4.88],[0,1.3,-4.88],[0,-0.4,-4.88],[0,-2.1,-4.88]],
	["RHS_CH_47F_10", -7.5, [0,2.2,-1.7], [0,0.5,-1.7], [0,-1.2,-1.7]],
	["RHS_CH_47F_light", -7.5, [0,2.2,-1.7], [0,0.5,-1.7], [0,-1.2,-1.7]],
	["RHS_CH_47F", -7.5, [0,2.2,-1.7], [0,0.5,-1.7], [0,-1.2,-1.7]],
	["UK3CB_BAF_Merlin_HC3_18_DPMT", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["UK3CB_BAF_Merlin_HC3_32_MTP", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["UK3CB_BAF_Merlin_HC3_CSAR_MTP", -7.5, [0.25,3.7,-1.5], [0.25,1.6,-1.5], [0.25,-0.4,-1.5]],
	["O_Truck_03_transport_F", -6.5, [0,-0.8,0.4], [0,-2.4,0.4], [0,-4.0,0.4]],
	["O_Truck_03_covered_F", -6.5, [0,-0.8,0.4], [0,-2.4,0.4], [0,-4.0,0.4]],
	["O_T_Truck_03_transport_ghex_F", -6.5, [0,-0.8,0.4], [0,-2.4,0.4], [0,-4.0,0.4]],
	["O_T_Truck_03_covered_ghex_F", -6.5, [0,-0.8,0.4], [0,-2.4,0.4], [0,-4.0,0.4]],
	["greuh_eh101_gr", -6.5, [0,4.2,-1.45], [0,2.5,-1.45], [0,0.8,-1.45], [0,-0.9,-1.45]],
	["CUP_B_Wolfhound_GMG_GB_W", -6.5, [0,-3.5,2.3]],
	["CUP_B_Wolfhound_HMG_GB_W", -6.5, [0,-3.5,2.3]],
	["CUP_B_Wolfhound_LMG_GB_W", -6.5, [0,-3.5,2.3]],
	["rhsusf_m998_w_2dr_halftop", -4.5, [0,-0.9,-0.2]],
	["rhsusf_m998_d_2dr_halftop", -4.5, [0,-0.9,-0.2]],
	["rhsusf_M1078A1P2_wd_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_d_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_wd_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
    ["rhsusf_M1083A1P2_wd_open_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_d_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
    ["rhsusf_M1083A1P2_d_open_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_M2_d_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1078A1P2_B_M2_wd_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_B_M2_d_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]],
	["rhsusf_M1083A1P2_B_M2_wd_flatbed_fmtv_usarmy", -5.0, [0,-0.2,0.45], [0,-1.9,0.45]]
];

/* Various other settings.
Everything the AI troups should be able to resupply from.	*/
ai_resupply_sources = [
	"B_Truck_01_ammo_F",
	"B_T_Truck_01_ammo_F",
	"B_Slingload_01_Ammo_F",
	"B_APC_Tracked_01_CRV_F",
	"B_T_APC_Tracked_01_CRV_F",
	"rhsusf_M977A4_AMMO_usarmy_d",
	"rhsusf_M977A4_AMMO_usarmy_wd",
	"rhsusf_M977A4_AMMO_BKIT_usarmy_d",
	"rhsusf_M977A4_AMMO_BKIT_usarmy_wd",
	"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d",
	"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd"
];

// Everything that can resupply other vehicles.
vehicle_repair_sources = [
	"C_Offroad_01_repair_F",
	"B_Truck_01_Repair_F",
	"B_T_Truck_01_Repair_F",
	"B_Slingload_01_Repair_F",
	"B_APC_Tracked_01_CRV_F",
	"B_T_APC_Tracked_01_CRV_F",
	"rhsusf_M977A4_REPAIR_usarmy_d",
	"rhsusf_M977A4_REPAIR_usarmy_wd",
	"rhsusf_M977A4_REPAIR_BKIT_usarmy_d",
	"rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",
	"rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d",
	"rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd"
];

vehicle_rearm_sources = [
	"B_Truck_01_ammo_F",
	"B_T_Truck_01_ammo_F",
	"B_Slingload_01_Ammo_F",
	"B_APC_Tracked_01_CRV_F",
	"B_T_APC_Tracked_01_CRV_F",
	"rhsusf_M977A4_AMMO_usarmy_d",
	"rhsusf_M977A4_AMMO_usarmy_wd",
	"rhsusf_M977A4_AMMO_BKIT_usarmy_d",
	"rhsusf_M977A4_AMMO_BKIT_usarmy_wd",
	"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d",
	"rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd"
];

vehicle_refuel_sources = [
	"C_Van_01_fuel_F",
	"C_Truck_02_fuel_F",
	"B_Truck_01_fuel_F",
	"B_T_Truck_01_fuel_F",
	"B_Slingload_01_Fuel_F",
	"B_APC_Tracked_01_CRV_F",
	"B_T_APC_Tracked_01_CRV_F",
	"rhsusf_M978A4_usarmy_d",
	"rhsusf_M978A4_usarmy_wd",
	"rhsusf_M978A4_BKIT_usarmy_d",
	"rhsusf_M978A4_BKIT_usarmy_wd"
];

// Classnames of boats, so they can be built on water.
boats_names = [
	"B_Boat_Transport_01_F",
	"B_Boat_Armed_01_minigun_F",
	"B_T_Boat_Transport_01_F",
	"B_T_Boat_Armed_01_minigun_F",
	"B_SDV_01_F",
	"O_Boat_Transport_01_F",
	"O_Boat_Armed_01_hmg_F",
	"O_T_Boat_Transport_01_F",
	"O_T_Boat_Armed_01_hmg_F",
	"rhsusf_mkvsoc"
];

// Large storage area placement position offsets.
KP_liberation_large_storage_positions = [
	[-5.59961,3.60938,0.6],
	[-3.99902,3.60938,0.6],
	[-2.39941,3.60938,0.6],
	[-0.799805,3.60938,0.6],
	[0.800781,3.60938,0.6],
	[2.40039,3.60938,0.6],
	[4.00098,3.60938,0.6],
	[5.60059,3.60938,0.6],
	[-5.59961,1.80859,0.6],
	[-3.99902,1.80859,0.6],
	[-2.39941,1.80859,0.6],
	[-0.799805,1.80859,0.6],
	[0.800781,1.80859,0.6],
	[2.40039,1.80859,0.6],
	[4.00098,1.80859,0.6],
	[5.60059,1.80859,0.6],
	[-5.59961,0.00976563,0.6],
	[-3.99902,0.00976563,0.6],
	[-2.39941,0.00976563,0.6],
	[-0.799805,0.00976563,0.6],
	[0.800781,0.00976563,0.6],
	[2.40039,0.00976563,0.6],
	[4.00098,0.00976563,0.6],
	[5.60059,0.00976563,0.6],
	[-5.59961,-1.79102,0.6],
	[-3.99902,-1.79102,0.6],
	[-2.39941,-1.79102,0.6],
	[-0.799805,-1.79102,0.6],
	[0.800781,-1.79102,0.6],
	[2.40039,-1.79102,0.6],
	[4.00098,-1.79102,0.6],
	[5.60059,-1.79102,0.6],
	[-5.59961,-3.58984,0.6],
	[-3.99902,-3.58984,0.6],
	[-2.39941,-3.58984,0.6],
	[-0.799805,-3.58984,0.6],
	[0.800781,-3.58984,0.6],
	[2.40039,-3.58984,0.6],
	[4.00098,-3.58984,0.6],
	[5.60059,-3.58984,0.6]
];

// Small storage area placement position offsets.
KP_liberation_small_storage_positions = [
	[-2.34961,1.80078,0.6],
	[-0.75,1.80078,0.6],
	[0.850586,1.80078,0.6],
	[2.4502,1.80078,0.6],
	[-2.34961,0,0.6],
	[-0.75,0,0.6],
	[0.850586,0,0.6],
	[2.4502,0,0.6],
	[-2.34961,-1.79883,0.6],
	[-0.75,-1.79883,0.6],
	[0.850586,-1.79883,0.6],
	[2.4502,-1.79883,0.6]
];

// DO NOT CHANGE (unless you know what you are doing).
GRLIB_endgame = 0;
if ( GRLIB_blufor_cap > 100 ) then { GRLIB_blufor_cap = 100 };
GRLIB_offload_diag = false;

KP_liberation_production_interval = ceil KP_liberation_production_interval;

if (KP_liberation_debug) then {private _text = format ["[KP LIBERATION] [DEBUG] config loaded for: %1", debug_source];_text remoteExec ["diag_log",2];};
