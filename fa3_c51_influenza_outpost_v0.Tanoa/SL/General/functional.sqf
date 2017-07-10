/*
	Author: Lexer

	Description:
	Defines a number of helper macros for functional array handling
	
	MAP(LAMDBA,ARRAY) - Maps code to an array
	FILTER(COND,ARRAY) - Filters an array by a condition
	ANY(COND,ARRAY) - Does any array element match the condition?
	ALL(COND,ARRAY) - Do all array elements match the condition?
	FLATTEN(ARRAY) - Flattens an array of arrays into an array
*/

#ifndef __FUNCTIONAL_SQF__
#define __FUNCTIONAL_SQF__

#define MAP(LAMBDA,ARRAY)\
(call {\
	private _mapped = [];\
	{\
		private _elem = _x call LAMBDA;\
		_mapped pushBack _elem;\
	} foreach ARRAY;\
	_mapped;\
})

#define FILTER(COND,ARRAY)\
(call {\
	private _filtered = [];\
	{\
		if (_x call COND) then {\
			_filtered pushBack _x;\
		};\
	} foreach ARRAY;\
	_filtered;\
})

#define ANY(COND,ARRAY)\
(call {\
	private _any = false;\
	{\
		_any = _x call COND;\
		if (_any) exitWith {};\
	} foreach ARRAY;\
	_any;\
})

#define ALL(COND,ARRAY)\
(call {\
	private _all = true;\
	{\
		_all = _x call COND;\
		if (!_all) exitWith {};\
	} foreach ARRAY;\
	_all;\
})

#define FLATTEN(ARRAY)\
(call {\
	private _arr = [];\
	{\
		{\
			_arr pushBack _x;\
		} foreach _x;\
	} foreach ARRAY;\
	_arr;\
})

#endif