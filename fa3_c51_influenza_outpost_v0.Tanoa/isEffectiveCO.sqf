#include "functional.sqf"

params [["_player", objNull, [objNull]], ["_feedback", false, [false]]];

private _faCOOrder = [
UnitNATO_CO,
UnitCTRG_ASL_SL,
UnitNATO_BSL_SL,
UnitCSAT_CSL_SL,
UnitCTRG_A1_FTL,
UnitCTRG_A2_FTL,
UnitNATO_B1_FTL,
UnitNATO_B2_FTL,
UnitCSAT_C1_FTL,
UnitCSAT_C2_FTL,
UnitCTRG_A1_AR1,
UnitCTRG_A1_AR2,
UnitCTRG_A1_CENG,
UnitCTRG_A1_R1,
UnitCTRG_A1_R2,
UnitCTRG_A2_AR1,
UnitCTRG_A2_AR2,
UnitCTRG_A2_CENG,
UnitCTRG_A2_R1,
UnitCTRG_A2_R2,
UnitNATO_B1_AR1,
UnitNATO_B1_AR2,
UnitNATO_B1_CENG,
UnitNATO_B1_R1,
UnitNATO_B1_R2,
UnitNATO_B2_AR1,
UnitNATO_B2_AR2,
UnitNATO_B2_CENG,
UnitNATO_B2_R1,
UnitNATO_B2_R2,
UnitCSAT_C1_AR1,
UnitCSAT_C1_AR2,
UnitCSAT_C1_R3,
UnitCSAT_C1_R1,
UnitCSAT_C1_R2,
UnitCSAT_C2_AR1,
UnitCSAT_C2_AR2,
UnitCSAT_C2_R3,
UnitCSAT_C2_R1,
UnitCSAT_C2_R2,
UnitNATO_CO_M,
UnitCTRG_ASL_M,
UnitNATO_BSL_M,
UnitCSAT_CSL_M];

private _alive = FILTER({alive _this}, _faCOOrder);
private _head = _alive select 0;
private _isEffectiveCO = _head == _player;

if(_feedback && !_isEffectiveCO) then
{
	hint "You are not the effective CO!";
};

_isEffectiveCO;