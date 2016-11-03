_newUnit = param [0, objNull];
_oldUnit = param [1, objNull];

halfWay = {
	_p1 = param [0];
	_p2 = param [1];

	[
		(((_p1 select 0) + (_p2 select 0)) / 2),
		(((_p1 select 1) + (_p2 select 1)) / 2),
		((_p1 select 2) max (_p2 select 2))
	]
};

_newPosition = getPos _newUnit;

// _center = getPos mrk_center;
_center = [4836, 21935, 400];

_desiredPosition = _newPosition;

if (!(isNull _oldUnit)) then {
	_desiredPosition = [_center, getPos _oldUnit] call halfWay;
};



[_newUnit] execVM "pilotKit.sqf";
_newUnit moveInDriver _heli;

if (!(isNull _oldUnit) && ! alive _oldUnit) then {
	deleteVehicle _oldUnit;
};

if (!isDedicated) then {
	execVM "addActionChooseVehicle.sqf";
};
