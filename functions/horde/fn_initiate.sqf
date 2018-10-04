
{
	if((group player != _x) && (side _x isEqualTo opfor)) then { //TODO: replace to only affect zombie
		[_x, 5, 30] spawn sKa_fnc_addHordeMentality;
	};

} forEach allGroups;
