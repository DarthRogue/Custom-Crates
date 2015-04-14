//Random Loot Crates by Darth_Rogue & Chisel (tdwhite)  
//HUGE thanks to deadeye & Robio for helping work out the last bugs!
//fn_random_crateLoot.sqf
//To be ran server side via addon PBO


//*****************************LOOT LISTS************************

//Uniforms
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
_loot_uniforms = ["U_O_CombatUniform_ocamo", "U_O_GhillieSuit", "U_O_PilotCoveralls", "U_O_Wetsuit", "U_OG_Guerilla1_1", "U_OG_Guerilla2_1", "U_OG_Guerilla2_3", "U_OG_Guerilla3_1", "U_OG_Guerilla3_2", "U_OG_leader", "U_C_Poloshirt_stripped", "U_C_Poloshirt_blue", "U_C_Poloshirt_burgundy", "U_C_Poloshirt_tricolour", "U_C_Poloshirt_salmon", "U_C_Poloshirt_redwhite", "U_C_Poor_1", "U_C_WorkerCoveralls", "U_C_Journalist", "U_C_Scientist", "U_OrestesBody", "U_Wetsuit_uniform", "U_Wetsuit_White", "U_Wetsuit_Blue", "U_Wetsuit_Purp", "U_Wetsuit_Camo", "U_CamoRed_uniform", "U_CamoBrn_uniform", "U_CamoBlue_uniform", "U_Camo_uniform", "U_ghillie1_uniform", "U_ghillie2_uniform", "U_ghillie3_uniform"];

//Weapons
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
_loot_pistols = [["hgun_ACPC2_F","9Rnd_45ACP_Mag"],["hgun_Rook40_F","16Rnd_9x21_Mag"],["hgun_P07_F","16Rnd_9x21_Mag"],["hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag"],["hgun_Pistol_heavy_02_F","6Rnd_45ACP_Cylinder"],["ruger_pistol_epoch","10rnd_22X44_magazine"],["1911_pistol_epoch","9Rnd_45ACP_Mag"]] call BIS_fnc_selectRandom;
_loot_rifles = [["arifle_Katiba_F","30Rnd_65x39_caseless_green"],["arifle_Katiba_C_F","30Rnd_65x39_caseless_green"],["arifle_Katiba_GL_F","30Rnd_65x39_caseless_green"],["arifle_MXC_F","30Rnd_65x39_caseless_mag"],["arifle_MX_F","30Rnd_65x39_caseless_mag"],["arifle_MX_GL_F","30Rnd_65x39_caseless_mag"],["arifle_MXM_F","30Rnd_65x39_caseless_mag"],["arifle_SDAR_F","20Rnd_556x45_UW_mag"],[ "arifle_TRG21_F","30Rnd_556x45_Stanag_Tracer_Red"],["arifle_TRG20_F","30Rnd_556x45_Stanag_Tracer_Red"],["arifle_TRG21_GL_F","30Rnd_556x45_Stanag_Tracer_Red"],["arifle_Mk20_F","30Rnd_556x45_Stanag_Tracer_Green"],["arifle_Mk20C_F","30Rnd_556x45_Stanag_Tracer_Green"],["arifle_Mk20_GL_F","30Rnd_556x45_Stanag_Tracer_Green"],["arifle_Mk20_plain_F","30Rnd_556x45_Stanag_Tracer_Yellow"],["arifle_Mk20C_plain_F","30Rnd_556x45_Stanag_Tracer_Yellow"],["arifle_Mk20_GL_plain_F","30Rnd_556x45_Stanag_Tracer_Yellow"],["SMG_01_F","30Rnd_45ACP_Mag_SMG_01_tracer_green"],["SMG_02_F","30Rnd_9x21_Mag"],["hgun_PDW2000_F","30Rnd_9x21_Mag"],["arifle_MXM_Black_F","30Rnd_65x39_caseless_mag_Tracer"],["arifle_MX_GL_Black_F","30Rnd_65x39_caseless_mag_Tracer"],["arifle_MX_Black_F","30Rnd_65x39_caseless_mag"],["arifle_MXC_Black_F","30Rnd_65x39_caseless_mag"],["Rollins_F","5Rnd_rollins_mag"],["AKM_EPOCH","30Rnd_762x39_Mag"],["m4a3_EPOCH","RifleAmmo_30Rnd_556x45_Stanag"],["m16_EPOCH","RifleAmmo_30Rnd_556x45_Stanag"],["m16Red_EPOCH","RifleAmmo_30Rnd_556x45_Stanag"]] call BIS_fnc_selectRandom;
_loot_LMGs = [["LMG_Mk200_F","200Rnd_65x39_cased_Box"],["arifle_MX_SW_F","100Rnd_65x39_caseless_mag"],["LMG_Zafir_F","150Rnd_762x51_Box"],["arifle_MX_SW_Black_F","100Rnd_65x39_caseless_mag"],["m249_EPOCH","200Rnd_556x45_M249"],["m249Tan_EPOCH","200Rnd_556x45_M249"]] call BIS_fnc_selectRandom;
_loot_snipers = [["srifle_EBR_F","20Rnd_762x51_Mag"],["srifle_GM6_F","5Rnd_127x108_Mag"],["srifle_LRR_F","7Rnd_408_Mag"],["srifle_DMR_01_F","10Rnd_762x51_Mag"],["M14_EPOCH","20Rnd_762x51_Mag"],["M14Grn_EPOCH","20Rnd_762x51_Mag"],["m107_EPOCH","5Rnd_127x108_Mag"],["m107Tan_EPOCH","5Rnd_127x108_Mag"],["SR25_EPOCH","20Rnd_762x51_Mag"]] call BIS_fnc_selectRandom;

