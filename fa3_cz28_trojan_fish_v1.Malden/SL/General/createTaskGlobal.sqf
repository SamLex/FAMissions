/*
	Author: Lexer

	Description:
	Creates a task for all players

	Parameters:
	0: STRING - Task internal name.
	1: STRING - Task visible name. Should be localize key
	2: STRING - Task description. Should be localize key
	3: BOOLEAN - Internal paramter, DO NOT SET.
	
	Example:
	["kill", "STR_killTask", "STR_killTaskDesc"] call SL_fnc_createTaskGlobal;

	Returns:
*/

params [["_name", "", [""]], ["_title", "", [""]], ["_description", "", [""]], ["_remote", false, [false]]];

// Called by remoteExec, actually make the task
if (_remote) then {
	// Exit if there is not a player
	if (isNull player) exitWith {};

	// Create the task
	private _task = player createSimpleTask [_name];
	_task setSimpleTaskDescription [localize _description, localize _title, ""];
	
	// Save to a variable for later reference
	private _variableName = "SL_mission_task_" + _name;
	missionNamespace setVariable [_variableName, _task];
} else {
	// Create task globally (could be -2, but only works on DS)
	[_name, _title, _description, true] remoteExec ["SL_fnc_createTaskGlobal", 0, true];
};

// Return nothing
nil;