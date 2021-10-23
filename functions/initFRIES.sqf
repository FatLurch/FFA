params["_vehicle"];

if(typeOf(_vehicle) == "ACE_friesAnchorBar") exitWith {};	//For some reason the FRIES bar is defined as a helicopter. This gets rid of an annoying "not configured" error

if (isServer || isDedicated) then
{
	[_vehicle] spawn ace_fastroping_fnc_equipFRIES;
	diag_log format["FRIES added to vehicle: %1 - type: %2 by FRIES For All addon", _vehicle, typeOf(_vehicle)];
};

_vehicle addEventHandler ["Dammaged", 
{
	params ["_vehicle", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
	
	if ((damage _vehicle) > 0.95) then 
	{	
		[_vehicle] call ace_fastroping_fnc_unequipFRIES;
	};

}];

_vehicle addEventHandler ["Deleted", 
{
	params ["_vehicle"];
	[_vehicle] call ace_fastroping_fnc_unequipFRIES;
}];

