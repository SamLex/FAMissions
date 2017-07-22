
if (!isServer) exitWith {}; // Shouldn't be needed, but...

params [["_currentStrength", 0, [0]], ["_thresholdStrength", 0, [0]], ["_reinforceGroups", [], [[]]]];

private _deployed = [];

while {_currentStrength < _thresholdStrength && {count _reinforceGroups > 0}} do
{
	private _group = selectRandom _reinforceGroups;
	private _strength = count (units _group);
	
	_group setCurrentWaypoint [_group,(currentWaypoint _group)+1];
	_deployed pushBack _group;
	
	_reinforceGroups = _reinforceGroups - [_group];
	_currentStrength = _currentStrength + _strength;
};

_deployed;