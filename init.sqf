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
	[] execVM "briefing.sqf";

	player addMPEventHandler [
        "MPkilled",
        {
            [Mission_fnc_setTextures, [], 10] call CBA_fnc_waitAndExecute;
        }
    ];
	[Mission_fnc_setTextures, [], 10] call CBA_fnc_waitAndExecute;
};

if (isServer) then {
	[] call compile preprocessFileLineNumbers "triggerInitialRespawnAI.sqf";
};
