private ["_addActionVehicles", "_vehicleActions", "_addActionChooseVehicle"];

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
				_params = _this select 3;
				VEHICLE_CLASS_CHOICE = VEHICLE_CLASSES select (_params select 0);
				call (_params select 1);
				call (_params select 2);
			},
			[_forEachIndex, _clearVehicleActions, _addActionChooseVehicle]
		]);

	} forEach VEHICLE_NAMES;
};

_addActionChooseVehicle = {

	_actionChooseVehicle = player addAction [
		"Choose next vehicle", {
			_params = _this select 3;
			player removeAction (_params select 0);
			call (_params select 1)
		},
		[_actionChooseVehicle, _addActionVehicles]
	];

};

call _addActionChooseVehicle;