  VEHICLE_CLASSES = [
 	"B_Heli_Light_01_armed_F",
 	"I_Heli_light_03_F",
 	"O_Heli_Light_02_F"
 ];

VEHICLE_NAMES = {
	"Pawnee",
	"Hellcat",
	"Orca"
};

VEHICLE_CLASS_INITIAL = VEHICLE_CLASSES select (paramsArray select 0);
VEHICLE_CLASS_CHOICE = VEHICLE_CLASS_INITIAL;

if (side player != civilian) then
{
	[player] execVM "pilotKit.sqf";
};
[] execVM "briefing.sqf";
execVM "addActionChooseVehicle.sqf";

_index = player addMPEventHandler ["MPkilled",{_null = [_this select 0, _this select 1] execVM "setTexture.sqf"}];

