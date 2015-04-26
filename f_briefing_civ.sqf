_task1 = player createSimpleTask ["OBJ_1"];
_task1 setSimpleTaskDescription ["Observe and report on the Air-battle taking place...", "Observe and report.", ""];
_task1 setSimpleTaskDestination (getMarkerPos "mrk_center");
_task1 setTaskState "Created";

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
<img image='loadscreen.jpg' width='512' height='256'/>
"]];

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
A three faction battle for Air-dominance is taking place. Observe and report!
"]];
