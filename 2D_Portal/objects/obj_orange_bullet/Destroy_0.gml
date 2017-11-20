instance_destroy(obj_orange_portal);


var hit =  instance_create_layer(obj_player.hit_x_, obj_player.hit_y_,"Instances", obj_orange_portal);

if(image_angle < 135 && image_angle > 45 || image_angle > 225 && image_angle < 315){
	image_angle = 90;	
} else {
		image_angle = 0;
}
hit.image_angle = image_angle;