beingPlaced=true;

weaponReady = false;

// we could customize these variables
// to reflect different kinds of weapons...

// we could play with this to allow for
// weapon degradation, skill levels, AI power, etc.
accuracyRequirement = 0.85;

// turn speed
turretTurnRate = 1.25;

//reload speed
weaponRefreshCycles = 105;
startupRefreshCycles = 400;

// projectile speed
shellSpeed = 5.75;

// set the timer for the first ammo load
// weapon ready won't set to true until
// that alarm goes off.  For the start of the 
// game, it'll take 400 cycles.  Then
// it goes down to 95 after the first shot.
alarm[0]=startupRefreshCycles;