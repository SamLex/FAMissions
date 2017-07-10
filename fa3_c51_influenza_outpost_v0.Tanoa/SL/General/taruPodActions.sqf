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

// Add attach hold action
[
	player,
	"Attach Taru Pod",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unbind_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unbind_ca.paa",
	
	// Show condition:
	// player is in a Taru without pods
	// AND (short-circuited)
	// player is in the loadmaster (gunner) seat
	// AND (short-circuited)
	// Taru is on the ground
	// AND (short-circuited)
	// there is a taru pod within 5 distance of the winch that isn't already attached
	"typeOf (vehicle _this) == 'O_Heli_Transport_04_F' &&
	{gunner (vehicle _this) == _this} &&
	{isTouchingGround (vehicle _this)} &&
	{{(attachedTo _x) != (vehicle _this)} count (nearestObjects [(vehicle _this) modelToWorld ((vehicle _this) selectionPosition 'winch'), ['Pod_Heli_Transport_04_base_F', 'Pod_Heli_Transport_04_crewed_base_F'], 5]) == 1}",
	
	// Continue condition:
	// Same condition as show
	"typeOf (vehicle _this) == 'O_Heli_Transport_04_F' &&
	{gunner (vehicle _this) == _this} &&
	{isTouchingGround (vehicle _this)} &&
	{{(attachedTo _x) != (vehicle _this)} count (nearestObjects [(vehicle _this) modelToWorld ((vehicle _this) selectionPosition 'winch'), ['Pod_Heli_Transport_04_base_F', 'Pod_Heli_Transport_04_crewed_base_F'], 5]) == 1}",
	
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

// Add detach hold action
[
	player,
	"Detach Taru Pod",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unbind_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unbind_ca.paa",
	
	// Show condition:
	// player is in a Taru without pods
	// AND (short-circuited)
	// player is in the loadmaster (gunner) seat
	// AND (short-circuited)
	// Taru is on the ground
	// AND (short-circuited)
	// there is a taru pod within 5 distance of the winch that is attached
	"typeOf (vehicle _this) == 'O_Heli_Transport_04_F' &&
	{gunner (vehicle _this) == _this} &&
	{isTouchingGround (vehicle _this)} &&
	{{(attachedTo _x) == (vehicle _this)} count (nearestObjects [(vehicle _this) modelToWorld ((vehicle _this) selectionPosition 'winch'), ['Pod_Heli_Transport_04_base_F', 'Pod_Heli_Transport_04_crewed_base_F'], 5]) == 1}",
	
	// Continue condition:
	// Same condition as show
	"typeOf (vehicle _this) == 'O_Heli_Transport_04_F' &&
	{gunner (vehicle _this) == _this} &&
	{isTouchingGround (vehicle _this)} &&
	{{(attachedTo _x) == (vehicle _this)} count (nearestObjects [(vehicle _this) modelToWorld ((vehicle _this) selectionPosition 'winch'), ['Pod_Heli_Transport_04_base_F', 'Pod_Heli_Transport_04_crewed_base_F'], 5]) == 1}",
	
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