/// @description 

event_user(MOVEMENT_);


if(!place_meeting(x,y+1,obj_solid)){
	event_user(FALLING_);
	
} else {
	if(keyboard_check_pressed(vk_space)) {
		event_user(JUMPING_);
	}
}



var notFallingIntoPortals = !place_meeting(x, y + 1, obj_blue_portal) && !place_meeting(x, yprevious + speed_[v] , obj_blue_portal) && 
							!place_meeting(x, y + 1, obj_orange_portal) &&!place_meeting(x, yprevious + speed_[v] , obj_orange_portal)

//Check for landing image_scale
if(notFallingIntoPortals){
	if(place_meeting(x, y + 1, obj_solid) && !place_meeting(x, yprevious + 1 , obj_solid)){
		
			x_scale_ = image_xscale * 1.4;
			y_scale_ = image_yscale * .8;
	}	
}

if(holdingItem_) {
	if(keyboard_check_pressed(ord("E"))) {		
		holdingItem_ = false;
		alarm[0] = pickup_cooldown_;
	}
}


//Move back to normal scale
x_scale_ = lerp(x_scale_, image_xscale, .1);
y_scale_ = lerp(y_scale_, image_yscale, .1);


