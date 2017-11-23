/// @description Movement

//horizontal keyboard input
var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if hinput != 0 {
	speed_[h] += hinput*acceleration_;
	speed_[h] = clamp(speed_[h], -max_speed_, max_speed_);

	var flipped = (mouse_x > x) * 2 - 1;
	image_speed = flipped * hinput *.6;
} else {
	speed_[h] = lerp(speed_[h], 0, friction_);	
	image_speed = 0;
	image_index = 0;
}

//jumping
if(!place_meeting(x,y+1,obj_solid)){
	if(speed_[v] >= max_fall_speed_){
		speed_[v] = max_fall_speed_;	
	} else {
		speed_[v] += gravity_;
	}
		image_speed = 0;
		image_index = 6;
	
} else {
	if(keyboard_check_pressed(vk_space)){
		speed_[v] = jump_height_;	
		x_scale_ = image_xscale * .8;
		y_scale_ = image_yscale * 1.4;
	} 
}

move(speed_);

//Check for landing image_scale
if(!place_meeting(x, y + 1, obj_blue_portal) && 
!place_meeting(x, yprevious + speed_[v] , obj_blue_portal) && 
!place_meeting(x, y + 1, obj_orange_portal) &&
!place_meeting(x, yprevious + speed_[v] , obj_orange_portal)){
	if(place_meeting(x, y + 1, obj_solid) && !place_meeting(x, yprevious + 1 , obj_solid)){
			x_scale_ = image_xscale * 1.4;
			y_scale_ = image_yscale * .8;
	}	
}


//Move back to normal scale
x_scale_ = lerp(x_scale_, image_xscale, .1);
y_scale_ = lerp(y_scale_, image_yscale, .1);

var half_width = sprite_width/2;
if x > room_width + half_width {
	x = -half_width;
}

if x < -half_width {
	x = room_width+half_width;
}