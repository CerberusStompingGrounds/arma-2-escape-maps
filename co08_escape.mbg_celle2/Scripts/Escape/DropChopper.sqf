if (!isServer) exitWith {};

private ["_chopper", "_dropPosition", "_debug", "_group", "_waypoint", "_dropUnits"];

_chopper = _this select 0;
_dropUnits = _this select 1;
_dropPosition = _this select 2;
if (count _this > 3) then {_debug = _this select 3;} else {_debug = false;};

_group = group _chopper;

if (_debug) then {
    player sideChat "Starting drop chopper script...";
};

if (vehicleVarName _chopper == "") exitWith {
	sleep 5;
	player sideChat "Drop chopper must have a name. Script exiting.";
};

_chopper setVariable ["waypointFulfilled", false];
_chopper setVariable ["missionCompleted", false];

[_chopper, _dropUnits, _debug] spawn {
	private ["_chopper", "_dropUnits", "_debug"];

	_chopper = _this select 0;
	_dropUnits = _this select 1;
	_debug = _this select 2;

	while {!(_chopper getVariable "waypointFulfilled")} do {
		sleep 1;
	};

	if (_debug) then {
		player sideChat "Drop chopper dropping cargo...";
	};

    {
        unassignVehicle _x;
        _x action ["eject", _chopper];
        waituntil {vehicle _x != _chopper};
        sleep 0.5;
    } foreach _dropUnits;

	while {!(_chopper getVariable "missionCompleted")} do {
		sleep 1;
	};

	if (_debug) then {
		player sideChat "Drop chopper terminating...";
	};

	{
		deleteVehicle _x;
	} foreach units group _chopper;
	deleteVehicle _chopper;
};

if (_debug) then {
	"SmokeShellRed" createVehicle _dropPosition;
	player sideChat "Drop chopper moving out...";
};

_chopper flyInHeight 250;
_chopper engineOn true;
_chopper move [position _chopper select 0, position _chopper select 1, 85];
while {(position _chopper) select 2 < 75} do {
	sleep 1;
};

_waypoint = _group addWaypoint [_dropPosition, 0];
_waypoint setWaypointType "MOVE";
_waypoint setWaypointBehaviour "SAFE";
_waypoint setWaypointSpeed "FULL";
_waypoint setWaypointStatements ["true", vehicleVarName _chopper + " setVariable [""waypointFulfilled"", true];"];

_waypoint = _group addWaypoint [getPos _chopper, 0];
_waypoint setWaypointType "MOVE";
_waypoint setWaypointBehaviour "SAFE";
_waypoint setWaypointSpeed "FULL";
_waypoint setWaypointStatements ["true", vehicleVarName _chopper + " setVariable [""missionCompleted"", true];"];


