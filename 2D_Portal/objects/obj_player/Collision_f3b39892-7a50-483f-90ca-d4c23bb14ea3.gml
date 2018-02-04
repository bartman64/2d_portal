/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("R"))){
	show_debug_message("Pressed Button")	;
	instance_create_layer(1240, 500, "Instances", obj_cube);
}