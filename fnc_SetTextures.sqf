{
    _driver = driver _x;
	if (alive _driver) then {
        _sideStr = str (side _driver);
        _colorString = [(missionConfigFile >> "VehicleColors"), _sideStr, ""] call BIS_fnc_returnConfigEntry;

        _x setObjectTexture [0, _colorString];
        _x setObjectTexture [1, _colorString];

	} else {
		deleteVehicle _x;
	};
} forEach vehicles;
