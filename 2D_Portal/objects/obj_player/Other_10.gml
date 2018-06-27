/// @description Movement state

//horizontal keyboard input
var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var bbox_side;
//Bullet time during falling
/*if(keyboard_check(ord("E"))){
	if(old_fallSpeed == 0){
		old_fallSpeed = speed_[v];	
	}
			speed_[v] = lerp(speed_[v], 0.2, 0.9);
			hinput = 0;
}*/
if(keyboard_check_released(ord("E"))) {
	speed_[v] = old_fallSpeed;
	old_fallSpeed = 0;
}


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

move(speed_);




