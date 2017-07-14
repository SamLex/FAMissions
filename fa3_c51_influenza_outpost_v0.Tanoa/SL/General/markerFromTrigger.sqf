/*
	Author: Lexer

	Description:
	Creates a marker to visually show a trigger's area

	Parameters:
	0: TRIGGER - Trigger to create marker from
	1: STRING - Colour of the resulting marker
	2: NUMBER - Alpha value of the marker

	Example:
	[_trigger, "ColorRed", 0.5] call SL_fnc_markerFromTrigger;

	Returns:
	The created marker
*/

params [["_trigger", objNull, [objNull]],["_colour", "Default", [""]],["_alpha", 1, [0]]];

private _marker = createMarkerLocal ["marker" + str _trigger, _trigger];
private _area = triggerArea _trigger;

// Is trigger rectangular?
if(_area select 3) then {
	_marker setMarkerShapeLocal "RECTANGLE";
} else {
	_marker setMarkerShapeLocal "ELLIPSE";
};

// Set marker direction
_marker setMarkerDirLocal (_area select 2);

// Set marker area
_marker setMarkerSizeLocal [_area select 0, _area select 1];

// Set marker colour
_marker setMarkerColorLocal _colour;

// Set marker alpha
_marker setMarkerAlphaLocal _alpha;

// Return marker
_marker;