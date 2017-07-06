
if (!isServer) exitWith {}; // Shouldn't be needed, but...

params [["_currentStrength", 0, [0]], ["_thresholdStrength", 0, [0]], ["_reinforceGroups", [], [[]]]];

private _deployed = [];

while {_currentStrength < _thresholdStrength} do
{
	private _group = selectRandom _reinforceGroups;
	private _strength = count (units _group);
	
	_group setCurrentWaypoint [_group,(currentWaypoint _group)+1];
	_deployed pushBack _group;
	(format ["Deployed group %1", _group]) remoteExec ["systemChat"];
	
	_reinforceGroups = _reinforceGroups - [_group];
	_currentStrength = _currentStrength + _strength;
};

("Finished deploying") remoteExec ["systemChat"];

_deployed;