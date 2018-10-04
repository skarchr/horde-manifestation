params["_unit","_target"];

//code inspired by Feuerex: https://www.youtube.com/watch?v=t_IjrUiNjgo&t=584s

_direction = vectorDir _unit;
_vector = vectorNormalized ((position _target) vectorDiff (position _unit));
_dotProduct = (_vector) vectorDotProduct (_direction);
_canSpot = _dotProduct > cos(45);

if (_canSpot) then {
	_ins = lineIntersectsSurfaces [eyePos _unit, eyePos _target, _unit, _target, true, 1, "GEOM", "NONE"];

	if (isNil {_ins select 0}) then {
			_canSpot = true;
		} else {
			_canSpot = false;
		};		
} else {
	_canSpot = false;
};

_canSpot
