{
	private _unit = _x;
	_unit enableSimulationGlobal false;
	_unit hideObjectGlobal true;
	_unit setCaptive true;
	
	{
		_x enableSimulationGlobal false;
		_x hideObjectGlobal true;
		_x setCaptive true;
	} forEach crew _unit;
} forEach (vehicles select {_x getVariable "reinforcementUnit"});

[] spawn {
	while {!SL_reinforcementsTriggered} do {
		{
			private _curo = _x;
			_curo removeCuratorEditableObjects [(curatorEditableObjects _curo) select {vehicle _x getVariable "reinforcementUnit"}, true];
		} forEach allCurators;
		sleep 1;
	};
	{
		private _curo = _x;
		_curo addCuratorEditableObjects [vehicles, true];
	} forEach allCurators;
};

waitUntil {sleep 1; SL_reinforcementsTriggered};

["JIP", ["CSAT reinforcements have arrived!"]] remoteExec ["BIS_fnc_showNotification", 0];

{
	private _unit = _x;
	_unit enableSimulationGlobal true;
	_unit hideObjectGlobal false;
	_unit setCaptive false;
	
	{
		_x enableSimulationGlobal true;
		_x hideObjectGlobal false;
		_x setCaptive false;
	} forEach crew _unit;
} forEach (vehicles select {_x getVariable "reinforcementUnit"});