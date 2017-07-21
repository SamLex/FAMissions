/*
	Author: Lexer

	Description:
	Sorts an array of units by their rank (highest first)

	Parameters:
	0: ARRAY - Array of units to sort

	Example:
	[units group player] call SL_fnc_sortByRank;

	Returns:
	Sorted array
*/

params [["_units", [], [[]]]];

private _sortedUnits = [_units, [], {
	switch (rank _x) do {
		default            {0};
		case "PRIVATE":    {1};
		case "CORPORAL":   {2};
		case "SERGEANT":   {3};
		case "LIEUTENANT": {4};
		case "CAPTAIN":    {5};
		case "MAJOR":      {6};
		case "COLONEL":    {7};
	};
}, "DESCEND"] call BIS_fnc_sortBy;

_sortedUnits;