
if (!isServer) exitWith {}; // Shouldn't be needed, but...

#include "functional.sqf"

private _ended = false;

private _end1 = [SL_mission_taskMedevacServer, SL_mission_taskSlingloadServer, SL_mission_taskSuppliesServer, SL_mission_taskAssetsServer, SL_mission_taskWithdrawServer];
if(ALL({_this == "Succeeded"}, _end1)) then
{
	[1,true] call f_fnc_mpEnd;
	_ended = true;
};
if(_ended) exitWith {};

private _end2 = [SL_mission_taskMedevacServer, SL_mission_taskSlingloadServer, SL_mission_taskWithdrawServer];
if(ALL({_this == "Succeeded"}, _end2)) then
{
	[2,true] call f_fnc_mpEnd;
	_ended = true;
};
if(_ended) exitWith {};

private _end3 = [SL_mission_taskMedevacServer, SL_mission_taskSlingloadServer];
if(ALL({_this == "Succeeded"}, _end3)) then
{
	[3,true] call f_fnc_mpEnd;
	_ended = true;
};
if(_ended) exitWith {};

private _end4 = [SL_mission_taskMedevacServer];
if(ALL({_this == "Failed"}, _end4)) then
{
	[4,false] call f_fnc_mpEnd;
	_ended = true;
};
if(_ended) exitWith {};

private _end5 = [SL_mission_taskMedevacServer];
if(ALL({_this == "Succeeded"}, _end5) && SL_mission_taskSlingloadServer == "Failed") then
{
	[5,true] call f_fnc_mpEnd;
	_ended = true;
};
if(_ended) exitWith {};