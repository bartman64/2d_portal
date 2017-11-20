/// @description 

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
	speed_[v] += gravity_;	
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

//Check for landing
if(place_meeting(x, y + 1, obj_solid) && !place_meeting(x, yprevious + 1 , obj_solid)){
		x_scale_ = image_xscale * 1.4;
		y_scale_ = image_yscale * .8;
}

//Move back to normal scale
x_scale_ = lerp(x_scale_, image_xscale, .1);
y_scale_ = lerp(y_scale_, image_yscale, .1);