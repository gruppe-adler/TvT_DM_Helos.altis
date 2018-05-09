#include "\x\cba\addons\main\script_macros_mission.hpp"

_newUnit = param [0, objNull];
_oldUnit = param [1, objNull];

if (side _newUnit == civilian) then {
    _this call Mission_fnc_OnObservingPlayerRespawn;
} else {
    _this call Mission_fnc_OnFightingPlayerRespawn;
};
