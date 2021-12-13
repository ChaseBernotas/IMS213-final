var guiX=device_mouse_x_to_gui(0);
var guiY=device_mouse_y_to_gui(0);


if(guiX>=0 && guiY>=50){
	if(guiX<=160 && guiY<=146){
		if (mouse_check_button_pressed(mb_left) && ((obj_controller.money - 20) >=0)){
			if(selected==false){
				selected=true;
				 newBuild=instance_create_layer(mouse_x,mouse_y, "Instances", obj_gun);
				 obj_controller.money = obj_controller.money - 20;
			}
		}
	}
}

if (mouse_check_button(mb_left)){
	if(instance_exists(newBuild)){
		if (newBuild.beingPlaced==true){
			newBuild.x=mouse_x;
			newBuild.y=mouse_y;
		}
	}
}

else if (mouse_check_button_released(mb_left)){
	if (instance_exists(newBuild)){
		newBuild.beingPlaced=false;
		selected=false;
	}
}

