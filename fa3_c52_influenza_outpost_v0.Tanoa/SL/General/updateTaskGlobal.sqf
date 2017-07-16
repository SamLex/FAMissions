/*
	Author: Lexer

	Description:
	Updates a task for all players. Must be created by SL_fnc_createTaskGlobal

	Parameters:
	0: STRING - Task internal name.
	1: STRING - New state. "Suceed" or "Fail"
	2: STRING - Update notification text. Should be localize key
	3: BOOLEAN - Internal paramter, DO NOT SET.
	
	Example:
	["kill", "Suceed", "STL_killTaskSuceed"] call SL_fnc_updateTaskGlobal;

	Returns:
*/

params [["_name", "", [""]], ["_newState", "", [""]], ["_notificationText", "", [""]], ["_remote", false, [false]]];

// Called by remoteExec, actually make the task
if (_remote) then {
	// Exit if there is not a player
	if (isNull player) exitWith {};

	// Fetch task variable
	private _variableName = "SL_mission_task_" + _name;
	private _task = missionNamespace getVariable _variableName;
	
	// Update task
	switch (_newState) do {
		case "Suceed":
		{
			_task setTaskState "Succeeded";
			["TaskSucceeded", ["", localize _notificationText]] call BIS_fnc_showNotification;
		};
		case "Fail":
		{
			_task setTaskState "Failed";
			["TaskFailed", ["", localize _notificationText]] call BIS_fnc_showNotification;
		};
		default {};
	};
} else {
	// Update task globally (could be -2, but only works on DS)
	[_name, _newState, _notificationText, true] remoteExec ["SL_fnc_updateTaskGlobal", 0, true];
};

// Return nothing
nil;