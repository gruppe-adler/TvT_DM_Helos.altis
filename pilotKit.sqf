_unit = _this select 0;

removeVest _unit;
removeGoggles _unit;
removeHeadgear _unit;
removeAllItems _unit;
removeAllWeapons _unit;
_unit addWeapon "ItemGPS";

switch (side _unit) do
{
	case West:
	{
		_unit unassignItem "NVGoggles"; 
		_unit removeItem "NVGoggles";
        _unit addHeadgear "H_MilCap_blue";
        _unit addUniform "U_B_HeliPilotCoveralls";
        _unit addGoggles "G_Aviator";
	};
	case Resistance:
	{
		_unit unassignItem "NVGoggles_INDEP"; 
		_unit removeItem "NVGoggles_INDEP";
		_unit addHeadgear "H_Cap_grn";
        _unit addUniform "U_I_HeliPilotCoveralls";
        _unit addGoggles "G_Aviator";
	};
	case East:
	{
		_unit unassignItem "NVGoggles_OPFOR"; 
		_unit removeItem "NVGoggles_OPFOR";
        _unit addHeadgear "H_Cap_red";
        _unit addUniform "U_O_PilotCoveralls";
        _unit addGoggles "G_Aviator";
	};
};