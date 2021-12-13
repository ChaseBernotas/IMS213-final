other.hitPoints--;

if (other.hitPoints < 1) {
	obj_controller.money = obj_controller.money + 3;
	instance_destroy(other);
	// we'll let the monstarr take care of
	// deleting its lifeGraph on its own...
	// since we've called instance_destroy(other),
	// the monstarr will soon call its own event
	// that runs just before a thing gets destroyed.
	// look for it inside the Monstarr, but you
	// can see it on the events pulldown too.
}
// destroy the projectile (ourselves)
instance_destroy();