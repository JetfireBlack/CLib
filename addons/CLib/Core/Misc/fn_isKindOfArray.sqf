#include "macros.hpp"
/*
    Community Lib - CLib

    Author: joko // Jonas

    Description:
    is Kind Of Array

    Parameter(s):
    https://community.bistudio.com/wiki/isKindOf
    exept that 2nd Parameter is a Array with Multible Types/Checks Posible

    Returns:
    Bool is Kind Of Input1
*/
params ["_input1", "_inputs", "_config"];
if (isNil "_config") then {
    {
        if (_input1 isKindOf _x) then {
            true breakOut SCRIPTSCOPENAME;
        };
        nil
    } count _inputs;
} else {
    {
        if (_input1 isKindOf [_x, _config]) then {
            true breakOut SCRIPTSCOPENAME;
        };
        nil
    } count _inputs;
};

false