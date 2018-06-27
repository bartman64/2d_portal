/// @description Insert description here
// You can write your code in this editor
if(alarm[0] <= 0){
	if(keyboard_check_pressed(ord("E"))){
		if(instance_exists(obj_cube)){
			instance_destroy(obj_cube);
		}
		instance_create_layer(obj_cubePipe.x + 16, obj_cubePipe.y +16, "item_layer", obj_cube);
		alarm[0] = press_cooldown_;
	}
}