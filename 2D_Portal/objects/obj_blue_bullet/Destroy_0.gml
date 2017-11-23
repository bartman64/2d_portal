instance_destroy(obj_blue_portal);


var hit =  instance_create_layer(obj_player.hit_x_, obj_player.hit_y_,"Instances", obj_blue_portal);


hit.image_angle = portal_orientation;