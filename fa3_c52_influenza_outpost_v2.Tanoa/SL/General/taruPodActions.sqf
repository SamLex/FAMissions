/*
	Author: Lexer

	Description:
	Adds hold actions to player that attach and detach Taru pods to a Taru when it is on the ground over the pod. Actions only available from the Loadmaster's seat

	Parameters:
	0: NUMBER - attach duration; how much time it takes to attach a pod (default: 10)
	1: NUMBER - detach duration; how much time it takes to detach a pod (default: 2)

	Example (defaults):
	call SL_fnc_taruPodActions;

	Example (define times):
	[5,5] call SL_fnc_taruPodActions;
	
	Returns:
*/

// Only run where there is a player to attach actions to
if (isNull player) exitWith {};

params [["_attachTime", 10, [0]], ["_detachTime", 2, [0]]];

// Show condition:
// player is in a Taru without pods
// AND (short-circuited)
// player is in the loadmaster (gunner) seat
// AND (short-circuited)
// Taru is going less than 1 km/h
// AND (short-circuited)
// there is a taru pod within 5 distance of the winch that isn't already attached, and less than 0.25m below
private _showAttachCondition =
	"typeOf (vehicle _this) == 'O_Heli_Transport_04_F' &&
	{gunner (vehicle _this) == _this} &&
	{speed (vehicle _this) < 1} &&
	{{(attachedTo _x) != (vehicle _this) && {((getPosASL (vehicle _this)) select 2) - ((getPosASL _x) select 2) < 0.25}} count (nearestObjects [(vehicle _this) modelToWorld ((vehicle _this) selectionPosition 'winch'), ['Pod_Heli_Transport_04_base_F', 'Pod_Heli_Transport_04_crewed_base_F'], 5]) == 1}";

// Add attach hold action
[
	player,
	"Attach Taru Pod",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unbind_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unbind_ca.paa",
	_showAttachCondition,
	_showAttachCondition,
	{},
	{},
	
	// Action complete:
	// Attach closest pod
	{private _helo = vehicle (_this select 0);
	 private _pod = (nearestObjects [_helo modelToWorld (_helo selectionPosition 'winch'), ['Pod_Heli_Transport_04_base_F', 'Pod_Heli_Transport_04_crewed_base_F'], 5]) select 0;
	 _pod attachTo [_helo, [0,-1,-1], "Cargo_pos"];},
	{},
	[],
	_attachTime,
	9999, // Large number to try and ensure action is the top one
	false, // Repeatable action
	false // Not usable while unconscious
] call BIS_fnc_holdActionAdd;

// Show condition:
// player is in a Taru without pods
// AND (short-circuited)
// player is in the loadmaster (gunner) seat
// AND (short-circuited)
// Taru is going less than 1 km/h
// AND (short-circuited)
// there is a taru pod within 5 distance of the winch that is attached
private _showDetachCondition =
	"typeOf (vehicle _this) == 'O_Heli_Transport_04_F' &&
	{gunner (vehicle _this) == _this} &&
	{speed (vehicle _this) < 1} && 
	{{(attachedTo _x) == (vehicle _this)} count (nearestObjects [(vehicle _this) modelToWorld ((vehicle _this) selectionPosition 'winch'), ['Pod_Heli_Transport_04_base_F', 'Pod_Heli_Transport_04_crewed_base_F'], 5]) == 1}";

// Add detach hold action
[
	player,
	"Detach Taru Pod",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unbind_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unbind_ca.paa",
	_showDetachCondition,
	_showDetachCondition,
	{},
	{},
	
	// Action complete:
	// Detach closest pod
	{private _helo = vehicle (_this select 0);
	 private _pod = (nearestObjects [_helo modelToWorld (_helo selectionPosition 'winch'), ['Pod_Heli_Transport_04_base_F', 'Pod_Heli_Transport_04_crewed_base_F'], 5]) select 0;
	 detach _pod;},
	
	{},
	[],
	_detachTime,
	9999, // Large number to try and ensure action is the top one
	false, // Repeatable action
	false // Not usable while unconscious
] call BIS_fnc_holdActionAdd;

// Return nothing
nil;