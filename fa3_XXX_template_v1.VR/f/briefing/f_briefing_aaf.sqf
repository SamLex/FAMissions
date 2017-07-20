// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: AAF

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", [localize "STR_f_creditsTitle","
<br/>
" + localize "STR_f_credits" + "
<br/><br/>
" + localize "STR_f_creditsMade" + "
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", [localize "STR_f_adminTitle","
<br/>
" + localize "STR_f_briefingAAFAdmin" + "
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", [localize "STR_f_executionTitle","
<br/>
<font size='18'>" + localize "STR_f_commandersIntent" + "</font>
<br/>
" + localize "STR_f_briefingAAFCI" + "
<br/><br/>
<font size='18'>" + localize "STR_f_movementPlan" + "</font>
<br/>
" + localize "STR_f_briefingAAFMP" + "
<br/><br/>
<font size='18'>" + localize "STR_f_fireSupportPlan" + "</font>
<br/>
" + localize "STR_f_briefingAAFFSP" + "
<br/><br/>
<font size='18'>" + localize "STR_f_specialTasks" + "</font>
<br/>
" + localize "STR_f_briefingAAFST" + "
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", [localize "STR_f_mission","
<br/>
" + localize "STR_f_briefingAAFMission" + "
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", [localize "STR_f_situationTitle","
<br/>
" + localize "STR_f_briefingAAFSituation" + "
<br/><br/>
<font size='18'>" + localize "STR_f_enemyForces" + "</font>
<br/>
" + localize "STR_f_briefingAAFEF" + "
<br/><br/>
<font size='18'>" + localize "STR_f_friendlyForces" + "</font>
<br/>
" + localize "STR_f_briefingAAFFF" + "
"]];

// ====================================================================================