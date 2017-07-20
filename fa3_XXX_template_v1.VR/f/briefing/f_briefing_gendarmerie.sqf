// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: GENDARMERIE

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
" + localize "STR_f_briefingGendarmerieAdmin" + "
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", [localize "STR_f_executionTitle","
<br/>
<font size='18'>" + localize "STR_f_commandersIntent" + "</font>
<br/>
" + localize "STR_f_briefingGendarmerieCI" + "
<br/><br/>
<font size='18'>" + localize "STR_f_movementPlan" + "</font>
<br/>
" + localize "STR_f_briefingGendarmerieMP" + "
<br/><br/>
<font size='18'>" + localize "STR_f_fireSupportPlan" + "</font>
<br/>
" + localize "STR_f_briefingGendarmerieFSP" + "
<br/><br/>
<font size='18'>" + localize "STR_f_specialTasks" + "</font>
<br/>
" + localize "STR_f_briefingGendarmerieST" + "
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", [localize "STR_f_mission","
<br/>
" + localize "STR_f_briefingGendarmerieMission" + "
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", [localize "STR_f_situationTitle","
<br/>
" + localize "STR_f_briefingGendarmerieSituation" + "
<br/><br/>
<font size='18'>" + localize "STR_f_enemyForces" + "</font>
<br/>
" + localize "STR_f_briefingGendarmerieEF" + "
<br/><br/>
<font size='18'>" + localize "STR_f_friendlyForces" + "</font>
<br/>
" + localize "STR_f_briefingGendarmerieFF" + "
"]];

// ====================================================================================