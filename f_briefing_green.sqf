_task1 = player createSimpleTask ["OBJ_1"];
_task1 setSimpleTaskDescription ["Kill anyone on Red or Blue team.", "Kill Red and Blue.", ""];
_task1 setSimpleTaskDestination (getMarkerPos "mrk_center");
_task1 setTaskState "Created";

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
<img image='loadscreen.jpg' width='512' height='256'/>
"]];

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
We need Air-dominance over Altis for Team Green. Shoot down as many Red and Blue helicopters as possible!
"]];

playMusic "aram";