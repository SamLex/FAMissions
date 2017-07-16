// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

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
<font size='18'>TARU PODS</font>
<br/>
Due to the sensitive nature of the patients and medical supplies being airlifted, slingloading is not authorised. Instead the Tarus must lift the pods using their underside attachment hooks. The Loadmaster's seat has a hold-action to achieve this (don't need to look at the pod), and the Tarus must land stradling a pod for this to be possible. There is a similar hold-action for detaching, which requires the Taru to be landed.
<br/><br/>
<font size='18'>DROP ZONES</font>
<br/>
Any retrieved pod can be dropped at either the <marker name='markerPrimaryDropZone'>primary drop zone</marker> or the <marker name='markerSecondaryDropZone'>secondary drop zone</marker>.
<br/><br/>
<font size='18'>BENCH PODS</font>
<br/>
There are two Taru bench pods aboard the <marker name='markerFreedom'>USS Freedom</marker>, for use if the EVAC helos must fill a TH role.
<font size='18'>EXPLOSIVES</font>
<br/>
Alpha and Bravo's combat engineers have explosives to help with denying assest from Syndikat. The THs have spare explosives as well.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Secure the <marker name='markerOutpost'>outpost</marker> while the patients are airlifted to the <marker name='markerMSF'>MSF base</marker>. All friendly forces must then withdraw from the main island.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
Alpha is at the <marker name='markerCTRG'>CTRG camp</marker>, and must fly to the AO with TH1 and TH2.
<br/><br/>
Bravo is aboard the <marker name='markerFreedom'>USS Freedom</marker>, and must fly to the AO with TH3.
<br/><br/>
Charlie were on patrol near the <marker name='markerOutpost'>outpost</marker> at the time of the attack, and are currently there.
<br/><br/>
Withdrawal will be either to the <marker name='markerFreedom'>USS Freedom</marker> or the <marker name='markerMSF'>Médecins Sans Frontières base</marker>, depending how long the mission takes.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
No fire support is available.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
As well as evacuating the patients, there is a number of optional objectives:
<br/><br/>
There is a number of medical assets around the <marker name='markerOutpost'>outpost</marker>. If possible, these assets should be denied from Syndikat, using our combat engineers and EVAC helos.
<br/><br/>
Due to quarantine protocols, all friendly forces must withdraw from the main island to the <marker name='markerFreedom'>USS Freedom</marker> within 30 minutes. Failing this, withdrawal must be to the <marker name='markerMSF'>MSF base</marker>.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Evacuate patients from the <marker name='markerOutpost'>medical outpost</marker>, and withdraw all friendly forces from the main island.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
At the height of a tropical influenza epidemic, NATO and CSAT are observing a total ceasefire and cooperating in maintaining a quarantine. A CSAT <marker name='markerOutpost'>medical outpost</marker>, which treated victims of the epidemic, has come under attack from the Syndikat criminal organization.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
An unknown number of Syndikat light infantry attacking the <marker name='markerOutpost'>outpost</marker>, likely utilising unarmed transport vehicles. Possibly supported by a few technicals.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
An understrength CSAT fireteam garrisoning the <marker name='markerOutpost'>outpost</marker>. They have one static HMG facing the road into the <marker name='markerOutpost'>outpost</marker>.
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