//Silencers
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
_loot_silencers = ["muzzle_sr25S_epoch","muzzle_snds_H","muzzle_snds_M","muzzle_snds_L","muzzle_snds_B","muzzle_snds_H_MG","muzzle_snds_acp"];

//Optics
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
_loot_optics = ["optic_NVS","optic_tws","optic_tws_mg","optic_SOS","optic_LRPS","optic_DMS","optic_Arco","optic_Hamr","Elcan_epoch","Elcan_reflex_epoch","optic_MRCO","optic_Holosight","optic_Holosight_smg","optic_Aco","optic_ACO_grn","optic_Aco_smg","optic_ACO_grn_smg","optic_Yorris","optic_MRD"];

//Backpacks
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
_loot_backpacks = ["B_AssaultPack_cbr", "B_AssaultPack_dgtl", "B_AssaultPack_khk", "B_AssaultPack_mcamo", "B_AssaultPack_ocamo", "B_AssaultPack_rgr", "B_AssaultPack_sgg", "B_Carryall_cbr", "B_Carryall_khk", "B_Carryall_mcamo", "B_Carryall_ocamo", "B_Carryall_oli", "B_Carryall_oucamo", "B_FieldPack_blk", "B_FieldPack_cbr", "B_FieldPack_khk", "B_FieldPack_ocamo", "B_FieldPack_oli", "B_FieldPack_oucamo", "B_Kitbag_cbr", "B_Kitbag_mcamo", "B_Kitbag_rgr", "B_Kitbag_sgg", "B_Parachute", "B_TacticalPack_blk", "B_TacticalPack_mcamo", "B_TacticalPack_ocamo", "B_TacticalPack_oli", "B_TacticalPack_rgr", "smallbackpack_red_epoch", "smallbackpack_green_epoch", "smallbackpack_teal_epoch", "smallbackpack_pink_epoch"];

//Vests
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
_loot_vests = ["V_1_EPOCH", "V_2_EPOCH", "V_3_EPOCH", "V_4_EPOCH", "V_5_EPOCH", "V_6_EPOCH", "V_7_EPOCH", "V_8_EPOCH", "V_9_EPOCH", "V_10_EPOCH", "V_11_EPOCH", "V_12_EPOCH", "V_13_EPOCH", "V_14_EPOCH", "V_15_EPOCH", "V_16_EPOCH", "V_17_EPOCH", "V_18_EPOCH", "V_19_EPOCH", "V_20_EPOCH", "V_21_EPOCH", "V_22_EPOCH", "V_23_EPOCH", "V_24_EPOCH", "V_25_EPOCH", "V_26_EPOCH", "V_27_EPOCH", "V_28_EPOCH", "V_29_EPOCH", "V_30_EPOCH", "V_31_EPOCH", "V_32_EPOCH", "V_33_EPOCH", "V_34_EPOCH", "V_35_EPOCH", "V_36_EPOCH", "V_37_EPOCH", "V_38_EPOCH", "V_39_EPOCH", "V_40_EPOCH"];

