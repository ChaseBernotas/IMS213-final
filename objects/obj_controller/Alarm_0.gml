/// @description Insert description here
// You can write your code in this editor
if (instance_number(obj_monster) < maxEvilQty) {
	var tempMonstarr = instance_create_layer(inX, inY, "Instances", obj_monster);
	// this next variable is inside the monstarr.
	// it is a flag that tells the monstarr
	// to put itself on a path.
	
	tempMonstarr.pathGo = true;
	if (alarm[0]<1) {
		alarm_set(0,58);
	}
}