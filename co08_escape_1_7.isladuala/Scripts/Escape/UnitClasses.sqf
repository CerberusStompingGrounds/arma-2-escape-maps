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
drn_arr_Escape_StartPositionGuardTypes = ["MOL_Soldier_Medic", "MOL_Soldier_Rifleman", "MOL_Soldier_GL", "MOL_Soldier_AR", "MOL_Soldier_MG", "MOL_Soldier_Engineer","MOL_Soldier_Officer"];

// Inner fence guard's secondary weapon (and corresponding magazine type).
drn_var_Escape_InnerFenceGuardSecondaryWeapon = "Makarov";
drn_var_Escape_InnerFenceGuardSecondaryWeaponMagazine = "8Rnd_9x18_Makarov";

// Random array. Civilian vehicle classes for ambient traffic. (Can also be set to a faction name).
drn_arr_Escape_MilitaryTraffic_CivilianVehicleClasses = ["SkodaBlue", "SkodaGreen", "SkodaRed", "Skoda", "VWGolf", "TT650_Civ", "MMT_Civ", "hilux1_civil_2_covered", "hilux1_civil_1_open", "hilux1_civil_3_open", "car_hatchback", "datsun1_civil_1_open", "datsun1_civil_2_covered", "datsun1_civil_3_open", "V3S_Civ", "car_sedan", "Tractor", "UralCivil", "UralCivil2", "Lada_base", "LadaLM", "Lada2", "Lada1"];

// Random arrays. Enemy vehicle classes for ambient traffic. (Can also be set to a faction name).
// Variable _enemyFrequency applies to server parameter, and can be one of the values 1 (Few), 2 (Some) or 3 (A lot).
switch (_enemyFrequency) do {
    case 1: {
        drn_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = ["ibr_datsun_mol","ibr_datsun_molblk", "Ural_MOL","ibr_datsun_mol","ibr_datsun_molblk", "Ural_MOL",  "Offroad_DSHKM_INS", "Pickup_PK_INS", "Ural_INS", "UralOpen_INS", "UralRefuel_INS", "BMP2_MOL", "ibr_T55", "T72_MOL", "ibr_datsun_molblk", "Offroad_DSHKM_INS", "Pickup_PK_INS", "Offroad_DSHKM_INS", "Pickup_PK_INS", "UAZ_INS", "UAZ_AGS30_INS", "UAZ_MG_INS", "UAZ_SPG9_INS", "Ural_INS", "UralOpen_INS", "Ural_ZU23_INS", "UralRefuel_INS"];
    };
    case 2: {
        drn_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = ["ibr_datsun_mol","ibr_datsun_molblk", "Ural_MOL","ibr_datsun_mol","ibr_datsun_molblk", "Ural_MOL",  "Offroad_DSHKM_INS", "Pickup_PK_INS", "Ural_INS", "UralOpen_INS", "UralRefuel_INS", "BMP2_MOL", "ibr_T55", "T72_MOL", "ibr_datsun_molblk", "Offroad_DSHKM_INS", "Pickup_PK_INS", "Offroad_DSHKM_INS", "Pickup_PK_INS", "UAZ_INS", "UAZ_AGS30_INS", "UAZ_MG_INS", "UAZ_SPG9_INS", "Ural_INS", "UralOpen_INS", "Ural_ZU23_INS", "UralRefuel_INS"];
    };
    default {
        drn_arr_Escape_MilitaryTraffic_EnemyVehicleClasses = ["ibr_datsun_mol","ibr_datsun_molblk", "Ural_MOL","ibr_datsun_mol","ibr_datsun_molblk", "Ural_MOL",  "Offroad_DSHKM_INS", "Pickup_PK_INS", "Ural_INS", "UralOpen_INS", "UralRefuel_INS", "BMP2_MOL", "ibr_T55", "T72_MOL", "ibr_datsun_molblk", "Offroad_DSHKM_INS", "Pickup_PK_INS", "Offroad_DSHKM_INS", "Pickup_PK_INS", "UAZ_INS", "UAZ_AGS30_INS", "UAZ_MG_INS", "UAZ_SPG9_INS", "Ural_INS", "UralOpen_INS", "Ural_ZU23_INS", "UralRefuel_INS"];
    };
};

// Random array. General infantry types. E.g. village patrols, ambient infantry, ammo depot guards, communication center guards, etc.
drn_arr_Escape_InfantryTypes = ["MOL_Soldier_Officer", "MOL_Soldier_Medic", "MOL_Soldier_Engineer", "MOL_Soldier_Rifleman", "MOL_Soldier_GL", "MOL_Soldier_Marksman", "MOL_Soldier_Sniper", "MOL_Soldier_Spotter", "MOL_Soldier_MG", "MOL_Soldier_AR", "MOL_Soldier_LAT", "MOL_Soldier_AT", "MOL_Soldier_HAT", "MOL_Soldier_AA", "MOL_Soldier_Commando"];

// Random array. A roadblock has a manned vehicle. This array contains possible manned vehicles (can be of any kind, like cars, armored and statics).
drn_arr_Escape_RoadBlock_MannedVehicleTypes = ["Offroad_DSHKM_INS", "Pickup_PK_INS", "ibr_datsun_mol","ibr_datsun_molblk", "ibr_datsun_mol","ibr_datsun_molblk"];

