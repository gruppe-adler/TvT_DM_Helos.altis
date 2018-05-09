private ["_unitfaction"];

_unitfaction = faction player;

if (_unitfaction == "BLU_F") exitwith {
    #include "f_briefing_blue.sqf"
};

if (_unitfaction == "OPF_F") exitwith {
    #include "f_briefing_red.sqf"
};

if (_unitfaction == "IND_F") exitwith {
    #include "f_briefing_green.sqf"
};

if (_unitfaction == "CIV_F") exitwith {
    #include "f_briefing_civ.sqf"
};
