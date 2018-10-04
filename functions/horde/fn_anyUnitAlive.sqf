params["_units"];
_foundAlive = false;
for [
	{ _i = 0 }, 
	{ (_i < count _units) && !(_foundAlive) }, 
	{ _i = _i + 1 }
] do {
	
	if(alive (_units select _i)) then {
		_foundAlive = true;
	};
};

_foundAlive