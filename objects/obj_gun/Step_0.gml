// look for the closest Monstarr and assign
// it to the variable myMonstarr so we can
// keep track of it.
var myMonstarr = instance_nearest(x, y, obj_monster);

// by default, assume we don't have a monstarr
// in our sights...
var targeted = false;

// OK:  If we DO have a monstarr in mind,
// let's twist our turret to point at it.
// NOTE THAT for effect, this isn't necessarily
// instant -- the turret turns as much as 1.25 degrees
// per frame... that's slow.

if (myMonstarr != noone) {
	
	// get the angle we need in order to point from
	// ourselves (the gundarr) to the monstarr we have
	// in mind...
	var pd = point_direction(x, y, myMonstarr.x, myMonstarr.y);
	
	// now get the difference between our current
	// angle AND the angle we need to be pointing in...
	var dd = angle_difference(image_angle, pd);
	
	// now calculate the direction we need to turn
	// to get to that new angle the fastest ...
	// sign(dd) by the way just tells us if dd is positive
	// or negative, so we turn the right direction.
	var angleDelta = min(abs(dd), turretTurnRate) * sign(dd);
	
	// now set the new image angle
	image_angle = image_angle - angleDelta;
	
	// OK.  Are we nearly lined up?  Can we shoot?
	// This calc could get really complicated.  I'm
	// just asking "Were we less than 0.9 degrees from 
	// the right angle?  If yes, then we're close enough!"
	
	if (dd<accuracyRequirement) {
		targeted = true;
	} else {
		// not close enough!  keep aiming!
		targeted = false;
	}
}

// now for the second part (this could easily
// be folded into a single step, and not broken
// out into a first part and a second part, btw).

// by default, we set our bullet to non-existing...
// this keeps us from running into an error if we
// don't actually create a new bullet instance
// during this step...
var bullet = noone;

// did we agree?  Was the monstarr in our sights?
if (targeted == true) {
	// 
	if (weaponReady == true) {
		// target acquired?  weapon ready?  
		// FIRE A PROJECTILE
		//
		bullet = instance_create_layer(x,y,"Instances",obj_bullet);
		bullet.direction = point_direction(x, y, myMonstarr.x, myMonstarr.y);
		bullet.speed = shellSpeed;
		//
		// now make sure our gun can't fire until
		// the refresh period expires.
		weaponReady = false;
		// now cool off!
		alarm[0]=weaponRefreshCycles;
	}
}