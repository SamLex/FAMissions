// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: ZEUS

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Made, with care and love, by Lexer.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
The Taru hold-actions work on any Taru and any pod, so new ones can be spawned if needed.
<br/><br/>
Try not to interrupt the existing reinforcements. These will come into the AO only if there is less than 16 alive Syndikat in the AO, and calls in enough to bring the total back above 16.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Keep it interesting for the infantry, try not to overwhelm them
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
Syndikat should arrive on foot or in unarmed light transport vehicles.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
No. Just no.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
Have fun?
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Attack the outpost.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
At the height of a tropical influenza epidemic, NATO and CSAT are observing a total ceasefire and cooperating in maintaining a quarantine. A CSAT <marker name='markerOutpost'>medical outpost</marker>, which treated victims of the epidemic, has come under attack from the Syndikat criminal organization.
<br/><br/>
<font size='18'>ENEMY FORCES (Player side)</font>
<br/>
3 squads of light infantry, 2 of which are heliborne. There is also an understrength fireteam of AI defending the outpost.
<br/><br/>
<font size='18'>FRIENDLY FORCES (Zeus side)</font>
<br/>
An unknown number of Syndikat light infantry attacking the <marker name='markerOutpost'>outpost</marker>, likely utilising unarmed transport vehicles. Possibly supported by a few technicals.
"]];

// ====================================================================================

// NOTES: BACKGROUND
// The code below creates the background sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Background","
<br/>
<font size='18'>TANOAN FLU</font>
<br/><br/>
<font size='14'>OVERVIEW</font>
<br/>
Tanoa is currently experiencing an epidemic of 'Tanoan Flu'.
'Tanoan Flu' is a strain of H5N1 (avian influenza is another common strain) that has undergone extremely premature antigenic shift, likely due to the tropical conditions on Tanoa, to acquire bird-to-human transmission and human-to-human transmission.
<br/><br/>
<font size='14'>DETAILS</font>
<br/>
As well as typical influenza symptoms, this strain seems to cause pneumonias and other complications at a much higher rate than other strains, resulting in a 25% mortality rate.
The incubation period is about 4 days and a victim remains infectious for about 2 weeks after stopping showing symptoms.
It is extremely infectious and requires very little exposure to infect an individual.
The strain also seems to be under going extremely fast antigenic drift when transmitting for human-to-human, drifting significantly about every 3 transmissions, making a vaccine almost impossible and resulting in previous victims becoming re-infected.
The strain was first recorded birds less than 2 week ago and has reached epidemic status already.
<br/><br/>
<font size='18'>ENEMY OF MY ENEMY</font>
<br/><br/>
<font size='14'>CEASEFIRE</font>
<br/>
Due to the extremely dangerous nature of the epidemic to combatants on both sides, NATO and CSAT have agreed to a total ceasefire for the duration of the epidemic and have quarantined the Tanoan islands in the hope of preventing further spread of the virus.
CTRG have surprised both sides in revealing there presence on the Tanoan islands, and actively participating in operations related to the quarantine.
Attempts have been made to reach out to the Syndikat criminal organization to ask for cooperation in the quarantine, but these have been met with extreme hostility.
<br/><br/>
<font size='14'>ASSET SHARING</font>
<br/>
The quarantine is being backed up by naval elements from both sides, such as the <marker name='markerFreedom'>NATO USS Freedom</marker>.
Médecins Sans Frontières (Doctors Without Borders) have been allowed to setup a <marker name='markerMSF'>treatment and research base</marker> at Tuvanka Airbase. This base is where victims of the virus are ultimately transferred for treatment, and where research into a vaccine is taking place.
Both sides also maintain a number of medical outposts across the Tanoan islands to provide treatment and transfer to the MSF base.
"]];

// ====================================================================================