// Random array. Vehicle classes (preferrably trucks) transporting enemy reinforcements.
drn_arr_Escape_ReinforcementTruck_vehicleClasses = ["Ural_MOL"];
// Total cargo for reinforcement trucks. Each element corresponds to a vehicle (array element) in array drn_arr_Escape_ReinforcementTruck_vehicleClasses above.
drn_arr_Escape_ReinforcementTruck_vehicleClassesMaxCargo = [14];

// Random array. Motorized search groups are sometimes sent to look for you. This array contains possible class definitions for the vehicles.
drn_arr_Escape_MotorizedSearchGroup_vehicleClasses = ["BMP2_MOL"];
// Total cargo motorized search group vehicle. Each element corresponds to a vehicle (array element) in array drn_arr_Escape_MotorizedSearchGroup_vehicleClasses above.
drn_arr_Escape_MotorizedSearchGroup_vehicleClassesMaxCargo = [7];

// A communication center is guarded by vehicles depending on variable _enemyFrequency. 1 = a random light armor. 2 = a random heavy armor. 3 = a random 
// light *and* a random heavy armor.

// Random array. Light armored vehicles guarding the communication centers.
drn_arr_ComCenDefence_lightArmorClasses = ["BMP2_MOL","ibr_T55"];
// Random array. Heavy armored vehicles guarding the communication centers.
drn_arr_ComCenDefence_heavyArmorClasses = ["T72_MOL","ibr_T55"];

// Random array. An ammo depot contains one static weapon of the followin types:
drn_arr_Escape_AmmoDepot_StaticWeaponClasses = ["DSHkM_Mini_TriPod", "AGS_Ins", "DSHKM_Ins", "DSHKM_Ins"];
// An ammo depot have one parked and empty vehicle of the following possible types.
drn_arr_Escape_AmmoDepot_ParkedVehicleClasses = ["Offroad_DSHKM_INS", "Pickup_PK_INS", "UAZ_INS", "UAZ_AGS30_INS", "UAZ_MG_INS", "UAZ_SPG9_INS", "Ural_INS", "UralOpen_INS"];
// Ammo classes guaranteed to be in ammo depots
drn_arr_AmmoClassAlwaysInAmmoDepots = ["RULaunchersBox","TKG_ALICE_Pack_AmmoAK74_EP1","TK_ALICE_Pack_EP1"];
// Ammo classes maybe appearing at ammo depots (40% chance each)
drn_arr_AmmoClassMaybeInAmmoDepots = ["RUBasicAmmunitionBox", "RUVehicleBox", "RUBasicWeaponsBox", "RUSpecialWeaponsBox", "RUOrdnanceBox","TK_ALICE_Pack_Explosives_EP1","TKA_Assault_Pack_Ammo_EP1"];


// A communication center contains two static weapons (in two corners of the communication center).
// Random array. Possible static weapon types for communication centers.
drn_arr_ComCenStaticWeapons = ["DSHKM_Ins"];
// A communication center have two parked and empty vehicles of the following possible types.
drn_arr_ComCenParkedVehicles = ["TT650_Ins", "ibr_datsun_mol", "ibr_datsun_molblk"];

// Random array. Enemies sometimes use civilian vehicles in their unconventional search for players. The following car types will be used.
drn_arr_Escape_EnemyCivilianCarTypes = ["SkodaBlue", "SkodaGreen", "SkodaRed", "Skoda", "VWGolf", "MMT_Civ", "hilux1_civil_2_covered", "car_hatchback", "datsun1_civil_2_covered", "V3S_Civ", "car_sedan", "UralCivil", "UralCivil2", "Lada_base", "LadaLM", "Lada2", "Lada1"];


drn_arr_Escape_Weapons = [];
_wc=0;
drn_arr_Escape_Weapons set[_wc,["AKS_GOLD",["30Rnd_762x39_AK47"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["AK_107_GL_kobra",["30Rnd_545x39_AK"]]];
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
drn_arr_Escape_Weapons set[_wc,["Huntingrifle",["5x_22_LR_17_HMR"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["M79_EP1",["1Rnd_HE_M203"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["MP5A5",["30Rnd_9x19_MP5"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["LeeEnfield",["10x_303"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["Sa58V_EP1",["30Rnd_762x39_AK47"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["Sa58P_EP1",["30Rnd_762x39_AK47"]]];
_wc=_wc+1;

//drn_arr_Escape_Weapons set[_wc,["AKS_74_GOSHAWK",["30Rnd_545x39_AK"]]];
//_wc=_wc+1;

drn_arr_Escape_Weapons set[_wc,["AK_74_GL_kobra",["30Rnd_545x39_AK"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["SVD_NSPU_EP1",["10Rnd_762x54_SVD"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["AKS_74_NSPU",["30Rnd_545x39_AK"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["PK",["100Rnd_762x54_PK"]]];
_wc=_wc+1;
drn_arr_Escape_Weapons set[_wc,["Pecheneg",["100Rnd_762x54_PK"]]];

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

drn_arr_Escape_HeavyWep = [];
_wc=0;
drn_arr_Escape_HeavyWep set[_wc,["RPG18","RPG18"]];
_wc=_wc+1;
drn_arr_Escape_HeavyWep set[_wc,["RPG7V","PG7V"]];
_wc=_wc+1;