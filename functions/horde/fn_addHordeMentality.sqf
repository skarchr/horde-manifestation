params["_group","_interval","_viewDistance"];
_exists = true;
while { [units _group] call sKa_fnc_anyUnitAlive && _exists } do {

	_friendly = [_group, _viewDistance] call sKa_fnc_spotsFriendlies;

	if(!(_friendly isEqualTo false)) then {
		//(units _group) select 0 sideChat format["I'm joining %1", _friendly]; //DEBUG purposes
		(units _group) joinSilent  _friendly;
		_exists = false;
	};
	sleep _interval;
};

