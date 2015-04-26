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
				_params = _this select 3;
				VEHICLE_CLASS_CHOICE = VEHICLE_CLASSES select (_params select 0);
				call (_params select 1);
			},
			[_forEachIndex, _clearVehicleActions]
		]);

	} forEach VEHICLE_NAMES;
};

_actionChooseVehicle = player addAction [
	"Choose next vehicle", {
		player removeAction (_this select 3);
		call _addActionVehicles;
	},
	_actionChooseVehicle
];
