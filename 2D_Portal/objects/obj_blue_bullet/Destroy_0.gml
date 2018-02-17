if(obj_player.hit_x_ != 0 && obj_player.hit_y_ != 0){
	//Destroy old portal
	instance_destroy(obj_blue_portal);
	
	var flipped_x = (mouse_x > obj_player.x) * 2 - 1;
	var flipped_y = (mouse_y < obj_player.y) * 2 - 1;

	//Creates new portal
	var new_portal =  instance_create_layer(obj_player.hit_x_ ,obj_player.hit_y_ ,"Instances", obj_blue_portal);
	
	//Set image orientation of the new portal
	new_portal.image_angle = portal_orientation;
	if(flipped_x == -1 && portal_orientation == 0 ){
		new_portal.image_xscale *= flipped_x;
	} else if(flipped_y == -1 && portal_orientation == 90 ) {
		new_portal.image_xscale *= flipped_y;
	}
}

//reset portal hit coordinates
obj_player.hit_x_ = 0;
obj_player.hit_y_ = 0;