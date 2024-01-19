/*
 * Description: This file contains vheicle types and unit types for most units spawned in the mission.
 * "Random array" (used below) means that array will be used to spawn units, and that chance is 1/n that each element will be spawned on each spawn. The array can contain 
 * many elements of the same type, so the example array ["Offroad_DSHKM_INS", "Pickup_PK_INS", "Pickup_PK_INS"] will spawn an Offroad with 1/3 probability, and a 
 * Pickup with 2/3 probability.
 *
 * Except for the classes specified in this file, classes are specified in the following files: CreateSearchChopper.sqf, EscapeSurprises (RUSSIANSEARCHCHOPPER) 
 * and RunExtraction.sqf, all in folder Scripts\Escape\.
 */

private ["_enemyFrequency"];

_enemyFrequency = _this select 0;

// Random array. Start position guard types.
drn_arr_Escape_StartPositionGuardTypes = ["TK_Soldier_Engineer_EP1", "TK_Soldier_AR_EP1", "TK_Soldier_EP1", "TK_Soldier_B_EP1", "TK_Soldier_Medic_EP1", "TK_Soldier_GL_EP1","TK_Soldier_Medic_EP1"];

// Inner fence guard's secondary weapon (and corresponding magazine type).
drn_var_Escape_InnerFenceGuardSecondaryWeapon = "revolver_gold_EP1";
drn_var_Escape_InnerFenceGuardSecondaryWeaponMagazine = "6Rnd_45ACP";

// Random array. Civilian vehicle classes for ambient traffic. (Can also be set to a faction name).
drn_arr_Escape_MilitaryTraffic_CivilianVehicleClasses = ["Ikarus_TK_CIV_EP1","Lada1_TK_CIV_EP1","Lada2_TK_CIV_EP1","LandRover_TK_CIV_EP1","TT650_TK_CIV_EP1","Old_bike_TK_CIV_EP1","Old_moto_TK_Civ_EP1","hilux1_civil_3_open_EP1","S1203_TK_CIV_EP1","SUV_TK_CIV_EP1","UAZ_Unarmed_TK_CIV_EP1","Ural_TK_CIV_EP1","V3S_Open_TK_CIV_EP1","Volha_1_TK_CIV_EP1","Volha_2_TK_CIV_EP1","VolhaLimo_TK_CIV_EP1"];

