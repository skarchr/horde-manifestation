params["_unit", "_distance"];

_nearbyEntities = _unit nearEntities ["Man",_distance];
_friendlies = [];
{
	if(side _x == side _unit && _x != _unit && group _x != group _unit && _x != player) then {
		_friendlies append [_x];
	}

}forEach _nearbyEntities;

_friendlies