if (pathGo == true) {
	path_start(path_simple,0.9,path_action_stop,true);
	pathGo = false;
}

if (hitPoints<1) {
	instance_destroy();
	
}