/// @description Going through a blue portal

var half_width = sprite_width/2;

if(obj_orange_portal.image_horizontal_ = 0){
	if(obj_orange_portal.h_orientation_ = left_open){
		x = obj_orange_portal.x - half_width;
	} else if (obj_orange_portal.h_orientation_ = right_open) {
		x = obj_orange_portal.x + half_width;
	}
} else {
	x =	obj_orange_portal.x;
}

if(obj_orange_portal.image_horizontal_ = 1){
	if(obj_orange_portal.v_orientation_ = up_open){
			y = obj_orange_portal.y - sprite_height;
	} else if(obj_orange_portal.v_orientation_ = down_open){
			y = obj_orange_portal.y + sprite_height;
	}
} else {
	y = obj_orange_portal.y + sprite_height/2;
}