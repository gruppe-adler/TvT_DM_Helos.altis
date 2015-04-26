private ["_actionChooseVehicle", "_addActionVehicles", "_vehicleActions"];

_vehicleActions = [];

_addActionVehicles = {
	private ["_clearVehicleActions"];

	_clearVehicleActions = {
		{
			player removeAction _x;
		} forEach _vehicleActions;
		_vehicleActions = [];
	};

	{
		_vehicleActions pushBack (player addAction [
			_x,
			{
				VEHICLE_CLASS_CHOICE = VEHICLE_CLASSES select (_this select 3);
				call _clearVehicleActions;
			},
			_forEachIndex
		]);

	} forEach VEHICLE_NAMES;
};

_actionChooseVehicle = player addAction ["Choose next vehicle", {
	player removeAction _actionChooseVehicle;
	call _addActionVehicles;
}];