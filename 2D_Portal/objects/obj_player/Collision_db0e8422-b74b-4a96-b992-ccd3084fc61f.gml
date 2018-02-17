/// @description Going through a orange portal
if(instance_exists(obj_blue_portal)){
	var half_width = sprite_width/2;

	if(obj_blue_portal.image_horizontal_ = 0){
		if(obj_blue_portal.h_orientation_ = left_open){
			x = obj_blue_portal.x - half_width;
		} else if (obj_blue_portal.h_orientation_ = right_open) {
			x = obj_blue_portal.x + half_width;
		}
	} else {
		x =	obj_blue_portal.x;
	}

	if(obj_blue_portal.image_horizontal_ = 1){
		if(obj_blue_portal.v_orientation_ = up_open){
				y = obj_blue_portal.y - sprite_height - 5;
		} else if(obj_blue_portal.v_orientation_ = down_open){
				y = obj_blue_portal.y + sprite_height + 5;
		}
	} else {
		y = obj_blue_portal.y + sprite_height/2 - 2;
	}
}


