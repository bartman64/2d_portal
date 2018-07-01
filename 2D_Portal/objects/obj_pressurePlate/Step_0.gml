/// @description

if place_meeting(x, y - 1, obj_solid) || place_meeting(x, y - 1, obj_player)  {
	image_index = 1;
	obj_door_big.open = true;
} else {
	image_index = 0;
	obj_door_big.open = false;
}

