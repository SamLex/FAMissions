#include "functional.sqf"

private _ended = false;

private _end1 = [SL_mission_taskMedevac, SL_mission_taskSlingload, SL_mission_taskSupplies, SL_mission_taskAssets, SL_mission_taskWithdraw];
if(ALL({taskState _this == "Succeeded"}, _end1)) then
{
	[1,true] call f_fnc_mpEnd;
	_ended = true;
};
if(_ended) exitWith {};

private _end2 = [SL_mission_taskMedevac, SL_mission_taskSlingload, SL_mission_taskWithdraw];
if(ALL({taskState _this == "Succeeded"}, _end2)) then
{
	[2,true] call f_fnc_mpEnd;
	_ended = true;
};
if(_ended) exitWith {};

private _end3 = [SL_mission_taskMedevac, SL_mission_taskSlingload];
if(ALL({taskState _this == "Succeeded"}, _end3)) then
{
	[3,true] call f_fnc_mpEnd;
	_ended = true;
};
if(_ended) exitWith {};

private _end4 = [SL_mission_taskMedevac];
if(ALL({taskState _this == "Failed"}, _end4)) then
{
	[4,false] call f_fnc_mpEnd;
	_ended = true;
};
if(_ended) exitWith {};

private _end5 = [SL_mission_taskMedevac];
if(ALL({taskState _this == "Succeeded"}, _end5)) then
{
	[5,true] call f_fnc_mpEnd;
	_ended = true;
};
if(_ended) exitWith {};