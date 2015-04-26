private ["_unit","_killer","_side"];

_unit = _this select 0;
_killer = _this select 1;

sleep 15;

{
	if (!alive driver _x) then {deleteVehicle _x} else
	{
	
		_side = side (driver _x);
		
		switch (_side) do
		{
			case West:
			{
				_x setObjectTexture [0,'#(argb,8,8,3)color(0,0,1,1)'];
				_x setObjectTexture [1,'#(argb,8,8,3)color(0,0,1,1)'];
			};
			case East:
			{
				_x setObjectTexture [0,'#(argb,8,8,3)color(1,0,0,1)'];
				_x setObjectTexture [1,'#(argb,8,8,3)color(1,0,0,1)'];
				
			};
			case Resistance:
			{
				_x setObjectTexture [0,'#(argb,8,8,3)color(0,1,0,1)'];
				_x setObjectTexture [1,'#(argb,8,8,3)color(0,1,0,1)'];
			};
		};
	};
} forEach vehicles;