#include "functional.sqf"

if (!isServer) exitWith {}; // Shouldn't be needed, but...

params [["_inbound", [], [[]]], ["_trigger", objNull, [objNull]]];

private _units = FLATTEN(MAP({units _this}, _inbound));
private _aliveUnits = FILTER({alive _this}, _units);
private _anyAliveUnitsNotInTrigger = ANY({!(_this inArea _trigger)}, _aliveUnits);

_anyAliveUnitsNotInTrigger;