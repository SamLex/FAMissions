// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: ZEUS

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
There is some pre-spawned units in and around Malden Airbase. Feel free to use them how you see fit. Please leave the AA for the players to destroy though.
<br/>
You may see some civilian units appearing and then disappearing again if you use a 'Add all to Zeus' module. Don't worry about it, Comrade.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Try to retake Malden Airbase while providing a fun experience for the players.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
Whatever tickles your fancy.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Big booms?
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
Make it fun for the players. Don't spawn any new units once CSAT reinforcements have arrived.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission",format ["
<br/>
Wait until the alarm (audio) has been triggered in Malden Airbase.
Then try and retake Malden Airbase.
You have %1 minutes to do so before CSAT reinforcements arrive.
Once CSAT reinforcements have arrived, the mission is effectively over.
Mission ends when all BLUFOR are dead or outwith Malden Airbase after the reinforcements have been triggered.
You may need to encourage the CSAT reinforcements to finish off BLUFOR.
", sl_param_mission_timer]]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
CSAT Viper are sneaking into Malden Airbase. You are to retake it.
<br/><br/>
<font size='18'>ENEMY FORCES (players perpective)</font>
<br/>
Just about anything NATO. Keep in mind the players are heavily armed and deep within NATO territory. So feel free to throw just about anything you think they can handle at them.
<br/><br/>
<font size='18'>FRIENDLY FORCES  (players perpective)</font>
<br/>
None until reinforcements arrive. This happens automatically.
"]];

// ====================================================================================