//Head Gear
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
_loot_headgear = ["H_1_EPOCH","H_2_EPOCH","H_3_EPOCH","H_4_EPOCH","H_5_EPOCH","H_6_EPOCH","H_7_EPOCH","H_8_EPOCH","H_9_EPOCH","H_10_EPOCH","H_11_EPOCH","H_12_EPOCH","H_13_EPOCH","H_14_EPOCH","H_15_EPOCH","H_16_EPOCH","H_17_EPOCH","H_18_EPOCH","H_19_EPOCH","H_20_EPOCH","H_21_EPOCH","H_22_EPOCH","H_23_EPOCH","H_24_EPOCH","H_25_EPOCH","H_26_EPOCH","H_27_EPOCH","H_28_EPOCH","H_29_EPOCH","H_30_EPOCH","H_31_EPOCH","H_32_EPOCH","H_33_EPOCH","H_34_EPOCH","H_35_EPOCH","H_36_EPOCH","H_37_EPOCH","H_38_EPOCH","H_39_EPOCH","H_40_EPOCH","H_41_EPOCH","H_42_EPOCH","H_43_EPOCH","H_44_EPOCH","H_45_EPOCH","H_46_EPOCH","H_47_EPOCH","H_48_EPOCH","H_49_EPOCH","H_50_EPOCH","H_51_EPOCH","H_52_EPOCH","H_53_EPOCH","H_54_EPOCH","H_55_EPOCH","H_56_EPOCH","H_57_EPOCH","H_58_EPOCH","H_59_EPOCH","H_60_EPOCH","H_61_EPOCH","H_62_EPOCH","H_63_EPOCH","H_64_EPOCH","H_65_EPOCH","H_66_EPOCH","H_67_EPOCH","H_68_EPOCH","H_69_EPOCH","H_70_EPOCH","H_71_EPOCH","H_72_EPOCH","H_73_EPOCH","H_74_EPOCH","H_75_EPOCH","H_76_EPOCH","H_77_EPOCH","H_78_EPOCH","H_79_EPOCH","H_80_EPOCH","H_81_EPOCH","H_82_EPOCH","H_83_EPOCH","H_84_EPOCH","H_85_EPOCH","H_86_EPOCH","H_87_EPOCH","H_88_EPOCH","H_89_EPOCH","H_90_EPOCH","H_91_EPOCH","H_92_EPOCH","H_93_EPOCH","H_94_EPOCH","H_95_EPOCH","H_96_EPOCH","H_97_EPOCH","H_98_EPOCH","H_99_EPOCH","H_100_EPOCH","H_101_EPOCH","H_102_EPOCH","H_103_EPOCH","H_104_EPOCH"];

//Food
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
_loot_food = ["FoodSnooter","FoodWalkNSons","FoodBioMeat","ItemSodaOrangeSherbet","ItemSodaPurple","ItemSodaMocha","ItemSodaBurst","ItemSodaRbull","honey_epoch","emptyjar_epoch","sardines_epoch","meatballs_epoch","scam_epoch","sweetcorn_epoch","WhiskeyNoodle","ItemCoolerE","ItemTrout","ItemSeaBass","ItemTuna"];

//Misc
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
_loot_Misc = ["PaintCanClear","PaintCanBlk","PaintCanBlu","PaintCanBrn","PaintCanGrn","PaintCanOra","PaintCanPur","PaintCanRed","PaintCanTeal","PaintCanYel","ItemDocument","ItemMixOil","emptyjar_epoch","FoodBioMeat","ItemSodaOrangeSherbet","ItemSodaPurple","ItemSodaMocha","ItemSodaBurst","ItemSodaRbull","sardines_epoch","meatballs_epoch","scam_epoch","sweetcorn_epoch","Towelette","HeatPack","ColdPack","VehicleRepair","VehicleRepairLg","CircuitParts","ItemCoolerE","ItemScraps","ItemScraps","lighter_epoch","EnergyPack","EnergyPackLg"];

//Construction
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
_loot_build = ["MortarBucket","MortarBucket","ItemCorrugated","ItemCorrugatedLg","CinderBlocks","VehicleRepairLg","VehicleRepair","CircuitParts","ItemScraps","KitShelf","KitWoodFloor","KitWoodStairs"];






_crate_1 = objNull;
 
