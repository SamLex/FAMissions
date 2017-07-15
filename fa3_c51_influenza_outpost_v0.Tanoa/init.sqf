// ====================================================================================

// F3 - Common Local Variables
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// WARNING: DO NOT DISABLE THIS COMPONENT
if(isServer) then {
	f_script_setLocalVars = [] execVM "f\common\f_setLocalVars.sqf";
};

// ====================================================================================

// F3 - Medical Systems Support
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// SWS Config Settings
// How many extra FirstAidKits (FAKS) each player should receive when using the F3 Simple Wounding System:
f_wound_extraFAK = 2;

[] execVM "f\medical\medical_init.sqf";

// ====================================================================================

// F3 - Disable Saving and Auto Saving
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

enableSaving [false, false];

// ====================================================================================

// F3 - Mute Orders and Reports
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

{_x setSpeaker "NoVoice"} forEach playableUnits;

// ====================================================================================

// F3 - Mission Timer/Safe Start
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\safeStart\f_safeStart.sqf";

// ====================================================================================

// F3 - F3 Mission Conditions Selector
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setMissionConditions = [] execVM "f\missionConditions\f_setMissionConditions.sqf";

// ====================================================================================

// F3 - Folk ARPS Group IDs
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setGroupIDs = [] execVM "f\setGroupID\f_setGroupIDs.sqf";

// ====================================================================================

// F3 - F3 Folk ARPS Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setGroupMarkers = ["blu_f"] execVM "f\groupMarkers\f_setLocalGroupMarkers.sqf";

// ====================================================================================

// F3 - Buddy Team Colours
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setTeamColours = [] execVM "f\setTeamColours\f_setTeamColours.sqf";

// ====================================================================================

// F3 - Fireteam Member Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] spawn f_fnc_SetLocalFTMemberMarkers;

// ====================================================================================

// F3 - Join Group Action
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[false] execVM "f\groupJoin\f_groupJoinAction.sqf";

// ====================================================================================

// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";

// ====================================================================================

// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\briefing\f_orbatNotes.sqf";

// ====================================================================================

// F3 - Loadout Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\briefing\f_loadoutNotes.sqf";

// ====================================================================================

// F3 - AI Skill Selector
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_var_civAI = independent; 		// Optional: The civilian AI will use this side's settings
[] execVM "f\setAISKill\f_setAISkill.sqf";

// ====================================================================================

// F3 - Authorised Crew Check
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

VehCTRG_TH1 addEventhandler ["GetIn", {[_this,["B_Helipilot_F","B_CTRG_Soldier_TL_tna_F"],false] call f_fnc_authorisedCrewCheck}];
VehCTRG_TH2 addEventhandler ["GetIn", {[_this,["B_Helipilot_F","B_CTRG_Soldier_TL_tna_F"],false] call f_fnc_authorisedCrewCheck}];
VehNATO_TH3 addEventhandler ["GetIn", {[_this,["B_Helipilot_F"],false] call f_fnc_authorisedCrewCheck}];
VehCSAT_EVAC1 addEventhandler ["GetIn", {[_this,["O_T_Helipilot_F", "O_T_Helicrew_F"],false] call f_fnc_authorisedCrewCheck}];
VehCSAT_EVAC2 addEventhandler ["GetIn", {[_this,["O_T_Helipilot_F", "O_T_Helicrew_F"],false] call f_fnc_authorisedCrewCheck}];

// ====================================================================================

// F3 - Name Tags
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\nametag\f_nametags.sqf";

// ====================================================================================

// F3 - Casualties Cap
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// BLUFOR > NATO
// [BLUFOR,100,6,true] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// Add Taru pod hold actions
[10, 2] call SL_fnc_taruPodActions;

if (isServer) then {
	["medevac", "STR_SL_mission_medevacName", "STR_SL_mission_medevacDescription"] call SL_fnc_createTaskGlobal;
	["assetDenial", "STR_SL_mission_assetDenialName", "STR_SL_mission_assetDenialDescription"] call SL_fnc_createTaskGlobal;
	["withdraw", "STR_SL_mission_withdrawName", "STR_SL_mission_withdrawDescription"] call SL_fnc_createTaskGlobal;
};