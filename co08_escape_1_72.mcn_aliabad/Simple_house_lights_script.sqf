_houses = nearestObjects [getpos player, ["House"], 250]; // find all house class objects within 250m of player
{
_m = 0; while { format ["%1", (_x) buildingPos _m] != "[0,0,0]" } do {_m = _m + 1};_m = _m - 1; //determine how many building positions for each building
if (_m > 0) then { //only enterable houses with building positions will get a light 
_lightbulb = "#lightpoint" createVehicleLocal (getpos _x); 
_lightbulb setLightBrightness 0.02; // Increase or decrease to taste. 0.1 is very bright
_lightbulb setLightColor[1, 0.5, 0.1];  //warm yellow
_lightbulb lightAttachObject [_x, [1,1,1]]; //this should put the light source inside most houses and off the floor
};
} foreach _houses;  