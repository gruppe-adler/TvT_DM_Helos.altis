_newUnit = _this select 0;
_oldUnit = _this select 1;

_position = getPos _newUnit;

if (!(isNull _oldUnit)) then { // initial spawn: player position + get off the ground
	_position = getPos _oldUnit;
	_position set [2, ((_position select 2) + 50)];
	diag_log name _oldUnit;
};

_heli = createVehicle [VEHICLE_CLASS_CHOICE, _position, [], 0, "FLY"];
_index = _newUnit addMPEventHandler [
	"MPkilled",
	{
		_null = [_this select 0, _this select 1] execVM "setTexture.sqf"
	}
];

[_newUnit] execVM "pilotKit.sqf";
_newUnit moveInDriver _heli;

if (!(isNull _oldUnit)) then {
	deleteVehicle _oldUnit;
};

if (!isDedicated) then {
	execVM "addActionChooseVehicle.sqf";
};