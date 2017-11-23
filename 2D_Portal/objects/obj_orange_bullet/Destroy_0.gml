instance_destroy(obj_orange_portal);


var hit =  instance_create_layer(obj_player.hit_x_, obj_player.hit_y_,"Instances", obj_orange_portal);

hit.image_angle = portal_orientation;