// Random arrays. Enemy vehicle classes for ambient traffic. (Can also be set to a faction name).
// Variable _enemyFrequency applies to server parameter, and can be one of the values 1 (Few), 2 (Some) or 3 (A lot).
switch (_enemyFrequency) do {
    case 1: {
        drn_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = ["V3S_Open_TK_EP1","V3S_TK_EP1","Ural_ZU23_TK_EP1","UAZ_MG_TK_EP1","UAZ_AGS30_TK_EP1","UAZ_Unarmed_TK_EP1","SUV_TK_EP1","TT650_TK_EP1","LandRover_SPG9_TK_EP1","LandRover_MG_TK_EP1","GRAD_TK_EP1","V3S_Open_TK_EP1","V3S_TK_EP1","Ural_ZU23_TK_EP1","UAZ_MG_TK_EP1","UAZ_AGS30_TK_EP1","UAZ_Unarmed_TK_EP1","SUV_TK_EP1","TT650_TK_EP1","LandRover_SPG9_TK_EP1","LandRover_MG_TK_EP1","UAZ_MG_TK_EP1","UAZ_AGS30_TK_EP1","UAZ_Unarmed_TK_EP1","SUV_TK_EP1","TT650_TK_EP1","LandRover_SPG9_TK_EP1","LandRover_MG_TK_EP1","GRAD_TK_EP1","MAZ_543_SCUD_TK_EP1","ZSU_TK_EP1","T72_TK_EP1","T55_TK_EP1","T34_TK_EP1","M113_TK_EP1","BTR60_TK_EP1","BRDM2_ATGM_TK_EP1","BRDM2_TK_EP1","BMP2_HQ_TK_EP1","BMP2_TK_EP1","M113Ambul_TK_EP1","UralSupply_TK_EP1","UralSalvage_TK_EP1","UralReammo_TK_EP1","UralRefuel_TK_EP1","UralRepair_TK_EP1","UralReammo_TK_EP1","UralRefuel_TK_EP1","UralRepair_TK_EP1"];   
   };
    case 2: {
     drn_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = ["V3S_Open_TK_EP1","V3S_TK_EP1","Ural_ZU23_TK_EP1","UAZ_MG_TK_EP1","UAZ_AGS30_TK_EP1","UAZ_Unarmed_TK_EP1","SUV_TK_EP1","TT650_TK_EP1","LandRover_SPG9_TK_EP1","LandRover_MG_TK_EP1","GRAD_TK_EP1","V3S_Open_TK_EP1","V3S_TK_EP1","Ural_ZU23_TK_EP1","UAZ_MG_TK_EP1","UAZ_AGS30_TK_EP1","UAZ_Unarmed_TK_EP1","SUV_TK_EP1","TT650_TK_EP1","LandRover_SPG9_TK_EP1","LandRover_MG_TK_EP1","UAZ_MG_TK_EP1","UAZ_AGS30_TK_EP1","UAZ_Unarmed_TK_EP1","SUV_TK_EP1","TT650_TK_EP1","LandRover_SPG9_TK_EP1","LandRover_MG_TK_EP1","GRAD_TK_EP1","MAZ_543_SCUD_TK_EP1","ZSU_TK_EP1","T72_TK_EP1","T55_TK_EP1","T34_TK_EP1","M113_TK_EP1","BTR60_TK_EP1","BRDM2_ATGM_TK_EP1","BRDM2_TK_EP1","BMP2_HQ_TK_EP1","BMP2_TK_EP1","M113Ambul_TK_EP1","UralSupply_TK_EP1","UralSalvage_TK_EP1","UralReammo_TK_EP1","UralRefuel_TK_EP1","UralRepair_TK_EP1"];   
    };
    default {
       drn_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = ["V3S_Open_TK_EP1","V3S_TK_EP1","Ural_ZU23_TK_EP1","UAZ_MG_TK_EP1","UAZ_AGS30_TK_EP1","UAZ_Unarmed_TK_EP1","SUV_TK_EP1","TT650_TK_EP1","LandRover_SPG9_TK_EP1","LandRover_MG_TK_EP1","GRAD_TK_EP1","V3S_Open_TK_EP1","V3S_TK_EP1","Ural_ZU23_TK_EP1","UAZ_MG_TK_EP1","UAZ_AGS30_TK_EP1","UAZ_Unarmed_TK_EP1","SUV_TK_EP1","TT650_TK_EP1","LandRover_SPG9_TK_EP1","LandRover_MG_TK_EP1","UAZ_MG_TK_EP1","UAZ_AGS30_TK_EP1","UAZ_Unarmed_TK_EP1","SUV_TK_EP1","TT650_TK_EP1","LandRover_SPG9_TK_EP1","LandRover_MG_TK_EP1","GRAD_TK_EP1","MAZ_543_SCUD_TK_EP1","ZSU_TK_EP1","T72_TK_EP1","T55_TK_EP1","T34_TK_EP1","M113_TK_EP1","BTR60_TK_EP1","BRDM2_ATGM_TK_EP1","BRDM2_TK_EP1","BMP2_HQ_TK_EP1","BMP2_TK_EP1","M113Ambul_TK_EP1","UralSupply_TK_EP1","UralSalvage_TK_EP1","UralReammo_TK_EP1","UralRefuel_TK_EP1","UralRepair_TK_EP1"];   
    };
};

// Random array. General infantry types. E.g. village patrols, ambient infantry, ammo depot guards, communication center guards, etc.
drn_arr_Escape_InfantryTypes = ["TK_Soldier_AA_EP1","TK_Soldier_AAT_EP1","TK_Soldier_AMG_EP1","TK_Soldier_HAT_EP1","TK_Soldier_AR_EP1","TK_Commander_EP1","TK_Soldier_Engineer_EP1","TK_Soldier_GL_EP1","TK_Soldier_MG_EP1","TK_Soldier_Medic_EP1","TK_Soldier_Officer_EP1","TK_Soldier_EP1","TK_Soldier_B_EP1","TK_Soldier_LAT_EP1","TK_Soldier_AT_EP1","TK_Soldier_Sniper_EP1","TK_Soldier_SniperH_EP1","TK_Soldier_Sniper_Night_EP1","TK_Soldier_Night_1_EP1","TK_Soldier_Night_2_EP1","TK_Soldier_Spotter_EP1","TK_Soldier_SL_EP1","TK_Special_Forces_MG_EP1","TK_Special_Forces_EP1","TK_Special_Forces_TL_EP1"];

