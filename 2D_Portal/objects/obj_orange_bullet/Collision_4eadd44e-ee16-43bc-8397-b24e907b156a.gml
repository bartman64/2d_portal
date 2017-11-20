/// @description Destroy bullet



if (image_angle <= 45 || image_angle >=315)
{
	with(other){
	
		obj_player.hit_x_ = x - sprite_width/2;
		obj_player.hit_y_ = y
	}
}

else if (image_angle > 45 && image_angle < 135)
{
	with(other){
		obj_player.hit_x_ = x ;
		obj_player.hit_y_ = y + sprite_width/2
	}	
}

else if image_angle > 135 && image_angle < 225
{	
	with(other){
		obj_player.hit_x_ = x + sprite_width/2;
		obj_player.hit_y_ = y
	}	
}

else if image_angle >= 225 && image_angle <=315
{
		with(other){
			obj_player.hit_x_ = x ;
			obj_player.hit_y_ = y - sprite_width/2
		}		
}

show_debug_message(image_angle);
show_debug_message(obj_player.hit_x_);
show_debug_message(obj_player.hit_y_);
instance_destroy();