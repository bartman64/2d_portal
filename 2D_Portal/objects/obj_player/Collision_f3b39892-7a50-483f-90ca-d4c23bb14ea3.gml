/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("E"))){
	if(instance_exists(obj_cube)){
		instance_destroy(obj_cube);
	}
	instance_create_layer(obj_cubePipe.x, obj_cubePipe.y, "item_layer", obj_cube);
}