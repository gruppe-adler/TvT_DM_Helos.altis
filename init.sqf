VEHICLE_CLASSES = [
 	"B_Heli_Light_01_armed_F",
 	"I_Heli_light_03_F",
 	"O_Heli_Light_02_F"
 ];

VEHICLE_NAMES = [
	"Pawnee / AH-9",
	"Hellcat / Wildcat",
	"Orca / Kasatka"
];

VEHICLE_CLASS_INITIAL = VEHICLE_CLASSES select ("InitialVehicle" call BIS_fnc_getParamValue);
VEHICLE_CLASS_CHOICE = VEHICLE_CLASS_INITIAL;

if (!isDedicated) then {
	if (side player != civilian) then
	{
		[player] execVM "pilotKit.sqf";
	};

	[] execVM "briefing.sqf";

	_index = player addMPEventHandler [
        "MPkilled",
        {
            _null = [_this select 0, _this select 1] execVM "setTexture.sqf"
        }
    ];
	[player, objNull] execVM "setTexture.sqf";
};

if (isServer) then {
	[] call compile preprocessFileLineNumbers "triggerInitialRepawnAI.sqf";
};
