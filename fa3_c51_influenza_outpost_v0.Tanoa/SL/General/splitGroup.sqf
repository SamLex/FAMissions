/*
	Author: Lexer

	Description:
	Splits a group into a random number of smaller groups, all with the same waypoints as the original

	Parameters:
	0: GROUP - Group to split up
	1: NUMBER - Minimum number of groups to split into
	2: NUMBER - Mean number of groups to split into
	3: NUMBER - Maximum number of groups to split into
	4: BOOLEAN - Should new groups skip the current waypoint. Useful if group splitting is triggered by waypoint (Default: false)

	Example:
	[group player, 2, 2, 2] call SL_fnc_splitGroup;

	Returns:
	Array of new groups. Will include the original group (now with reduced memebers)
*/

params [["_originalGroup", grpNull, [grpNull]], ["_min", 1, [0]], ["_mid", 1, [0]], ["_max", 1, [0]], ["_skipWaypoint", false, [false]]];

// Choice the number of groups to split into from a normal distribution
private _numberOfGroups = round random [_min, _mid, _max];

// Sanity check: if the number of groups is less than 2 or more than in the original group, just return the original group
if (_numberOfGroups < 2 || {_numberOfGroups > count units _originalGroup}) exitWith {[_originalGroup]};

// Sort the units in the group by rank and remove the leader of the original group
private _rankedUnits = [units _originalGroup] call SL_fnc_sortByRank;
_rankedUnits = _rankedUnits - [leader _originalGroup];

// Create arrays representing groups, with the leaders as the first elements
private _groupArrays = [[leader _originalGroup]];
for [{private _i=1}, {_i < _numberOfGroups}, {_i = _i +1}] do {
	_groupArrays pushBack [(_rankedUnits deleteAt 0)];
};

// Spread the rest of the units across the groups at random
{
	private _index = floor random count _groupArrays;
	(_groupArrays select _index) pushBack _x;
} forEach _rankedUnits;

// Create the new groups, add units to them and copy over the current waypoints
private _groups = [_originalGroup];
for [{private _i=1}, {_i < count _groupArrays}, {_i = _i +1}] do {
	private _group = createGroup (side leader _originalGroup);
	_groups pushBack _group;
	(_groupArrays select _i) joinSilent _group;
	_group selectLeader ((_groupArrays select _i) select 0);
	
	private _offset = if (_skipWaypoint) then {1} else {0};
	_group copyWaypoints _originalGroup;
	_group setCurrentWaypoint [_group, currentWaypoint _originalGroup + _offset];
};

_groups;