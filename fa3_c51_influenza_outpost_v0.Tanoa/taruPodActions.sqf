// Only run where there is a player to attach actions to
if (isNull player) exitWith {};

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
	// there is a taru pod within 2 distance of the winch that isn't already attached
	"typeOf (vehicle _this) == 'O_Heli_Transport_04_F' &&
	{gunner (vehicle _this) == _this} &&
	{{(attachedTo _x) != (vehicle _this)} count (nearestObjects [(vehicle _this) modelToWorldWorld ((vehicle _this) selectionPosition 'winch'), ['Pod_Heli_Transport_04_base_F', 'Pod_Heli_Transport_04_crewed_base_F'], 2, true]) == 1}",
	
	// Continue condition:
	// Same condition as show
	"typeOf (vehicle _this) == 'O_Heli_Transport_04_F' &&
	{gunner (vehicle _this) == _this} &&
	{{(attachedTo _x) != (vehicle _this)} count (nearestObjects [(vehicle _this) modelToWorldWorld ((vehicle _this) selectionPosition 'winch'), ['Pod_Heli_Transport_04_base_F', 'Pod_Heli_Transport_04_crewed_base_F'], 2, true]) == 1}",
	
	{},
	{},
	
	// Action complete:
	// Attach closest pod
	{((nearestObjects [(vehicle (_this select 0)) modelToWorldWorld ((vehicle (_this select 0)) selectionPosition 'winch'), ['Pod_Heli_Transport_04_base_F', 'Pod_Heli_Transport_04_crewed_base_F'], 2, true]) select 0) attachTo [vehicle (_this select 0), [0,-1,-1], "Cargo_pos"];},
	
	{},
	[],
	10, // Action takes 10 seconds (Should be parameter?)
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
	// there is a taru pod within 2 distance of the winch that is attached
	"typeOf (vehicle _this) == 'O_Heli_Transport_04_F' &&
	{gunner (vehicle _this) == _this} &&
	{{(attachedTo _x) == (vehicle _this)} count (nearestObjects [(vehicle _this) modelToWorldWorld ((vehicle _this) selectionPosition 'winch'), ['Pod_Heli_Transport_04_base_F', 'Pod_Heli_Transport_04_crewed_base_F'], 2, true]) == 1}",
	
	// Continue condition:
	// Same condition as show
	"typeOf (vehicle _this) == 'O_Heli_Transport_04_F' &&
	{gunner (vehicle _this) == _this} &&
	{{(attachedTo _x) == (vehicle _this)} count (nearestObjects [(vehicle _this) modelToWorldWorld ((vehicle _this) selectionPosition 'winch'), ['Pod_Heli_Transport_04_base_F', 'Pod_Heli_Transport_04_crewed_base_F'], 2, true]) == 1}",
	
	{},
	{},
	
	// Action complete:
	// Detach closest pod
	{detach ((nearestObjects [(vehicle (_this select 0)) modelToWorldWorld ((vehicle (_this select 0)) selectionPosition 'winch'), ['Pod_Heli_Transport_04_base_F', 'Pod_Heli_Transport_04_crewed_base_F'], 2, true]) select 0)},
	
	{},
	[],
	2, // Action takes 2 seconds (Should be parameter?)
	9999, // Large number to try and ensure action is the top one
	false, // Repeatable action
	false // Not usable while unconscious
] call BIS_fnc_holdActionAdd;