if (true) then
{
 _this = createVehicle ["Land_PaperBox_C_EPOCH", [7093.73,12145.4,0], [], 0, "CAN_COLLIDE"];
 _crate_1 = _this;
 _this setPos [7093.73,12145.4,0];
 _this setDir 180;
 _this setVariable ["permaLoot",true];
		  
//empty crate first
 clearWeaponCargoGlobal _this;
 clearMagazineCargoGlobal _this;
 clearBackpackCargoGlobal _this;
 clearItemCargoGlobal _this;
  
  
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(10 + floor(random 2))];
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(10 + floor(random 2))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(10 + floor(random 2))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(8 + floor(random 2))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(8 + floor(random 2))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(8 + floor(random 1))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(6 + floor(random 2))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(6 + floor(random 2))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(6 + floor(random 2))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(6 + floor(random 1))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(4 + floor(random 2))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(4 + floor(random 2))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(4 + floor(random 2))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(3 + floor(random 1))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(3 + floor(random 1))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(2 + floor(random 8))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(2 + floor(random 8))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(2 + floor(random 4))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(1 + floor(random 5))]; 
 _this addMagazineCargoGlobal [(_loot_build call BIS_fnc_selectRandom),(1 + floor(random 6))]; 
 _this addWeaponCargoGlobal ["Hatchet",2];
 _this addWeaponCargoGlobal ["MeleeSledge",2];
 _this addWeaponCargoGlobal ["ChainSaw",1];
   
};

_crate_2 = objNull;
 
