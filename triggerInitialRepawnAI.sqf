{
	if ((isPlayer _x) || (side _x == civilian)) then {
		diag_log "skipping civ and players";
	} else {
		diag_log "executing onplayerespswan for ai";
		[_x, objNull] execVM "onPlayerRespawn.sqf";
	};

} forEach allUnits;