// Random array. A roadblock has a manned vehicle. This array contains possible manned vehicles (can be of any kind, like cars, armored and statics).
drn_arr_Escape_RoadBlock_MannedVehicleTypes = ["BMP2_TK_EP1","BRDM2_TK_EP1","BRDM2_ATGM_TK_EP1","M113_TK_EP1","T34_TK_EP1","LandRover_MG_TK_EP1","LandRover_SPG9_TK_EP1","UAZ_MG_TK_EP1","D30_TK_EP1","KORD_high_TK_EP1","SearchLight_TK_EP1","ZU23_TK_EP1","SPG9_TK_INS_EP1","Metis_TK_EP1","AGS_TK_EP1"];

// Random array. Vehicle classes (preferrably trucks) transporting enemy reinforcements.
drn_arr_Escape_ReinforcementTruck_vehicleClasses = ["V3S_TK_EP1", "V3S_Open_TK_EP1"];
// Total cargo for reinforcement trucks. Each element corresponds to a vehicle (array element) in array drn_arr_Escape_ReinforcementTruck_vehicleClasses above.
drn_arr_Escape_ReinforcementTruck_vehicleClassesMaxCargo = [14, 14];

// Random array. Motorized search groups are sometimes sent to look for you. This array contains possible class definitions for the vehicles.
drn_arr_Escape_MotorizedSearchGroup_vehicleClasses = ["BMP2_TK_EP1", "BRDM2_TK_EP1", "BTR60_TK_EP1", "M113_TK_EP1"];
// Total cargo motorized search group vehicle. Each element corresponds to a vehicle (array element) in array drn_arr_Escape_MotorizedSearchGroup_vehicleClasses above.
drn_arr_Escape_MotorizedSearchGroup_vehicleClassesMaxCargo = [5, 2, 5, 5];

// A communication center is guarded by vehicles depending on variable _enemyFrequency. 1 = a random light armor. 2 = a random heavy armor. 3 = a random 
// light *and* a random heavy armor.

// Random array. Light armored vehicles guarding the communication centers.
drn_arr_ComCenDefence_lightArmorClasses = ["BMP2_TK_EP1", "BRDM2_TK_EP1", "T34_TK_EP1", "UAZ_MG_TK_EP1", "UAZ_AGS30_TK_EP1","BTR60_TK_EP1"];
// Random array. Heavy armored vehicles guarding the communication centers.
drn_arr_ComCenDefence_heavyArmorClasses = ["ZSU_TK_EP1", "T72_TK_EP1", "T55_TK_EP1"];

// Random array. An ammo depot contains one static weapon of the followin types:
drn_arr_Escape_AmmoDepot_StaticWeaponClasses = ["KORD_high_TK_EP1", "AGS_TK_EP1", "SearchLight_TK_EP1"];
// An ammo depot have one parked and empty vehicle of the following possible types.
drn_arr_Escape_AmmoDepot_ParkedVehicleClasses = ["UAZ_Unarmed_TK_EP1", "SUV_TK_EP1", "UAZ_MG_TK_EP1", "LandRover_MG_TK_EP1", "TT650_TK_EP1","LandRover_SPG9_TK_EP1"];
// Ammo classes guaranteed to be in ammo depots
drn_arr_AmmoClassAlwaysInAmmoDepots = ["TKBasicWeapons_EP1","TKLaunchers_EP1","TK_ALICE_Pack_EP1","TK_ALICE_Pack_EP1","TKOrdnanceBox_EP1"];
// Ammo classes maybe appearing at ammo depots (40% chance each)
drn_arr_AmmoClassMaybeInAmmoDepots = ["TKBasicAmmunitionBox_EP1", "TKBasicWeapons_EP1", "TKLaunchers_EP1", "TKOrdnanceBox_EP1","TK_ALICE_Pack_Explosives_EP1","TKA_Assault_Pack_Ammo_EP1","TKSpecialWeapons_EP1","TKVehicleBox_EP1"];


// A communication center contains two static weapons (in two corners of the communication center).
// Random array. Possible static weapon types for communication centers.
drn_arr_ComCenStaticWeapons = ["SearchLight_TK_EP1","KORD_high_TK_EP1","KORD_high_TK_EP1"];
// A communication center have two parked and empty vehicles of the following possible types.
drn_arr_ComCenParkedVehicles = ["TT650_TK_EP1", "LandRover_MG_TK_EP1", "LandRover_SPG9_TK_EP1", "UAZ_Unarmed_TK_EP1", "UAZ_AGS30_TK_EP1", "UAZ_MG_TK_EP1", "UAZ_Unarmed_TK_EP1", "UAZ_Unarmed_TK_EP1", "UAZ_Unarmed_TK_EP1"];