if (true) then
{
 _this = createVehicle ["Box_NATO_Wps_F", [7093.73,12140.4,0], [], 0, "CAN_COLLIDE"];
 _crate_2 = _this;
 _this setPos [7093.73,12140.4,0];
 _this setDir 290;
 _this setVariable ["permaLoot",true];
 
 //empty crate first
 clearWeaponCargoGlobal _this;
 clearMagazineCargoGlobal _this;
 clearBackpackCargoGlobal _this;
 clearItemCargoGlobal _this;

 _pistol = _loot_pistols select 0;
 _pmag = _loot_pistols select 1;		  
		  
 _rifle = _loot_rifles select 0;
 _rmag = _loot_rifles select 1;

 _lmg = _loot_lmgs select 0;
 _lmag = _loot_lmgs select 1;

 _sniper = _loot_snipers select 0;
 _smag = _loot_snipers select 1;
		  
 _this addWeaponCargoGlobal [_rifle,1];
 _this addMagazineCargoGlobal [_rmag, (3 + floor(random 3))];
 _this addWeaponCargoGlobal [_pistol,1];
 _this addMagazineCargoGlobal [_pmag, (3 + floor(random 3))];
 _this addWeaponCargoGlobal [_lmg,1];
 _this addMagazineCargoGlobal [_lmag, (1 + floor(random 3))];
 _this addWeaponCargoGlobal [_sniper,1];
 _this addMagazineCargoGlobal [_smag, (3 + floor(random 3))];
 _this addWeaponCargoGlobal [_rifle,1];
 _this addMagazineCargoGlobal [_rmag, (3 + floor(random 3))];
 _this addWeaponCargoGlobal [_pistol,1];
 _this addMagazineCargoGlobal [_pmag, (3 + floor(random 3))];
 _this addWeaponCargoGlobal [_lmg,1];
 _this addMagazineCargoGlobal [_lmag, (1 + floor(random 3))];
 _this addWeaponCargoGlobal [_sniper,1];
 _this addMagazineCargoGlobal [_smag, (3 + floor(random 3))];
 _this addWeaponCargoGlobal [_rifle,1];
 _this addMagazineCargoGlobal [_rmag, (3 + floor(random 3))];
 _this addWeaponCargoGlobal [_pistol,1];
 _this addMagazineCargoGlobal [_pmag, (3 + floor(random 3))];
 _this addWeaponCargoGlobal [_lmg,1];
 _this addMagazineCargoGlobal [_lmag, (1 + floor(random 3))];
 _this additemCargoGlobal [(_loot_optics call BIS_fnc_selectRandom), (2 + floor(random 1))]; 
 _this addBackpackCargoGlobal [(_loot_backpacks call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addBackpackCargoGlobal [(_loot_backpacks call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addItemCargoGlobal [(_loot_vests call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addItemCargoGlobal [(_loot_vests call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addItemCargoGlobal [(_loot_silencers call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addItemCargoGlobal [(_loot_silencers call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addItemCargoGlobal ["EpochRadio0",2];
 _this additemCargoGlobal ["NVG_EPOCH",2];
 _this additemCargoGlobal ["ItemGPS",2];
 _this addWeaponCargoGlobal ["Rangefinder",2];
 _this addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",2];
 _this addMagazineCargoGlobal ["DemoCharge_Remote_Mag",1];
 _this addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",2];
};

_crate_3 = objNull;
 
if (true) then
{
 _this = createVehicle ["Land_PaperBox_C_EPOCH", [7291.69,12044.5,0], [], 0, "CAN_COLLIDE"];
 _crate_3 = _this;
 _this setPos [7291.69,12044.5,0];
 _this setDir 154;
 _this setVariable ["permaLoot",true];
 
 //empty crate first
 clearWeaponCargoGlobal _this;
 clearMagazineCargoGlobal _this;
 clearBackpackCargoGlobal _this;
 clearItemCargoGlobal _this;
 
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(8 + floor(random 4))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(8 + floor(random 3))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(6 + floor(random 3))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(6 + floor(random 2))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(6 + floor(random 2))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(4 + floor(random 2))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(4 + floor(random 2))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(4 + floor(random 2))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(4 + floor(random 2))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(3 + floor(random 1))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(3 + floor(random 1))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(3 + floor(random 1))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(3 + floor(random 1))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(2 + floor(random 2))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(2 + floor(random 2))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(2 + floor(random 1))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(1 + floor(random 2))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(1 + floor(random 2))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addMagazineCargoGlobal [(_loot_misc call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addMagazineCargoGlobal [(_loot_food call BIS_fnc_selectRandom),(5 + floor(random 5))];
 _this addMagazineCargoGlobal [(_loot_food call BIS_fnc_selectRandom),(5 + floor(random 5))];
 _this addMagazineCargoGlobal [(_loot_food call BIS_fnc_selectRandom),(5 + floor(random 5))];
 _this addMagazineCargoGlobal [(_loot_food call BIS_fnc_selectRandom),(5 + floor(random 5))];
 _this addMagazineCargoGlobal [(_loot_food call BIS_fnc_selectRandom),(5 + floor(random 5))];
 _this addMagazineCargoGlobal [(_loot_food call BIS_fnc_selectRandom),(5 + floor(random 5))];
 _this addMagazineCargoGlobal [(_loot_food call BIS_fnc_selectRandom),(5 + floor(random 5))];
 _this addMagazineCargoGlobal [(_loot_food call BIS_fnc_selectRandom),(5 + floor(random 5))];
 _this addWeaponCargoGlobal ["MultiGun",1];
 _this addMagazineCargoGlobal ["EnergyPack",2];
 _this addMagazineCargoGlobal ["EnergyPackLg",1];
 _this addMagazineCargoGlobal ["ItemLockBox",2];
 _this addMagazineCargoGlobal ["jerrycan_epoch",2];
 _this addMagazineCargoGlobal ["ItemGoldBar10oz",2];
 _this addMagazineCargoGlobal ["ItemSilverBar",4];
 _this addMagazineCargoGlobal ["ItemKiloHemp",4];
 
};

_vehicle_4 = objNull;
 
if (true) then
{
 _this = createVehicle ["Land_PaperBox_C_EPOCH", [7295.69,12044.5,0], [], 0, "CAN_COLLIDE"];
 _crate_4 = _this;
 _this setPos [7295.69,12044.5,0];
 _this setDir 60;
 _this setVariable ["permaLoot",true];
 
 //empty crate first
 clearWeaponCargoGlobal _this;
 clearMagazineCargoGlobal _this;
 clearBackpackCargoGlobal _this;
 clearItemCargoGlobal _this;
 
 
 _this addItemCargoGlobal [(_loot_uniforms call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addItemCargoGlobal [(_loot_uniforms call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addItemCargoGlobal [(_loot_uniforms call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addItemCargoGlobal [(_loot_uniforms call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addItemCargoGlobal [(_loot_uniforms call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addItemCargoGlobal [(_loot_vests call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addItemCargoGlobal [(_loot_vests call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addItemCargoGlobal [(_loot_headgear call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addItemCargoGlobal [(_loot_headgear call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addItemCargoGlobal [(_loot_headgear call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addItemCargoGlobal [(_loot_headgear call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addBackpackCargoGlobal [(_loot_backpacks call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addBackpackCargoGlobal [(_loot_backpacks call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addBackpackCargoGlobal [(_loot_backpacks call BIS_fnc_selectRandom),(1 + floor(random 1))];
 _this addBackpackCargoGlobal [(_loot_backpacks call BIS_fnc_selectRandom),(1 + floor(random 1))];
  
};

diag_log "Static crates loaded successfully!";