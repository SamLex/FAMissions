
SL_mission_taskMedevac = player createSimpleTask ["Evacuate patients (critical)"];
SL_mission_taskMedevac setSimpleTaskDescription ["Evacuate patients from the <marker name='markerOutpost'>outpost</marker>. They are in medical cargo pods and must be airlifted out to the <marker name='markerDropZone'>drop-off point at the MSF base.</marker>", "Evacuate patients (critical)", "Evacuate patients"];

SL_mission_taskSlingload = player createSimpleTask ["Don't use slingloading (critical)", SL_mission_taskMedevac];
SL_mission_taskSlingload setSimpleTaskDescription ["Don't use slingloading to pickup the medical cargo pods.", "Don't use slingloading (critical)", "Don't use slingloading"];

SL_mission_taskSupplies = player createSimpleTask ["Retrieve/Destroy supplies (optional)"];
SL_mission_taskSupplies setSimpleTaskDescription ["Retrieve the supply cargo pods from the <marker name='markerOutpost'>outpost</marker>, and drop them at the <marker name='markerDropZone'>MSF base</marker>. If they can't be retrieved, they should be destroyed", "Retrieve/Destroy supplies (optional)", "Retrieve/Destroy supplies"];

SL_mission_taskAssets = player createSimpleTask ["Asset denial (optional)"];
SL_mission_taskAssets setSimpleTaskDescription ["Medical assets within the <marker name='markerOutpost'>outpost</marker> should be destroyed. These include the medical supply trucks and medical cargo bases.", "Asset denial (optional)", "Asset denial"];

SL_mission_taskWithdraw = player createSimpleTask ["Withdraw within 30 minutes (critical)"];
SL_mission_taskWithdraw setSimpleTaskDescription ["All friendly forces must withdraw to the <marker name='markerUSSFreedom'>USS Freedom</marker> within 30 minutes.", "Withdraw within 30 minutes (critical)", "Withdraw within 30 minutes"];