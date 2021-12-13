/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_sidebar, 0, 0, 50, 1, 1, 0, c_white, 1);



var guiX=device_mouse_x_to_gui(0);
var guiY=device_mouse_y_to_gui(0);

draw_text(10,10,string(guiX) + " " + string(guiY));