// Random array. Enemies sometimes use civilian vehicles in their unconventional search for players. The following car types will be used.
drn_arr_Escape_EnemyCivilianCarTypes = ["Ikarus_TK_CIV_EP1","Lada1_TK_CIV_EP1","Lada2_TK_CIV_EP1","LandRover_TK_CIV_EP1","TT650_TK_CIV_EP1","Old_bike_TK_CIV_EP1","Old_moto_TK_Civ_EP1","hilux1_civil_3_open_EP1","S1203_TK_CIV_EP1","SUV_TK_CIV_EP1","UAZ_Unarmed_TK_CIV_EP1","Ural_TK_CIV_EP1","V3S_Open_TK_CIV_EP1","Volha_1_TK_CIV_EP1","Volha_2_TK_CIV_EP1","VolhaLimo_TK_CIV_EP1"];


drn_arr_Escape_Weapons = [];
_wc=0;
drn_arr_Escape_Weapons set[_wc,["AKS_GOLD",["30Rnd_762x39_AK47"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["AK_107_GL_kobra",["30Rnd_545x39_AK",["1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","FlareWhite_GP25", "FlareGreen_GP25", "FlareRed_GP25", "FlareYellow_GP25", "1Rnd_Smoke_GP25", "1Rnd_SmokeRed_GP25", "1Rnd_SmokeGreen_GP25", "1Rnd_SmokeYellow_GP25"]]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["Bizon",["64Rnd_9x19_Bizon"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["AK_107_GL_pso",["30Rnd_545x39_AK"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["bizon_silenced",["64Rnd_9x19_SD_Bizon"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["Saiga12K",["8Rnd_B_Saiga12_74Slug"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["VSS_Vintorez",["20Rnd_9x39_SP5_VSS"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["SVD_CAMO",["10Rnd_762x54_SVD"]]];
_wc=_wc+1;

//drn_arr_Escape_Weapons set[_wc,["AKS_74_GOSHAWK",["30Rnd_545x39_AK"]]];
//_wc=_wc+1;

drn_arr_Escape_Weapons set[_wc,["AK_74_GL_kobra",["30Rnd_545x39_AK",["1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","FlareWhite_GP25", "FlareGreen_GP25", "FlareRed_GP25", "FlareYellow_GP25", "1Rnd_Smoke_GP25", "1Rnd_SmokeRed_GP25", "1Rnd_SmokeGreen_GP25", "1Rnd_SmokeYellow_GP25"]]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["AK_74_GL",["30Rnd_545x39_AK",["1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_HE_GP25","FlareWhite_GP25", "FlareGreen_GP25", "FlareRed_GP25", "FlareYellow_GP25", "1Rnd_Smoke_GP25", "1Rnd_SmokeRed_GP25", "1Rnd_SmokeGreen_GP25", "1Rnd_SmokeYellow_GP25"]]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["AK_74",["30Rnd_545x39_AK"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["SVD_NSPU_EP1",["10Rnd_762x54_SVD"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["AKS_74_NSPU",["30Rnd_545x39_AK"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["PK",["100Rnd_762x54_PK"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["Pecheneg",["100Rnd_762x54_PK"]]];

_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["KSVK",["5Rnd_127x108_KSVK"]]];


_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["SVD_des_EP1",["10Rnd_762x54_SVD"]]];


_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["LeeEnfield",["10x_303"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["M14_EP1",["20Rnd_762x51_DMR"]]];



drn_arr_Escape_Pistols = [];
_wc=0;
drn_arr_Escape_Pistols set[_wc,["MakarovSD","8Rnd_9x18_MakarovSD"]];
_wc=_wc+1;
drn_arr_Escape_Pistols set[_wc,["revolver_EP1","6Rnd_45ACP"]];
_wc=_wc+1;
drn_arr_Escape_Pistols set[_wc,["revolver_gold_EP1","6Rnd_45ACP"]];
_wc=_wc+1;
drn_arr_Escape_Pistols set[_wc,["Sa61_EP1","20Rnd_B_765x17_Ball"]];
_wc=_wc+1;
drn_arr_Escape_Pistols set[_wc,["Makarov","8Rnd_9x18_Makarov"]];
