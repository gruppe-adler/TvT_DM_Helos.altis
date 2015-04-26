_newUnit = _this select 0;
_oldUnit = _this select 1;

_heli = createVehicle [VEHICLE_CLASS_CHOICE, position _oldUnit, [], 0, "FLY"];
_index = _newUnit addMPEventHandler ["MPkilled",{_null = [_this select 0, _this select 1] execVM "setTexture.sqf"}];

[_newUnit] execVM "pilotKit.sqf";
_newUnit moveInDriver _heli;
deleteVehicle _oldUnit;