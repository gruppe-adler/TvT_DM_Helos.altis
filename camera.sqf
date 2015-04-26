// this gets rid of the bug in the observers
//
// put this in init-line unit: 
// this addAction ["Start Camera","arctors_scripts\camera.sqf",[],2,false,true,"",""];

[] call BIS_fnc_CameraOld;