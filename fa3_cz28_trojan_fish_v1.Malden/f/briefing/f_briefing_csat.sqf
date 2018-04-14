// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: CSAT

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Lexer made this thing.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
An alarm will probably be triggered once we are detected. Destroying the AA emplacements should cause enough disruption to their systems to disable the alarm.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
After sneaking into Malden Airbase, capture and hold it until CSAT reinforcement arrive.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
We are getting dropped into the centre of Malden Airbase by two stolen Blackfish, along with two BTR-Ks.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
None until we have captured Malden Airbase. The reinforcements will contain a CAS element.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
There is a number of AA emplacements in and around Malden Airbase. These should be destroy to ensure our reinforcements can arrive unharassed.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission", format ["
<br/>
Capture and hold Malden Airbase for %1 minutes. Then destroy any remaining NATO.
", sl_param_mission_timer]]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Malden is completely under NATO control. CSAT command has an audacious plan to change that fact: two stolen Blackfish and a mechanised squad of heavily armed Viper.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
We are deep within NATO territory, expect anything.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
None until we have captured Malden Airbase. Reinforcements will arrive if we can hold out long enough.
"]];

// ====================================================================================
