params["_group","_distance"];
_canSee = false;

{
	_nearbyUnits = [_x,_distance] call sKa_fnc_nearbyUnits;
	_found = false;
	for [
		{ _i = 0 },
		{ ((_i < count _nearbyUnits) && !(_found)) },
		{ _i = _i + 1 }
	] do {
		_speed = speed (vehicle (_nearbyUnits select _i)) call sKa_fnc_absoluteVal;		
		if([_x, (_nearbyUnits select _i)] call sKa_fnc_canSpot && (_speed > 0)) then {
			_canSee = _nearbyUnits select _i;
			_found = true;
		};
	}
} forEach (units _group);

_canSee