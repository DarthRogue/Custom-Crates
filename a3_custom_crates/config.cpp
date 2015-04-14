class CfgPatches {
	class A3_custom_crates {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
	};
};

class CfgFunctions {
	class A3CC {
		class A3CCustomCrates {
			file = "x\addons\a3_custom_crates\init";
			class init {
				preInit = 1;
			};
		};
	};
};