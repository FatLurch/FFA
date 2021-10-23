
class CfgPatches
 {
 	class FFA
 	{
 		units[] = {};
 		weapons[] = {};
 		requiredVersion = 0.1;
 		requiredAddons[] = {"cba_main", "ace_main"};
		version="0.1";
		author="Fat_Lurch";
 	};
 };

class CfgFunctions
{
	class fatLurch
	{
		class FFA
		{					
			class initFRIES {file = "FFA\functions\initFRIES.sqf";};
		};
	};
};
 
class Extended_InitPost_EventHandlers 
{
	class air;
	class Helicopter:air 
	{
		class Fat_Lurch_FRIES_init {init = "(_this select 0) call fatLurch_fnc_initFRIES;";};
   	};

};