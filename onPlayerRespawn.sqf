#include "\x\cba\addons\main\script_macros_mission.hpp"

_newUnit = param [0, objNull];
_oldUnit = param [1, objNull];

if (faction _newUnit == CIV) then {
    _this call fnc_OnObservingPlayerRespawn;
} else {
    _this call fnc_OnFightingPlayerRespawn;
};
