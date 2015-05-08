vehicleActions = [];
chooseVehicleAction = -1;

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
			[_forEachIndex, _clearVehicleActions],
			1,
			false
		]);

	} forEach VEHICLE_NAMES;
};

addActionChooseVehicle = {

	chooseVehicleAction = player addAction [
		"Choose next vehicle",
		{
			call addActionVehicles;
			player removeAction chooseVehicleAction;
		},
		nil,
		0,
		false
	];

};

call addActionChooseVehicle;
