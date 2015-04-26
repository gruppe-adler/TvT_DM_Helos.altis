vehicleActions = [];

addActionVehicles = {
	private ["_clearVehicleActions"];

	_clearVehicleActions = {
		{
			player removeAction _x;
		} forEach vehicleActions;
		vehicleActions = [];
	};

	{
		vehicleActions pushBack (player addAction [
			_x,
			{
				_params = _this select 3;
				VEHICLE_CLASS_CHOICE = VEHICLE_CLASSES select (_params select 0);
				call (_params select 1);
				call addActionChooseVehicle;
			},
			[_forEachIndex, _clearVehicleActions]
		]);

	} forEach VEHICLE_NAMES;
};

addActionChooseVehicle = {

	_actionChooseVehicle = player addAction [
		"Choose next vehicle", {
			_params = _this select 3;
			player removeAction (_params select 0);
			call addActionVehicles;
		},
		[_actionChooseVehicle, addActionVehicles]
	];

};

call addActionChooseVehicle;
