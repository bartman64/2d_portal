/// @description Insert description here
// You can write your code in this editor

if(obj_player.holdingItem_) {
	var gun_direction = point_direction(obj_player.x, obj_player.y - spr_player.sprite_height/2, mouse_x, mouse_y);
	var flipped = (mouse_x > obj_player.x) * 2 - 1;
	if(gun_direction  < 330 && gun_direction > 270) {
		gun_direction = 330;	
	} else if(gun_direction  > 210 && gun_direction < 270){
		 gun_direction = 210;
	}
	var radiant = gun_direction * (pi/180);
	x = obj_player.x + (29 * cos(radiant));
	y = (obj_player.y - (sprite_height/2 + 4)) - (29 * sin(radiant));
	image_angle = gun_direction;
} else {
	image_angle = 0;
	if(!place_meeting(x,y+1,obj_solid)){
		if(speed_[v] >= max_fall_speed_){
			speed_[v] = max_fall_speed_;	
		} else {
			speed_[v] += gravity_;
		}
	
	}

	move(speed_);
}